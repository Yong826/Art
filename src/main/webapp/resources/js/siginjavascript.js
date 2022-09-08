var result;
window.onload = function () {
	
	
    let user = document.querySelector("#user")
    user.onblur = function () {
    let useridRegex = /^[a-z]+[a-z0-9-_]{5,20}$/g;
  
      let userValue = user.value;
      let idmsg = document.querySelector("#idmsg");
      
      
      if (useridRegex.test(userValue)) {
          idmsg.innerHTML = "사용하실수있습니다.";
          idmsg.style.color = "green";
          idmsg.style.fontSize = "13px";
          result = true;
      }else{
          idmsg.innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_).(-)만 사용 가능합니다";
          idmsg.style.color = "red";
          idmsg.style.fontSize = "13px";
          result = false
      }
    
    }
    
    let userpassword = document.querySelector("#userpassword")
  
    userpassword.onblur = function () {
        
      let userpassRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,16}$/;
      let userpasswordValue = userpassword.value;
      let pwmsg = document.querySelector("#pwmsg");
  
      if (userpassRegex.test(userpasswordValue)) {
        pwmsg.innerHTML = "정상입니다";
        pwmsg.style.color = "green";
        pwmsg.style.fontSize = "13px";
        result = true;
      }else {
        pwmsg.innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요";
        pwmsg.style.color = "red";
        pwmsg.style.fontSize = "13px";
        result = false;
      }
    
    }
  
  
    let userpassword2 = document.querySelector("#userpassword2")
   
    userpassword2.onblur = function () {
        
      let userpassword2Value = userpassword2.value;
      let pwmsg2 = document.querySelector("#pwmsg2");
      let userpasswordValue = userpassword.value;
      
      if(userpassword2Value === "") {
    	  pwmsg2.innerHTML = "빈칸으로 둘수 없습니다.";
    	  pwmsg2.style.color = "red";
    	  pwmsg2.style.fontSize = "13px"; 
    	  result = false;
      }
      else if(userpassword2Value === userpasswordValue) {
  
        pwmsg2.innerHTML = "정상입니다";
        pwmsg2.style.color = "green";
        pwmsg2.style.fontSize = "13px";
        result = true;
       }else{
        pwmsg2.innerHTML = "비밀번호가 같지않습니다.";
        pwmsg2.style.color = "red";
        pwmsg2.style.fontSize = "13px";
        result = false;
       }
       
      
    }

    let useremail = document.querySelector("#useremail")
    
    useremail.onblur = function () {
    	
    	let regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
    	let useremailValue = useremail.value;
    	let emailmsg = document.querySelector("#emailmsg");
    	
    	
    	if(regEmail.test(useremailValue)) {
    		emailmsg.innerHTML = "정상입니다";
    		emailmsg.style.color = "green";
    		emailmsg.style.fontSize = "13px";
    		result = true;	
    	}else {
    		emailmsg.innerHTML = "이메일주소를 다시 확인해주세요.";
    		emailmsg.style.color = "red";
    		emailmsg.style.fontSize = "13px";
    		result = false;
    	}
    	
    }
    
}



function joinform(){
	
	let userValue = user.value;
	let userpasswordValue = userpassword.value;
	let useremailValue = useremail.value;
	
	if (result === false || useremailValue ==="" || userValue === "" || userpasswordValue ==""){
		alert("값이 제대로 입력 되지않았습니다.")
		return false;
	}else{
		alert("회원가입을 축하드립니다.")
		return true;
	}
}
  
  