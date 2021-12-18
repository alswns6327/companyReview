onload=()=>{
	var menu=document.querySelectorAll('.menu');
	var i=4;
	for(var me of menu){
		me.style="right : "+i*20;
		i--;
	}
}