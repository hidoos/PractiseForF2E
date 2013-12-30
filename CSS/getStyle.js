function getStyle(obj, style) {
    var _style = (style == "float") ? "styleFloat" : style;
    return
    document.defaultView ? document.defaultView.getComputedStyle(obj, null).getPropertyValue(style) : obj.currentStyle[_style.replace(/-[a-z]/g, function() {
        return arguments[0].charAt(1).toUpperCase();
    })];
}
