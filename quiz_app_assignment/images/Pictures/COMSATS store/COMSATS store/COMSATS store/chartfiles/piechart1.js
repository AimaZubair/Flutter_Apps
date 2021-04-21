  
google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawChart); 

function drawChart() {         
var data = google.visualization.arrayToDataTable([  
	['COMSATS Assets', 'Quantity'],
	['Computer Table',12],
	['doors',4],
	['Hard Disk',12],
	['Power Cable',19],
	['RAM',201],['tissue box',2]
]);
var options = {
	legend: 'bottom',
	width: 280,
	height:280,
	pieHole:0.5, 
};
var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
chart.draw(data, options); 
}
