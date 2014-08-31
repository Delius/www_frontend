$( document ).on('ready page:load', function () {
	drawPath();
});

function drawPath() {
	var canvas=document.getElementById("logocanvas");
	if (canvas.getContext) {
		context = canvas.getContext("2d");
		context.fillStyle = "rgba(255,255,255,0.8)";
		context.beginPath();
		context.moveTo(0,0);
		context.lineTo(90,0);
		context.lineTo(90,70);
		context.fill();
		context.beginPath();
		context.moveTo(50,0);
		context.lineTo(30,70);
		context.lineTo(90,0);
		context.fill();

		context2 = canvas.getContext("2d");
		context.fillStyle="#fff";
		context.font = "small-caps bold 34pt 'Georgia'";
		context.textAlign = "left";
		context.fillText("Bigera",100,50);
		context2.fillStyle="#fff";
		context2.font = "small-caps bold 13pt 'Georgia'";
		context2.textAlign = "left";
		context2.fillText("software development services",0,100);
	}
}