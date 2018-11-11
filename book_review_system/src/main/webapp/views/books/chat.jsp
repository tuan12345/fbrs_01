<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:url value="/assets/websocket/sockjs-0.3.4.js" var="sockJs" />
<spring:url value="/assets/websocket/stomp.js" var="stompJs" />
<spring:url value="/assets/websocket/custom-chat.js" var="activityJs" />

<script src="${sockJs}" type="text/javascript"></script>
<script src="${stompJs}" type="text/javascript"></script>
<script src="${activityJs}" type="text/javascript"></script>
<div class="slider-container">
	<!-- Slider Image -->
</div>
<!-- home slider end -->
<!-- banner-area start -->
<div class="banner-area pad-60"></div>
<body onload="disconnect()">

	<div>
		<div>
			<input type="text" id="from" placeholder="Choose a nickname" />
		</div>
		<br />
		<div>
			<button id="connect" onclick="connect();">Connect</button>
			<button id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button>
		</div>
		<br />
		<div id="conversationDiv">
			<!-- <input type="text" id="text" placeholder="Write a message..." /> -->
			<input type="hidden" id="curentId" value="${id }">
			<button id="sendMessage" onclick="sendMessage();">Send</button>
			<p id="response"></p>
		</div>
	</div>

</body>