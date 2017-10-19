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


<script>

var obj = new Object();
//obj.agentId = "2Krepr224";
obj.agentName = "배재성8";
obj.agentNumber = "0233256740";
obj.agentIp = '192.168.10.225';

var jsonData = JSON.stringify(obj);



var interval = 0;
req_progress();






function req_progress(){		
	var formURL = "http://localhost:8080/REST/agent/repr/2Krepr224";
    $.ajax(
    {
                type : "PATCH",
                data : jsonData,
                url : formURL,
                processData : true,
                contentType : "application/json; charset=UTF-8",
                success : function(data) {
                    // data는 서버로부터 전송받은 결과(JSON)이므로 바로 사용한다
                    if (data != null) {
                            alert(data.name + '님 환영합니다.');
                            var map = new MapArray();
                            postData('/News/index.do', map);
                    } else if (data.answer == 'fail') {
                            alert('아이디와 비번이 일치하지 않습니다.');
                    } else if (data.answer == 'error') {
                            alert('원활한 접속이 이루어 지지 못했습니다. 관리자에게 문의하십시오.');
                    }
             },
             error : function(e) {
                    alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
             }
     });

}

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