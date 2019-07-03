var num1 = '10';
var num2 = '2000원';
var num3 = 10;

document.write("parseInt() 사용 <br>");
document.write(parseInt(num1) + "<br>");
document.write(parseInt(num2) + "<br>");
        
document.write("Number() 사용 <br>");
document.write(Number(num1) + "<br>");
document.write(Number(num2) + "<br>");
        
document.write("num3값 비교 <br>");
document.write((parseInt((num3/3))===3)?true:false + "<br>");