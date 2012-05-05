function toggleHold(data){
	console.log(data);
	var val;
	var targetClass = 'on-hold';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.onHold){
		val = "✓";
		$("#"+returnData.id+"_hold").text(val);
		$("#"+returnData.id+"_hold").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_hold").text(val);
		$("#"+returnData.id+"_hold").removeClass(targetClass);
	}
}

function toggleQA(data){
	console.log(data);
	var val;
	var targetClass = 'in-qa';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.inQA){
		val = "✓";
		$("#"+returnData.id+"_qa").text(val);
		$("#"+returnData.id+"_qa").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_qa").text(val);
		$("#"+returnData.id+"_qa").removeClass(targetClass);
	}
}

function toggleComplete(data){
	console.log(data);
	var val;
	var targetClass = 'completed';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.completed){
		val = "✓";
		$("#"+returnData.id+"_complete").text(val);
		$("#"+returnData.id+"_complete").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_complete").text(val);
		$("#"+returnData.id+"_complete").removeClass(targetClass);
	}
}

function toggleStarted(data){
	console.log(data);
	var val;
	var targetClass = 'started';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.hasStarted){
		val = "✓";
		$("#"+returnData.id+"_started").text(val);
		$("#"+returnData.id+"_started").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_started").text(val);
		$("#"+returnData.id+"_started").removeClass(targetClass);
	}
}

function toggleOffshore(data){
	console.log(data);
	var val;
	var targetClass = 'offshore';
	//offshore-project-row
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.isOffshore){
		val = "✓";
		$("#"+returnData.id+"_offshore").text(val);
		$("#"+returnData.id+"_offshore").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_offshore").text(val);
		$("#"+returnData.id+"_offshore").removeClass(targetClass);
	}
}