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



// Launch screen log-in form
$(window).on('load', function(){
 $('.logInButton').on('click', function(event){
   event.preventDefault();
   $('.logInForm').show();
   $('.signUpButton').hide();
   $('.logInButton').hide();
 })  
})


// Launch screen sign-in form
$(window).on('load', function(){
 $('.signUpButton').on('click', function(event){
   event.preventDefault();
   $('.submitForm').show();
   $('.logInButton').hide();
   $('.signUpButton').hide();
 })  
})