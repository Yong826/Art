let result;
window.onload = function () {
	
	
    let user = document.querySelector("#user")
    
    user.onblur = function () {
    	
    	let userValue = user.value;
    	let idmsg = document.querySelector("#idmsg")
    	
    	if(userValue === ""){
    		idmsg.innerHTML = "아이디를입력해주세요.";
    		idmsg.style.color="red";
    		idmsg.style.fontSize = "13px";
    		result = false;
    	}
    }
    
    let password = document.querySelector("#password")
  
    password.onblur = function () {
        
      let passwordValue = password.value;
      let pwmsg = document.querySelector("#pwmsg");
  
      if (passwordValue === "") {
        pwmsg.innerHTML = "비밀번호를 입력해주세요.";
        pwmsg.style.color = "red";
        pwmsg.style.fontSize = "13px";
        result = false;
      }
    } 
}



function loginForm(){
	
	let userValue = user.value;
	let passwordValue = password.value;
	
	if (result === false || userValue ==="" || passwordValue === ""){
		alert("값이 제대로 입력 되지않았습니다.")
		return false;
	}
}





  