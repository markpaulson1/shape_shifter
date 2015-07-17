function popupLogSheet(resttime, callback, args){
	setTimeout(function(){
		alert('log sheet to come')
		if (callback) {
			callback.apply(this, args);
		}
	}, resttime);
}

function moveToNextExercise(nextId){
	setTimeout(function(){
		window.open('/exercises/'+nextId)
	}, 1000);
}