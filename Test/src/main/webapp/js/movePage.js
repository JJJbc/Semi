/**
 * 
 */

// header에 있는 버튼 클릭시 지역 리스트가 나오는 기능함수
function movePensionPageFnc() {
	window.location.href = "http://localhost:8090/Test/area/pension";
}
function moveCafePageFnc() {
	window.location.href = "http://localhost:8090/Test/area/cafe";
}
function moveRestaurantPageFnc() {
	window.location.href = "http://localhost:8090/Test/area/restaurant";
}

function reset(){
	window.location.reload(true);
}

function moveSigninPageFnc(path) {
	location.href = `${path}/auth/signin`;
}

function moveSignupPageFnc(path) {
	location.href = `${path}/auth/signup`;
}

function moveLogoutPageFnc(path) {
	location.href = `${path}/auth/signout`;
}

function moveUserDetailPageFnc(path, userNo){
	location.href = `${path}/user/detail?userNo=` + userNo;
}