<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>文件</title>
</head>
<body>
	<video  id="myvideo" src="#"  controls="controls" autoplay="autoplay" width="1000px"></video>	
	<div id="address"></div>
<script src="js/jquery-1.9.1.js"></script>
<script language="javascript">
	$(document).ready(function(){
		play();
		});
		var vList = new Array("vedio/古倩敏、杨沛宜 - 别看我只是一只羊.mkv", "vedio/bc369f4f-b37b-40a7-9b47-665da2d1d5b8.mp4"); // 初始化播放列表
		var vLen = vList.length;
		var curr = 0;
		var video = document.getElementById("myvideo"); 
		video.addEventListener("ended", function(){
		// alert("已播放完成，继续下一个视频");
		//document.getElementById("address").innerHTML =vList[curr]+"已播放完成，继续下一个视频";
		play();
	});
	function play() {
		video.src = vList[curr];
		video.load();
		video.play();
		curr++;
		if(curr >= vLen){
			curr = 0; //重新循环播放
		}
	}
</script>

</body>
</html>