/**
 * event linstenr
 * @param {object} obj domObj
 * @param {string} 事件类型
 * @handler {obj} callbacks handler 一个函数引用
 */

var utilEvent = {
    addEvent: function(obj, evType, handler) {
        /* addEventListenr w3c事件 */
        if (obj.addEventListener) {
            obj.addEventListener(enType, handler);
        } else if (obj.attachEvent) {
            obj.attachEvent('on' + evType, handler);
        } else {
            obj['on' + evType] = handler;
        }
    },
    removeEvent: function(obj, evType, handler) {
        if (obj.removeEventListener) {
            obj.addEventListener(enType, handler);
        } else if (obj.detachEvent)
            obj.detachEvent('on' + evType, handler);
    } else {
        obj['on' + evType] = null;
    }
};

// invotion
