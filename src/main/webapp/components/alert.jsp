<%@page import="com.vishal.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Social</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/3.7.4/firebase-auth.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-database.js"></script>
	<script
		src="https://www.gstatic.com/firebasejs/3.7.4/firebase-messaging.js"></script>

<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
}

.alert.success {background-color: #04AA6D;}
.alert.info {background-color: #2196F3;}
.alert.warning {background-color: #ff9800;}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>

<script>
		// Initialize Firebase
		var config = {
				 apiKey: "AIzaSyD9e71M3vCw91G4ID8ta9VZp6hyozNVks4",
				  authDomain: "expenseo.firebaseapp.com",
				 // databaseURL : "https://produkte-e7705-default-rtdb.firebaseio.com",
				  projectId: "expenseo",
				  storageBucket: "expenseo.appspot.com",
				  messagingSenderId: "880026832046",
				  appId: "1:880026832046:web:895c853900c33375bb713f"
		};
		firebase.initializeApp(config);
	</script>


	<script type="text/javascript">
		initApp = function() {
			firebase
					.auth()
					.onAuthStateChanged(
							function(user) {
								if (user) {
									// User is signed in.
									var displayName = user.displayName;
									var email = user.email;
									var emailVerified = user.emailVerified;
									var photoURL = user.photoURL;
									var uid = user.uid;
									var providerData = user.providerData;
									
									user
											.getToken()
											.then(
													function(accessToken) {
														document
																.getElementById('sign-in-status').textContent = 'Signed in';
														document
																.getElementById('sign-in').textContent = '';
														document
																.getElementById('account-details').textContent = JSON
																.stringify(
																		{
																			displayName,
																			/* email : email,
																			emailVerified : emailVerified,
																			photoURL : photoURL, */
																		//uid: uid,
																		//accessToken: accessToken,
																		//providerData: providerData
																		},
																		null,
																		'  ');
													});
								} else {
									// User is signed out.
									document.getElementById('sign-in-status').textContent = 'Signed out';
									document.getElementById('sign-in').textContent = 'Sign in';
									document.getElementById('account-details').textContent = 'null';
								}
							}, function(error) {
								console.log(error);
							});
		};
		window.addEventListener('load', function() {
			initApp()
		});
	</script>
</head>
<body>
	<%User user = (User)session.getAttribute("KeyUser"); %>
<div class="alert success">

<strong>Welcome! </strong> <%=user.name%>, hope it will give you a wonderful comfort.
</div>

<script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
</body>
</html>