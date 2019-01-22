window.onload = function () {
	var chart1 = document.getElementById("line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(lineChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
	});
	var chart2 = document.getElementById("bar-chart").getContext("2d");
	window.myBar = new Chart(chart2).Bar(barChartData, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
	});
};

var randomScalingFactor = function(){ return Math.round(Math.random()*1000)};
	
	var lineChartData = {
		labels : ["월","화","수","목","금","토","일"],
		datasets : [
			{
				label: "My Second dataset",
				fillColor : "rgba(37, 190, 174, 0.2)",
				strokeColor : "rgba(37, 190, 174, 1)",
				pointColor : "rgba(37, 190, 174, 1)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(37, 190, 174, 1)",
				data : [180,200,234,200,182,175,160]
			}
		]

	}
		
	var barChartData = {
			labels : ["월","화","수","목","금","토","일"],
		datasets : [
			{
				fillColor : "rgba(37, 190, 174, 0.2)",
				strokeColor : "rgba(37, 190, 174, 0.8)",
				highlightFill : "rgba(37, 190, 174, 0.75)",
				highlightStroke : "rgba(37, 190, 174, 1)",
				data : [100,200,100,59,594,134,394]
			}
		]

	} 
