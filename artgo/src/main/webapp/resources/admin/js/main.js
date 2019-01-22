$(function(){
	
	$('#payLineBtn').on('click',function(){
		var chart1 = document.getElementById("pay-line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(payLineChart, {
			responsive: true,
			scaleLineColor: "rgba(0,0,0,.2)",
			scaleGridLineColor: "rgba(0,0,0,.05)",
			scaleFontColor: "#c5c7cc"
		});
		$('.pay-chart').removeClass('btn-active');
		$('#pay-bar-chart').css('display','none');
		$('#pay-line-chart').css('display','inline-block');
		$(this).addClass('btn-active');
	});
	$('#payBarBtn').on('click',function(){
		var chart1 = document.getElementById("pay-bar-chart").getContext("2d");
		window.myLine = new Chart(chart1).Bar(payBarChart, {
			responsive: true,
			scaleLineColor: "rgba(0,0,0,.2)",
			scaleGridLineColor: "rgba(0,0,0,.05)",
			scaleFontColor: "#c5c7cc"
		});
		$('.pay-chart').removeClass('btn-active');
		$('#pay-line-chart').css('display','none');
		$('#pay-bar-chart').css('display','inline-block');
		$(this).addClass('btn-active');
	});
	
	$('#memberLineBtn').on('click',function(){
		var chart2 = document.getElementById("member-line-chart").getContext("2d");
		window.myBar = new Chart(chart2).Line(memberLineChart, {
			responsive: true,
			scaleLineColor: "rgba(0,0,0,.2)",
			scaleGridLineColor: "rgba(0,0,0,.05)",
			scaleFontColor: "#c5c7cc"
		});
		$('.member-chart').removeClass('btn-active');
		$('#member-bar-chart').css('display','none');
		$('#member-line-chart').css('display','inline-block');
		$(this).addClass('btn-active');
	});
	$('#memberBarBtn').on('click',function(){
		var chart2 = document.getElementById("member-bar-chart").getContext("2d");
		window.myBar = new Chart(chart2).Bar(memberBarChart, {
			responsive: true,
			scaleLineColor: "rgba(0,0,0,.2)",
			scaleGridLineColor: "rgba(0,0,0,.05)",
			scaleFontColor: "#c5c7cc"
		});
		$('.member-chart').removeClass('btn-active');
		$('#member-line-chart').css('display','none');
		$('#member-bar-chart').css('display','inline-block');
		$(this).addClass('btn-active');
	});
	
	getChartList();
});

function searchMember(){
	$("#pg").val("1");
	$("#key").val($("#skey").val());
	$("#word").val($("#sword").val());
	$("#commonForm").attr("method","get").attr("action","/admin/member/list.do").submit();
}

function getChartList(){
	$.ajax({
		url : '/admin/chart/list.do',
		type : 'GET',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data) {
			settingValue(data);	
		}
	});
}
var payLineChart;
var payBarChart;
var memberLineChart;
var memberBarChart;

function settingValue(data){
	payDayList = data.payListbyWeek;
	joinDayList = data.joinListbyWeek;
	payLineChart = {
			labels : ["6일 전","5일 전","4일 전","3일 전","2일 전","1일 전","오늘"],
			datasets : [
				{
					label: "My Second dataset",
					fillColor : "rgba(37, 190, 174, 0.2)",
					strokeColor : "rgba(37, 190, 174, 1)",
					pointColor : "rgba(37, 190, 174, 1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(37, 190, 174, 1)",
					data : payDayList
				}
			]
		}
	payBarChart = {
			labels : ["6일 전","5일 전","4일 전","3일 전","2일 전","1일 전","오늘"],
		datasets : [
			{
				fillColor : "rgba(37, 190, 174, 0.2)",
				strokeColor : "rgba(37, 190, 174, 0.8)",
				highlightFill : "rgba(37, 190, 174, 0.75)",
				highlightStroke : "rgba(37, 190, 174, 1)",
				data : payDayList
			}
		]
	}
	
	memberLineChart = {
			labels : ["6일 전","5일 전","4일 전","3일 전","2일 전","1일 전","오늘"],
			datasets : [
				{
					label: "My Second dataset",
					fillColor : "rgba(37, 190, 174, 0.2)",
					strokeColor : "rgba(37, 190, 174, 1)",
					pointColor : "rgba(37, 190, 174, 1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(37, 190, 174, 1)",
					data : joinDayList
				}
			]
		}
	
			
	memberBarChart = {
			labels : ["6일 전","5일 전","4일 전","3일 전","2일 전","1일 전","오늘"],
		datasets : [
			{
				fillColor : "rgba(37, 190, 174, 0.2)",
				strokeColor : "rgba(37, 190, 174, 0.8)",
				highlightFill : "rgba(37, 190, 174, 0.75)",
				highlightStroke : "rgba(37, 190, 174, 1)",
				data : joinDayList
			}
		]
	}
	
	var chart1 = document.getElementById("pay-line-chart").getContext("2d");
	window.myLine = new Chart(chart1).Line(payLineChart, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
	});
	$('#pay-bar-chart').css('display','none');
	
	var chart2 = document.getElementById("member-bar-chart").getContext("2d");
	window.myBar = new Chart(chart2).Bar(memberBarChart, {
		responsive: true,
		scaleLineColor: "rgba(0,0,0,.2)",
		scaleGridLineColor: "rgba(0,0,0,.05)",
		scaleFontColor: "#c5c7cc"
	});
	$('#member-line-chart').css('display','none');
}
