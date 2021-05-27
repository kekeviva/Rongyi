<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人网站-首页</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/comm_style.css" type="text/css">

<!--  <script src="slide/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="slide/js/imgslide05.js" type="text/javascript"></script>-->
<link rel="stylesheet" href="accountcss.css" type="text/css" />

<style type="text/css">
#left{width: 180px;height: 362px;border: 1px solid #d9d7cb;margin: 10px; float: left;clear: left;}
h4{letter-spacing: 1em;font-size: 15px;background: #e6e4db;height: 24px;border-bottom: 1px solid #d9d7cb;padding-top: 5px;
    margin-top:2px; padding-left: 10px;}
#left h4{width: 170px;}
#left ul{margin: 16px;line-height: 3em;}
#left li{width: 150px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;}

#right_up{width: 564px;height: 175px;border: 1px solid #d9d7cb;margin-top: 10px;float: left;}
#right_up h4{width: 554px;}
#right_up p{width: 500px;height: 90px;background: #f4f4f0;border: 1px none #999;text-indent: 2em;line-height: 1.5em; overflow: hidden;}

#right_down{width: 564px;height: 175px;border: 1px solid #d9d7cb;margin-top: 10px;float: left;}
#right_down h4{width: 554px;}
#right_down p{width: 500px;height: 90px;background: #f4f4f0;border: 1px none #999;text-indent: 2em;line-height: 1.5em;overflow: hidden;}
#photo {width: 756px;height: 176px;border: 1px solid #d9d7cb;margin-left: 10px;float: left;}
#photo h4{width: 746px;}
/*#photo_img{width: 700px;margin-left: 60px;margin-top: 10px;text-align: center;}
#photo img{display: block;width: 100px;height: 100px;float: left;margin-right: 30px;border: 1px solid #d9d7cb;}
#photo h5{width: 100px;margin-right: 30px;margin-top: 5px;font-size: 12px;float: left;}*/

</style>
</head>
<body>
<div id="top">
    <div id="top_txt"><a href="#" target="_self"> 收藏本页 </a>|<a href="#" target="_self"> 联系站长</a></div>
</div>
<div id="vi">
    <div id="tt">买好基金<br>闪耀未来<br></div>
    <div style="margin-left:300px;border-radius:100%; height: 80px;width:80px; overflow:hidden;">
<img src="miku1.jpg" style="height: 80px;" />
</div>
<div style="margin-left:400px;margin-top:-60px;"><h3>基金矿工</h3></div>
</div>
<div id="nav">
    <ul>
        <li><a href="#" target="_self">我的主页</a></li>
        <li class="bar">|</li>
        <li><a href="#" target="_self">我的相册</a></li>
        <li class="bar">|</li>
        <li><a href="#" target="_self">管理中心</a></li>
        <li class="bar">|</li>

    </ul>
</div>
<div id="main">
    <div id="left">
        <h4>|交易记录</h4>
        <ul>
            <li>◆</li>
            <li>◆</li>
            <li>◆</li>
            <li>◆</li>
            <li>◆</li>
            <li>◆</li>
        </ul>
    </div>

    <div id="right_up">
        <h4>|账户明细</h4>
        <p>  资金：0元</p>
    </div>
    <div id="right_down">
        <h4>|我的基金</h4>
        <p>  </p>
    </div>

    <div id="photo">
        <h4>|我的信用</h4>
        <div id="picslide" class="picslide05">
            <div class="slides">
                <ul class="frame"> <li></li><li></li><li></li> </ul>
            </div>
            <ul class="content" style="display:none;">
                  <li><a href="#" target="_self"><img src="image1" /></a></li>
                  
             </ul>
             <div class="next"></div>
                    <div class="pre"></div>
                    <ul class="pointer">
                        <li class="on"></li>
                        
                    </ul>
             </div>

             <script type="text/javascript">
                    $(function () {
                        $("#picslide").picslide05();
                    });
             </script>
    </div>
</div>
</body>
</html>