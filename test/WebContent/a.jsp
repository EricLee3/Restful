<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>VoiceCream / 미래손 감정분석 솔루션</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="resources/js/require.js"></script>
</head>
<body>

<iframe id ="mers" src="http://localhost:8080/progress/progress_link?agent_id=AgentPerf0001&indicator_name=Angry&custom_num=01076091277&call_type=1">
  <p>Your browser does not support iframes.</p>
</iframe>

<script>




var interval = 0;


function test(){
	interval =interval+1;
	if(interval < 6){
		clearInterval(inter);
		document.getElementById("mers").src = "http://localhost:8080/progress/progress_link?agent_id=AgentPerf0001&indicator_name=Angry&custom_num=01076091277&call_type=1";
	}else{
		document.getElementById("mers").src = "http://localhost:8080/";
	}
}
</script>
</body>
</html>