"use strict";
/**
 * The name of the JSON element if there is no source line.
 */
const NO_SRC_LINE_STR = 'No Source Line';
/**
 * Create a clone of an JSON object.
 * @param JSONObject A JSON object.
 * @returns A clone of the JSON object.
 */
function deepCopy(JSONObject) {
    return JSON.parse(JSON.stringify(JSONObject));
}
/**
 * Process the area JSON object.
 */
class AreaProcessor {
    /**
     * Create an AreaProcessor object.
     * @param areaJSON the area JSON object
     */
    constructor(areaJSON) {
        this.areaJSON = areaJSON;
    }
    /**
     * Set area JSON.
     * @param areaJSON new area JSON
     */
    setJSON(areaJSON) {
        this.areaJSON = areaJSON;
    }
    /**
     *
     * @returns the area JSON
     */
    getJSON() {
        return this.areaJSON;
    }
    /**
     * @returns a clone of this AreaProcessor object.
     */
    makeCopy() {
        return new AreaProcessor(deepCopy(this.areaJSON));
    }
    /**
     * Compute the sum of the two data arrays.
     * @param data1 the first data array.
     * @param data2 the second data array.
     * @returns the array sum of data1 and data2.
     */
    sumData(data1, data2) {
        if (data1.length != data2.length) {
            throw new Error("The lengths of the arrays do not match.");
        }
        let dataSum = [];
        for (let i = 0; i < data1.length; i++) {
            dataSum.push(data1[i] + data2[i]);
        }
        return dataSum;
    }
    /**
     * Process area JSON object and group repeating debug locations. After grouping repeating debug locations, each chain of debug
     * locations should have different successive debug locations.
     *
     * For example, the following chain of repeating debug locations
     *    qrd.cpp:43 > ... > qrd.cpp:43 > qrd.cpp:199
     * should become
     *    qrd.cpp:43 > qrd.cpp:199
     *
     * After grouping repeating debug locations, objects with the same name and debug locations are merged into a single object by
     * summing their data and combining their children. Then, the debug locations of the object's children are recursively grouped,
     * and the children with the same name and debug locations are grouped.
     * @returns an AreaProcessor object with the processed JSON object.
     */
    reduceAreaJSON() {
        let areaProcessorCopy = this.makeCopy();
        areaProcessorCopy.reduceJSONRoot();
        return areaProcessorCopy;
    }
    /**
     * Apply the steps described in reduceAreaJSON to the root of the JSON object.
     * @returns The root of the JSON object after being processed.
     */
    reduceJSONRoot() {
        return this.recursivelyReduceElement(this.areaJSON);
    }
    /**
     * Recursively apply the steps described in reduceAreaJSON() to the children of the element.
     * @param element a JSON object
     * @returns the processed JSON object of <element>.
     */
    recursivelyReduceElement(element) {
        if (element['children'] !== undefined) {
            let currentChildren = element['children'];
            let childrenMap = new Map();
            childrenMap = this.groupAndInsertChildrenElements(childrenMap, currentChildren);
            let newChildren = this.reduceChildrenMap(childrenMap);
            element['children'] = newChildren;
        }
        return element;
    }
    /**
     * Combine an array of JSON objets with the same name and type. The data of the combined object is
     * the sum of the data of the JSON objects, and it inherits the children of all the JSON objects. The
     * steps described in reduceAreaJSON() are then applied to the children of the combined object.
     * @param elements an array of JSON objects with the same name and type.
     * @returns the combined JSON object
     */
    combineTableElements(elements) {
        if (elements.length == 0) {
            throw new Error("The array elements is empty.");
        }
        if (!elements[0].hasOwnProperty('name') || !elements[0].hasOwnProperty('type')) {
            throw new Error("The JSON object does not have the name or the type attribute.");
        }
        let name = elements[0]['name'];
        let type = elements[0]['type'];
        if (type == 'resource') {
            if (name == NO_SRC_LINE_STR) {
                throw new Error("The JSON object does not have a source line.");
            }
            let combinedElement = elements[0];
            let data = undefined;
            if (combinedElement.hasOwnProperty('data')) {
                data = combinedElement['data'];
            }
            let childrenMap = new Map();
            for (let i = 0; i < elements.length; i++) {
                if (!(elements[i]['name'] == name && elements[i]['type'] == type)) {
                    throw new Error("The name and type of the elements do not match.");
                }
                if (i > 0 && data !== undefined) {
                    data = this.sumData(data, elements[i]['data']);
                }
                if (elements[i]['children'] !== undefined) {
                    this.groupAndInsertChildrenElements(childrenMap, elements[i]['children']);
                }
            }
            combinedElement['data'] = data;
            let reducedChildrenArray = this.reduceChildrenMap(childrenMap);
            if (reducedChildrenArray.length > 0 || combinedElement['children'] !== undefined) {
                combinedElement['children'] = reducedChildrenArray;
            }
            return combinedElement;
        }
        else {
            throw new Error(`Elements of type ${type} are not supported.`);
        }
    }
    /**
     * The childrenMap maps the name and type to an array of JSON objects with the same name and type. The first
     * key is the name, and the second key is the type. This function uses the map to combine the JSON objects.
     * All JSON objects with the same name and type are combined, and an array of the combined objects is returned.
     * @param childrenMap a map that maps two strings to an array of JSON objects. The first key is the name, and
     * the second key is the type. The value is an array of JSON objects that have the same name and type as its key.
     * @returns an array of the combined JSON objects
     */
    reduceChildrenMap(childrenMap) {
        let reducedChildrenArray = [];
        childrenMap.forEach((typeMap, name) => {
            typeMap.forEach((childrenArray, type) => {
                if (childrenArray.length > 1) {
                    if (type == 'resource' && name != NO_SRC_LINE_STR) {
                        reducedChildrenArray.push(this.combineTableElements(childrenArray));
                    }
                    else {
                        Array.prototype.push.apply(reducedChildrenArray.map(this.recursivelyReduceElement), childrenArray);
                    }
                }
                else if (childrenArray.length == 1) {
                    reducedChildrenArray.push(this.recursivelyReduceElement(childrenArray[0]));
                }
            });
        });
        return reducedChildrenArray;
    }
    /**
     * Insert JSON objects from <childrenArray> into <childrenMap>. If the JSON object is of type "resource", then group
     * its debug locations before inserting it into <childrenMap>.
     * @param childrenMap a map that maps two strings to an array of JSON objects. The first key is the name, and
     * the second key is the type. The value is an array of JSON objects that have the same name and type as its key.
     * @param childrenArray an array of JSON objects. The JSON objects in the array do not need to have the same and
     * type.
     * @returns <childrenMap>
     */
    groupAndInsertChildrenElements(childrenMap, childrenArray) {
        childrenArray.forEach((element) => {
            if (element['type'] == 'resource' && element['name'] != NO_SRC_LINE_STR && element['debug'] !== undefined) {
                this.insertIntoChildrenMap(childrenMap, this.groupLocations(element));
            }
            else {
                this.insertIntoChildrenMap(childrenMap, element);
            }
        });
        return childrenMap;
    }
    /**
     * Insert a JSON object <element> into <childrenMap>.
     * @param childrenMap a map that maps two strings to an array of JSON objects. The first key is the name, and
     * the second key is the type. The value is an array of JSON objects that have the same name and type as its key.
     * @param element a JSON object with a name and type.
     * @returns <childrenMap>
     */
    insertIntoChildrenMap(childrenMap, element) {
        var _a, _b, _c, _d;
        let name = element['name'];
        let type = element['type'];
        if (childrenMap.get(name) === undefined) {
            childrenMap.set(name, new Map());
        }
        if (((_a = childrenMap.get(name)) === null || _a === void 0 ? void 0 : _a.get(type)) === undefined) {
            (_b = childrenMap.get(name)) === null || _b === void 0 ? void 0 : _b.set(type, new Array());
        }
        (_d = (_c = childrenMap.get(name)) === null || _c === void 0 ? void 0 : _c.get(type)) === null || _d === void 0 ? void 0 : _d.push(element);
        return childrenMap;
    }
    /**
     * Group repeating debug locations of an <element>. The name of the <element> is updated to reflect the change in
     * the debug locations.
     * @param element a JSON object in area JSON
     * @returns the <element> with an updated name and grouped debug locations
     */
    groupLocations(element) {
        let name = element['name'];
        let type = element['type'];
        if (type == 'resource') {
            if (name == NO_SRC_LINE_STR) {
                throw new Error("The JSON object does not have a source line.");
            }
            let locationNames = name.split('\n').join('').split(' &gt; ');
            if (element['debug'] === undefined) {
                throw new Error(`The element ${name} of type ${type} does not have any debug location.`);
            }
            let debugLocations = element['debug'];
            if (debugLocations.length != 1) {
                // Currently, only support grouping a single debug location. 
                return element;
            }
            else if (locationNames.length != debugLocations[0].length) {
                // Don't group the debug locations if the number of location names and the nubmer of debug
                // locations do not match.
                return element;
            }
            else if (locationNames.length == 0 && debugLocations[0].length == 0) {
                throw new Error("The locationNames and debugLocation arrays are empty.");
            }
            let i = 0;
            let groupedLocationNames = [locationNames[i]];
            let groupedDebugLocations = [[debugLocations[0][i]]];
            while (i < locationNames.length - 1) {
                if (!(debugLocations[0][i]["filename"] == debugLocations[0][i + 1]["filename"] &&
                    debugLocations[0][i]["line"] == debugLocations[0][i + 1]["line"])) {
                    groupedLocationNames.push(locationNames[i + 1]);
                    groupedDebugLocations[0].push(debugLocations[0][i + 1]);
                }
                i++;
            }
            element['name'] = this.concatenateLocationName(groupedLocationNames);
            element['debug'] = groupedDebugLocations;
            return element;
        }
        else {
            throw new Error(`Elements of type ${type} are not supported.`);
        }
    }
    /**
     * Construct the name from an array of debug locations.
     * @param locationNames an array of debug location strings
     * @returns the name constructed from an array of debug locations
     */
    concatenateLocationName(locationNames) {
        let concatenatedName = '';
        for (let i = 0; i < locationNames.length; i++) {
            concatenatedName += locationNames[i];
            if (i < locationNames.length - 1) {
                concatenatedName += ' > ';
                if (i % 2 == 1) {
                    concatenatedName += '\n';
                }
            }
        }
        return concatenatedName;
    }
}
