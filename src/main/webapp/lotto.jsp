<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>lotto</title>
		<style>
			.num-box {
				display : table-cell;
				width : 100px;
				height : 100px;
				border : 1px solid gray;
				font-size : 30px;
				font-color : white;
				text-align : center;
				vertical-align : middle;
			}
			.red {
				background-color : red;
			}
			.orange {
				background-color : orange;
			}
			.yellow {
				background-color : yellow;
			}
			.green {
				background-color : green;
			}
			.blue {
				background-color : blue;
			}
			.indigo {
				background-color : indigo;
			}	
		</style>
	</head>
	<body>
		<div>
			<div id="num1" class="num-box red">&nbsp;</div>
			<div id="num2" class="num-box orange">&nbsp;</div>
			<div id="num3" class="num-box yellow">&nbsp;</div>
			<div id="num4" class="num-box green">&nbsp;</div>
			<div id="num5" class="num-box blue">&nbsp;</div>
			<div id="num6" class="num-box indigo">&nbsp;</div>
		</div>		
		<script>
			// 배열 생성 방법
			// let a = []; // 배열리터럴을 이용하는 방법
			// a.push(7) 
			// console.log(typeof(a)); // Object type
			// let b = new Array(); // 배열 생성자 함수를 사용하는 방법
			// console.log(typeof(b)); // Object type
			
			// 1) 코어 알고리즘
			let ball = new Array(45);
			// 초기화
			for(let i=0; i<ball.length; i++) {
				ball[i] = i+1;
			}
			// console.log('초기화 : ', ball);
			
			// 공 섞기
			for(let i=0; i<100000; i++) {
				let temp = ball[0];
				let rNum = Math.floor(Math.random() * ball.length); // Math.floor <-- 소수점 버리기 0~44
				ball[0] = ball[rNum];
				ball[rNum] = temp;
			}
			console.log('shuffle : ', ball);
			
			let result = ball.slice(0, 6); // 값1 자리부터 값2 자리 앞까지 반환 0, 1, 2, 3, 4, 5 인덱스 반환한 배열
			console.log('result : ', result);
			
			
			// 2) 출력 알고리즘
			/*
			for(let i=0; i<result.length; i++) {
				document.querySelector('#num'+(i+1)).innerHTML = result[i] // 이 문서에서 #num 1씩 증가시키면서 찾은다음에 result에 i를 반복해서 넣는다 result.length만큼
			}
			*/
			// setTimeout(함수, 시간ms) : 시간ms 후에 함수를 실행
			setTimeout(function(){
				document.querySelector('#num1').innerHTML = result[0];
			}, 1000);
			setTimeout(function(){
				document.querySelector('#num2').innerHTML = result[1];
			}, 2000);
			setTimeout(function(){
				document.querySelector('#num3').innerHTML = result[2];
			}, 3000);
			setTimeout(function(){
				document.querySelector('#num4').innerHTML = result[3];
			}, 4000);
			setTimeout(function(){
				document.querySelector('#num5').innerHTML = result[4];
			}, 5000);
			setTimeout(function(){
				document.querySelector('#num6').innerHTML = result[5];
			}, 6000);
		</script>
	</body>
</html>