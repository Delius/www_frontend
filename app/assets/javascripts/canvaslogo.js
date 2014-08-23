$(document).ready(function(){drawPath();});

function drawPath(){
	var canvas=document.getElementById("logocanvas");
	if (canvas.getContext){
		context = canvas.getContext("2d");
		context.fillStyle = "rgba(255,255,255,0.8)";
		context.beginPath();
		context.moveTo(0.,0);
		context.lineTo(85,0);
		context.lineTo(85,120);
		context.fill();
		context.beginPath();
		context.moveTo(45,0);
		context.lineTo(65,170);
		context.lineTo(85,0);
		context.fill();

		context.fillStyle="#fff";
		context.font ="small-caps bold 37pt 'Georgia";
		context.textAlign ="left";
		context.fillText("BIG",100,50);
		context.fillText("ERA",90,130);
	}
}