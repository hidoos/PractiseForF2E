/**
 * showPrice
 * @param {object} JSON.parse || $.JSON.prase
 * @return {obj}
 * @doc: 这个就是单列子模式
 *
 */
var init = (function() {

    function showPrice(data) {
        console.log("ticker symbol:", data.symbol);
        console.log("\rticker price:", data.price);
    }

    /* static invoketed */
    var tickerUrl = 'ticker.js';

    var srcEl = document.createElement('script');
    srcEl.setAttribute('src', tickerUrl)

    document.getElementsByTagName('head')[0].appendChild(srcEl);
    
    return {
        show : showPrice
    }

})();
