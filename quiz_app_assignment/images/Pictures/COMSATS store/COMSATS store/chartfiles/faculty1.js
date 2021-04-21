
google.charts.load('current', { 'packages': ['bar'] });
google.charts.setOnLoadCallback(drawStuff);

function drawStuff() {
    var data = new google.visualization.arrayToDataTable([
      ['COMSATS Assests', 'Quantity'],
      ["Hard Disk", 50],
      ["Computer RAM", 28],
      ["Board Marker", 13],
      ["Tissue Box", 6],
      ["Computer Table", 5]
    ]);

    var options = {
        title: 'Computer Science Department',
        width: 780,
        colors: ['blue'],
        legend: { position: 'none' },
        bars: 'Vertical', // Required for Material Bar Charts.
        axes: {
            x: {
                0: { side: 'bottom' } // Top x-axis.
            },
            y: {
                0: { side: 'left', label: 'Quantity' } // Top x-axis.
            }
        },
        bar: { groupWidth: "90%" },
        backgroundColor: { fill: 'transparent' }
    };

    var chart = new google.charts.Bar(document.getElementById('faculty_div'));
    chart.draw(data, options);
};