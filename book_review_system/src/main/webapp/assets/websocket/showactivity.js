$(document).ready(function() {
	var stompClient = null;
	var idCurent=$('#idCurent').val();
	$('#connect').click(function() {
		var socket=new SockJS("/bookReview/showReview");
		stompClient=Stomp.over(socket);
		stompClient.connect({},function(frame){
			stompClient.subscribe('/review/Activity',function(response){
				alert(JSON.pare(response.body));			
			});
		});
		
	});
	
	$('#disconnect').click(function() {
		  if(stompClient != null) {
                    stompClient.disconnect();
                }
	});
	
	$('#sendmessage').click(function() {
		stompClient.send("/app/showReview"+idCurent,{},JSON.stringify({}))
	});
	
	$('#bodyActivity').load(function() {
		  if(stompClient != null) {
                    stompClient.disconnect();
                }
	});
	
});