var stompClient = null;

function connect() {
	var socket = new SockJS('/bookReview/chat');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		setConnected(true);
		sendMessage();
		console.log('Connected: ' + frame);
		stompClient.subscribe('/topic/messages', function(messageOutput) {
			alert(JSON.parse(messageOutput.body));
		});
	});
}
		
function disconnect() {
	if (stompClient != null) {
		noticationDisconnect();
		stompClient.disconnect();
	}
	setConnected(false);
	console.log("Disconnected");
}

function noticationDisconnect() {

	var from = document.getElementById('from').value;
	var text = "Disconnected";
	stompClient.send("/app/chat", {}, JSON.stringify({
		'from' : from,
		'text' : text
	}));
}

function sendMessage() {

	/*var from = document.getElementById('from').value;
	var text = document.getElementById('text').value;*/
	var id=$('#curentId').val();
	stompClient.send("/app/chat"+id, {},JSON.stringify({
		/*'id' : id,
		'from' : from,
		'text' : text*/
	}));
	
}

function showMessageOutput(messageOutput) {
	var response = document.getElementById('response');
	var p = document.createElement('p');
	p.style.wordWrap = 'break-word';
	p.appendChild(document.createTextNode(messageOutput));
	response.appendChild(p);
	
}

function setConnected(connected) {

	document.getElementById('connect').disabled = connected;
	document.getElementById('disconnect').disabled = !connected;
	document.getElementById('conversationDiv').style.visibility = connected ? 'visible'
			: 'hidden';
	document.getElementById('response').innerHTML = '';
}
