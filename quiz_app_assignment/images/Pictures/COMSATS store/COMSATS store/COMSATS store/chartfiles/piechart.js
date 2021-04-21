google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Employees', 'Designation'],
          ['Professor',     0],
          ['Associate Professor',      0],
          ['Assistant professor',  8],
          ['Lecturer', 25],
          ['Lab Engineer',    3],
		  ['Research Associate',    10],
		  ['Office Boy',    5]
        ]);

        var options = {
            chartArea: { left: 20, top: 0, width: '100%',height:'100%'}
        };

          var chart = new google.visualization.PieChart(document.getElementById('piechart_div'));

        chart.draw(data, options);
      }