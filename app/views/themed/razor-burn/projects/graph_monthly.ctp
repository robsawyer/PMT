<!--[if IE]>
<script type="text/javascript" src="/js/vendor/dygraph/excanvas.js"></script>
<![endif]-->
<style type="text/css">
div.chart {
		/*width: 800px;
		height: 600px;*/
        position: absolute;
		left: 10px;
		right: 10px;
		top: 150px;
		bottom: 200px;
      }
</style>
<?php 
	echo $this->Html->script('vendor/dygraph/dygraph-combined',array('inline' => false));
	//echo $this->Html->script('vendor/dygraph/dygraph-dev',array('inline' => false));
?>
<div class="chart" id="theChart"></div>
<input type="button" value="Unzoom" onclick="unzoomGraph()">&nbsp;
<script type="text/javascript">
var dataset = <?php echo $graph_data; ?>;
//alert(dataset);
g = new Dygraph(
			document.getElementById("theChart"), 
			dataset,
			{
				includeZero: true,
				legend: 'always',
				panEdgeFraction: 0.1,
				plotter: multiColumnBarPlotter
			});

// Multiple column bar chart
function multiColumnBarPlotter(e) {
	// We need to handle all the series simultaneously.
	if (e.seriesIndex !== 0) return;

	var g = e.dygraph;
	var ctx = e.drawingContext;
	var sets = e.allSeriesPoints;
	var y_bottom = e.dygraph.toDomYCoord(0);

	// Find the minimum separation between x-values.
	// This determines the bar width.
	var min_sep = Infinity;
	for (var j = 0; j < sets.length; j++) {
	var points = sets[j];
	for (var i = 1; i < points.length; i++) {
		var sep = points[i].canvasx - points[i - 1].canvasx;
		if (sep < min_sep) min_sep = sep;
	}
	}
	var bar_width = Math.floor(2.0 / 3 * min_sep);

	var fillColors = [];
	var strokeColors = g.getColors();
	for (var i = 0; i < strokeColors.length; i++) {
		var color = new RGBColorParser(strokeColors[i]);
		color.r = Math.floor((255 + color.r) / 2);
		color.g = Math.floor((255 + color.g) / 2);
		color.b = Math.floor((255 + color.b) / 2);
		fillColors.push(color.toRGB());
	}

	for (var j = 0; j < sets.length; j++) {
		ctx.fillStyle = fillColors[j];
		ctx.strokeStyle = strokeColors[j];
		for (var i = 0; i < sets[j].length; i++) {
			var p = sets[j][i];
			var center_x = p.canvasx;
			var x_left = center_x - (bar_width / 2) * (1 - j/(sets.length-1));

			ctx.fillRect(x_left, p.canvasy,
				bar_width/sets.length, y_bottom - p.canvasy);

			ctx.strokeRect(x_left, p.canvasy,
				bar_width/sets.length, y_bottom - p.canvasy);
		}
	}
}

// This function draws bars for a single series. See
// multiColumnBarPlotter below for a plotter which can draw multi-series
// bar charts.
function barChartPlotter(e) {
	var ctx = e.drawingContext;
	var points = e.points;
	var y_bottom = e.dygraph.toDomYCoord(0);

	// The RGBColorParser class is provided by rgbcolor.js, which is
	// packed in with dygraphs.
	var color = new RGBColorParser(e.color);
	color.r = Math.floor((255 + color.r) / 2);
	color.g = Math.floor((255 + color.g) / 2);
	color.b = Math.floor((255 + color.b) / 2);
	ctx.fillStyle = color.toRGB();

	// Find the minimum separation between x-values.
	// This determines the bar width.
	var min_sep = Infinity;
	for (var i = 1; i < points.length; i++) {
		var sep = points[i].canvasx - points[i - 1].canvasx;
		if (sep < min_sep) min_sep = sep;
	}
	var bar_width = Math.floor(2.0 / 3 * min_sep);

	// Do the actual plotting.
	for (var i = 0; i < points.length; i++) {
		var p = points[i];
		var center_x = p.canvasx;

		ctx.fillRect(center_x - bar_width / 2, p.canvasy,
			bar_width, y_bottom - p.canvasy);

		ctx.strokeRect(center_x - bar_width / 2, p.canvasy,
			bar_width, y_bottom - p.canvasy);
	}
}
	
function unzoomGraph() {
	g.updateOptions({
		dateWindow: null,
		valueRange: null
	});
}
</script>