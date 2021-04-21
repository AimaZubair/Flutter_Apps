
google.charts.load('current', { 'packages': ['bar'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Department', 'PhD', 'Master', 'Bachelor'],
      ['Computer Science', 8, 25, 10],
      ['Management Science', 15, 20, 5],
      ['Environmental Science', 45, 0, 7],
      ['Mathematics', 8, 5, 3],
	  ['Humanities', 7, 13, 4]
    ]);

    var options = {
        bars: 'vertical',
        chartArea: {width: '70%',height:'400px' }
    };

    var chart = new google.charts.Bar(document.getElementById('barchart_div'));

    chart.draw(data, google.charts.Bar.convertOptions(options));
}