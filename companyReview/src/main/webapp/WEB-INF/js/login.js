function login(job){
	window.open("loginPage?job="+job,'login','top=300px, left=100px, width=500px, height=400px');
}

function job(job){
	if(job==='login'){
		console.log(job);
		console.log(document.querySelector('#join'));
		document.querySelector('#login').style.display="block";
		document.querySelector('#join').style.display="none";
	}else if(job==='join'){
		document.querySelector('#join').style.display="block";
		document.querySelector('#login').style.display="none";
	}
}

function join(){
	var id=document.getElementsByName('id')[0].value;
	var pw=document.getElementsByName('pw')[0].value;
	var email=document.getElementsByName('email')[0].value;
	$.ajax({
		type:'POST',
		url:'join',
		data:{
			id:id,
			pw:pw,
			email:email
		},
		success:function(result){
			if(result==1){
				alert('이미 사용중인 아이디입니다.');
			}else{
				alert('환영합니다.');
				opener.location.reload();
				self.close();
			}
			
		}
	});
}