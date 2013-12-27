/**
 * showPrice
 * @param {object} JSON.parse || $.JSON.prase
 * @return {}
 * */
function showPrice (data){
    console.log("ticker symbol:",data.symbol);
    console.log("\rticker price:",data.price);
}


showPrice(ticker);


