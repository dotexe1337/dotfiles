// ==UserScript==
// @name           Disable keybind hijacking
// @description    Stop websites from highjacking keyboard shortcuts
//
// @grant          none
// ==/UserScript==

['keydown', 'keyup'].forEach((eventName) => {
	window.addEventListener(eventName, (e) => {
		//alert(e.keyCode);
	    	e.cancelBubble = true;
    		e.stopImmediatePropagation();
	    	e.stopPropagation();
		},
		true
	);
});
