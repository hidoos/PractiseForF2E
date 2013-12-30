/**
 * assertion : 断言
 */

function prove(n){
    var k;


    console.log('现在开始证明 p(%d)成立。\n',n); // 要证明断言
    k = 0;

    console.log('根据步骤1: p(n) 得知 p(%d)成立. \n',k); // 步骤1

    while( k < n){
        
        /* 步骤2的证明过程 : p(k) => p(k+1)*/
        console.log('步骤2：若 p(%d)成立，则p(%d)\n',k ,k + 1); 

        console.log('因此可以说：“p(%d) ”\n',k+1);
        
        k += 1;

    }

    console.log('证明结束。\n');
}
