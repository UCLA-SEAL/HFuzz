"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
function* goThroughNodes(getNodes, getName, clickOnNode) {
    let nameCount = {};
    for (let node of getNodes()) {
        clickOnNode(node);
        let name = getName(node);
        if (name in nameCount) {
            nameCount[name]++;
            name += nameCount[name];
        }
        else {
            nameCount[name] = 1;
        }
        yield {
            name: name,
            node: node
        };
    }
}
function showAndHidePanes(config) {
    if (!config)
        return;
    if (config.hideDetails) {
        hideDetails();
    }
    else {
        showDetails();
    }
    if (config.hideTree) {
        hideTree();
    }
    else {
        showTree();
    }
    if (config.hideSource) {
        hideAceEditor();
    }
    else {
        showAceEditor();
    }
}
/**
 *
 * @param {Object} nodeFunctions holds the functions that deal with the actual nodes
 *  Contains the following functions
 *      getNodes <function()> : returns an array of all the nodes
 *      getName <function(node)>: returns the name of the node
 *      clickOnNode<function(node)>: clicks on the node
 * @param {Object} testData holds the relevant information for the currently running test
 *  Contains the following data:
 *      dir: (passed to callback) The subdirectory that the images should be placed in
 *      category: (passed to callback) The test's category
 *      namePrefix: [Optional] This will be put in front of the current node's name
 *
 * @param {Object} callbacks holds the callbacks that will be called during the test
 *  Contains the following:
 *      waitFor <async function()>: [Optional] Awaits funtion's finish after clicking on next node
 *      getScreenshotElement<function(node)>: [Optional] Returns the node that will be screenshotted
 *      subtests <Array <function(callback, testName)>>: [Optional] Runs subtests after clicking on the node
 *
 * @param {Object} panesConfig holds which panes should be hidden/shown
 *  Contains the following:
 *      hideDetails <bool>
 *      hideTree <bool>
 *      hideSource <bool>
 *
 * @return {async function (callback)} The generated test
 */
function generateTestsBase(nodeFunctions, testData, callbacks, panesConfig) {
    let test = function (callback) {
        return __awaiter(this, void 0, void 0, function* () {
            let node = goThroughNodes(nodeFunctions.getNodes, nodeFunctions.getName, nodeFunctions.clickOnNode);
            let ret = node.next();
            while (!ret.done) {
                let name = ret.value.name;
                if (testData.namePrefix) {
                    name = testData.namePrefix + "_" + name;
                }
                if (callbacks.waitFor) {
                    yield callbacks.waitFor();
                }
                let screenshotElement;
                if (callbacks.getScreenshotElement) {
                    screenshotElement = callbacks.getScreenshotElement(ret.value.node);
                }
                showAndHidePanes(panesConfig);
                yield callback(testData.dir, testData.category, testData.view, name, screenshotElement);
                showAndHidePanes(panesConfig); // the panes that are shown might have changed in the subtest so this needs to be run again
                if (callbacks.subtests) {
                    for (const sub of callbacks.subtests) {
                        yield sub(callback, name);
                    }
                }
                ret = node.next();
            }
        });
    };
    return test;
}
function getReportPane() {
    return document.querySelector("#report-pane");
}
function getDetailsPane() {
    return document.querySelector("#detail-pane");
}
