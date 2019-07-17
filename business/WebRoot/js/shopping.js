/**
 * Created by zongjuan.wang on 2016/6/1.
 */

/*关闭窗口*/
function close_plan(){
    window.close();
}
function collection(){
    var flag=confirm("移入收藏后，将不再购物车显示，是否继续操作?");
    if(flag==true){
        alert("移入收藏成功!");
    }
}
function del(){
    var flag=confirm("您确定要删除商品吗?");
    if(flag==true){
        alert("删除成功!");
    }
}
function minus(num){
    var prices=document.getElementsByName("price")[num].value;
    var count=parseInt(document.getElementsByName("amount")[num].value)-1;
    if(count<1){
        alert("不能再减了，再减就没有啦！");
    }
    else{
        document.getElementsByName("amount")[num].value=count;
        var totals=parseFloat(prices*count);
        document.getElementById("price"+num).innerHTML="¥" +totals;
        total();
    }
}
function plus(num){
    var prices=document.getElementsByName("price")[num].value;
    var count=parseInt(document.getElementsByName("amount")[num].value)+1;
    document.getElementsByName("amount")[num].value=count;
    var totals=parseFloat(prices*count);
    document.getElementById("price"+num).innerHTML="¥" +totals;
    total();
}
function total(){
    var prices=document.getElementsByName("price");
    var count=document.getElementsByName("amount");
    var sum=0;
    for(var i=0; i<prices.length;i++){
       sum+=prices[i].value*count[i].value;
    }
    document.getElementById("totalPrice").innerHTML="¥" +sum;
}
function account(){
    //console.log(cartList.nextSibling.nextSibling);
    //console.log(cartList.firstChild.nextSibling.lastChild.previousSibling.previousElementSibling);
    var pnd=cartList.firstChild.nextSibling.lastChild.previousSibling.previousElementSibling;
    //console.log(pnd.previousElementSibling);
    var jiesuan=cartList.nextSibling.nextSibling;
    var  p=document.createElement("p");
    p.innerText="您本次购买的商品;"
    jiesuan.appendChild(p);
    var ss=pnd.innerText;
    var  p=document.createElement("p");
    p.innerText="白岩松：白说"+ss;
    jiesuan.appendChild(p);
    var pnc=cartList.firstChild.nextSibling.nextSibling.nextSibling.lastChild.previousSibling.previousElementSibling;
    var sd=pnc.innerText;
    var  p=document.createElement("p");
    p.innerText="岛上书店"+sd;
    jiesuan.appendChild(p);
    var pnb=cartList.lastChild.previousSibling.firstChild.nextSibling
    var sb=pnb.innerText;
    var  p=document.createElement("p");
    p.innerText="商品共计："+sb;
    jiesuan.appendChild(p);


}
total();