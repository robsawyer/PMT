<!--[if IE]>
<?php //echo $this->Html->script('vendor/excanvas', array('inline' => false)); ?>
<![endif]-->
<?php 
	echo $this->Html->script('vendor/dygraph-combined',array('inline' => false));
?>
<div class="yearly" id="theChart" style="width: 800px; height: 450px;"></div>
<br> <br>
<input type="button" value="Unzoom" onclick="unzoomGraph()">&nbsp;
<script type="text/javascript">
var g = new Dygraph(document.getElementById("theChart"), 
					<?php echo $graph_data; ?>,
					{
						series: { 
							"Date": {
								stepPlot: false
							},
							"Total Ads": {
								stepPlot: true
							}
						},
						//logscale: true,
						animatedZooms: true,
						fillGraph: true,
						labels: ["Date", "Total Ads"]
					});

function unzoomGraph() {
	g.updateOptions({
		dateWindow: null,
		valueRange: null
	});
}
</script>