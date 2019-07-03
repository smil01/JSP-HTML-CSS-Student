// 사용자로부터 입력받을때 사용하는 대화상자
// -> 입력한 값의 자료형은 모두 문자형으로 반환
var name = prompt("이름을 입력해주세요.");
alert(typeof name) //타입확인

// Yes or No
// -> bool타입
var isAdult = confirm('당신은 성인 입니까?');
alert(typeof isAdult)

if(isAdult){
	alert("당신은 성인입니다.")
} else {
	alert("당신은 성인이 아닙니다.")
}

document.write("<b><big>" + name + "様いらっしゃいませ。</big></b>");