var $_SubDiv="";

function Div_Show($id)
  {
	  if(document.getElementById($id)!== null){
		      document.getElementById($id).style.visibility="";
			  document.getElementById($id).style.display="";
		  }
	  
  }
function Div_Hidden($id)
  {
	  
	  if(document.getElementById($id)!== null){		      
		      document.getElementById($id).style.visibility="hidden";
			  document.getElementById($id).style.display="none";
		  }
  }
function isemail (s)
{
        // Writen by david, we can delete the before code
        if (s.length > 100)
        {
                window.alert("email地址长度不能超过100位!");
                return false;
        }
		s = s.toLowerCase()
		 var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT|name|NAME)$";
		 var re = new RegExp(regu);
         if (s.search(re) !== -1) {
               return true;
         } else {
               window.alert ("请输入有效合法的E-mail地址 ！");
               return false;
         }
}

function CheckBox($id,$this)
   {
	   var $value=document.getElementById($id);
	   var $_v=","+$value.value+",";
	   if($this.checked==true)
	      {
			  if($_v.indexOf(","+$this.value+",")==-1){
			      $value.value==""?$value.value=$this.value:$value.value+=","+$this.value;
			   }
	      }
		else
		  {
			  $_v=$_v.replace(","+$this.value+",",",");
			  $value.value=$_v.slice(1,-1);
		  }
   }


function AJAX(url,info)
  {
		
		if (window.XMLHttpRequest)
			   {
					   odb=new XMLHttpRequest();
			   } 
			   
		 else if (window.ActiveXObject)
			   {
					  odb=new ActiveXObject("Microsoft.XMLHTTP");   
			   }
				 odb.open("POST",url,false);
				 odb.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
				 odb.send(info);
				 strResult=unescape(odb.responseText);
				 return strResult ;  
  }
        var t_DiglogX,t_DiglogY,t_DiglogW,t_DiglogH;
function gname(name)
	   {
			  return document.getElementsByTagName?document.getElementsByTagName(name):new Array()
	   }
function ScreenConvert(){var browser = new Browser();var objScreen = gid("ScreenOver");if(!objScreen) var objScreen = document.createElement("div");var oS = objScreen.style;objScreen.id = "ScreenOver";oS.display = "block";oS.top = oS.left = oS.margin = oS.padding = "0px";if (document.body.clientHeight)	{var wh = document.body.clientHeight + "px";}else if (window.innerHeight){var wh = window.innerHeight + "px";}else{var wh = "100%";}oS.width = "100%";oS.height = wh;oS.position = "absolute";oS.zIndex = "3";if ((!browser.isSF) && (!browser.isOP)){oS.background = "#cccccc";}else{oS.background = "#cccccc";}oS.filter = "alpha(opacity=40)";oS.opacity = 40/100;oS.MozOpacity = 40/100;document.body.appendChild(objScreen);var allselect = gname("select");for (var i=0; i<allselect.length; i++) allselect[i].style.visibility = "hidden";}
function Browser(){var ua, s, i;this.isIE = false;this.isNS = false;this.isOP = false;this.isSF = false;ua = navigator.userAgent.toLowerCase();s = "opera";if ((i = ua.indexOf(s)) >= 0){this.isOP = true;return;}s = "msie";if ((i = ua.indexOf(s)) >= 0) {this.isIE = true;return;}s = "netscape6/";if ((i = ua.indexOf(s)) >= 0) {this.isNS = true;return;}s = "gecko";if ((i = ua.indexOf(s)) >= 0) {this.isNS = true;return;}s = "safari";if ((i = ua.indexOf(s)) >= 0) {this.isSF = true;return;}}
   
function ScreenClean()
	  {
			  var objScreen = gid("ScreenOver");
			  if (objScreen) objScreen.style.display = "none";
			  var allselect = gname("select");
			  for (var i=0; i<allselect.length; i++)
				  { 
						allselect[i].style.visibility = "visible";
				  }
	}			  
function gid(id)
	  {
			   return document.getElementById?document.getElementById(id):null;
	  }
function DialogLoc()
	 {
			  var dde = document.documentElement;
			  if (window.innerWidth)
					  {
							  var ww = window.innerWidth;
							  var wh = window.innerHeight;
							  var bgX = window.pageXOffset;
							  var bgY = window.pageYOffset;
					   }
			  else
					  {
							  var ww = dde.offsetWidth;
							  var wh = dde.offsetHeight;
							  var bgX = dde.scrollLeft;
							  var bgY = dde.scrollTop;
					  }		  
			  t_DiglogX = (bgX + ((ww - t_DiglogW)/2));				  
			  t_DiglogY = (bgY + ((wh - t_DiglogH)/2));			  
		}		
function DialogHide()
	   {
			  ScreenClean();
			  var objDialog = gid("DialogMove");
			  if (objDialog) objDialog.style.display = "none";
	   }  
function DialogShow(showdata,ow,oh,w,h)
		{
				
				var objDialog = gid("DialogMove");				
				if (!objDialog) objDialog = document.createElement("div");
				t_DiglogW = ow;
				t_DiglogH = oh;
				DialogLoc();
				if(t_DiglogY<0){t_DiglogY=0;}
				objDialog.id = "DialogMove";
				var oS = objDialog.style;
				
				oS.display = "block";
				oS.top = t_DiglogY + "px";
				oS.left = t_DiglogX + "px";
				oS.margin = "0px";
				oS.padding = "0px";
				oS.width = w + "px";
				oS.position = "absolute";
				oS.zIndex = "50";
				oS.background = "#feffef";
				objDialog.innerHTML = showdata;
				document.body.appendChild(objDialog);
		}
function flashWrite(url,w,h){
	// 
	var flashStr=
	"<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0' width='"+w+"' height='"+h+"'  align='middle'>"+
	"<param name='allowScriptAccess' value='always' />"+
	"<param name='movie' value='"+url+"' />"+
	"<param name='FlashVars' value='' />"+
	"<param name='menu' value='false' />"+
	"<param name='quality' value='high' />"+
	"<param name='bgcolor' value='#FFFFFF' />"+	
	"<param name='wmode' value='transparent' />"+
	"<embed src='"+url+"' FlashVars='' menu='false' quality='high' bgcolor='#FFFFFF' width='"+w+"' height='"+h+"' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' />"+
	"</object>";

	//
	document.write(flashStr);

}

function Html($Title,$Content)
        {
			ScreenConvert();
		    var  $DHtml="<table  width='100%' border='0' cellpadding='0' cellspacing='0'>";
				 $DHtml+="<tr style='background-image:url(/images/open_bg.gif); background-repeat:repeat; height=30px'><td style='font-weight:bold;color:#FFFFFF;' >&nbsp;&nbsp;"+$Title+"</td><td style='text-align:right;'><font style='color:#FFFFFF;cursor:pointer;' onClick='DialogHide();'>[确认]</font> &nbsp;&nbsp; &nbsp;</td></tr>";
				 $DHtml+="<tr><td colspan=2 style='padding:2px;'>"+$Content+"</td></tr><tr style='background-color:#88BF11;height:4px;'><td height=4 colspan=2 ></td></tr></table>";
			return $DHtml;	
		}
function Check_Student_Login($URL)
   {
	   var $Value=AJAX("/class/_check_student_login.php","Action=CheckLogin");
	   if(parseInt($Value)==0)
	      {
			  window.location.href=$URL;
			  return false;
		  }
		else
		  {
			 window.location.href="/student/student_login.php?url="+window.location.href;
			// $Html="<center>您尚未登录或注册，请先登录!<br /><br /><input type='Button' value='登录帐号' OnClick='JavaScript:window.location.href=\"/student/student_login.php?url="+$URL+"\";'><input type='Button' value='注 册' OnClick='JavaScript:window.location.href=\"/student/register.php\";'><input type='Button' value='取回密码' OnClick='JavaScript:window.location.href=\"/student/student_getps.php\";'></center>";
		  }
	  // $Html=Html("进入我的第一家教",$Html); 
	  // DialogShow($Html,300,0,300,100);
   }
 
function Check_Teacher_Login($URL)
   {
	   var $Value=AJAX("/class/_check_teacher_login.php","Action=Check");
	   if(parseInt($Value)==0)
	      {
			  window.location.href=$URL;
			  return false;
		  }
		else
		  { window.location.href="/teacher/teacher_login.php?url="+window.location.href;
			 
			 // $Html="<center>您尚未登录或注册，请先登录!<br /><br /><input type='Button' value='登录帐号' OnClick='JavaScript:window.location.href=\"/teacher/Teacher_login.php\";'><input type='Button' value='注 册' OnClick='JavaScript:window.location.href=\"/teacher/register.php\";'><input type='Button' value='取回密码' OnClick='JavaScript:window.location.href=\"/student/teacher_getps.php\";'></center>";
		  }
	  // $Html=Html("进入我的第一家教",$Html); 
	   //DialogShow($Html,300,0,300,100);
   }
function CreateDiv($this,$Html,$id)
   {
		if(document.getElementById($id+'_subDiv')!==null){
			 document.getElementById($id+'_subDiv').innerHTML=$Html;
			 Div_Show($id+'_subDiv');
		}else{
			var $width=$this.clientWidth;
	        var subObj=document.createElement("div");
			subObj.style.zIndex='999';
			subObj.id=$id+'_subDiv';
			subObj.style.position='absolute';
			subObj.style.width=$width+'px';
			subObj.style.display='block';
			subObj.style.background = '#ffffff';			
			subObj.innerHTML=$Html;
	        $this.appendChild(subObj);
	        $_SubDiv=$id+'_subDiv';
		}
		
   }

function DivHtml($Title,$Html,$id)
   {
	   var $DHtml="<table width=100%  background-color='#FFEEAA' border='0' cellpadding='0' cellspacing='0'>";
	       $DHtml+="<tr style='background-image:url(/images/open_bg.gif); background-repeat:repeat; height=17px;'><td style='font-weight:bold;color:#FFFFFF' >&nbsp;&nbsp;"+$Title+"</td><td align=right><font style='color:#FFFFFF;cursor:pointer;' onClick='Div_Hidden(\""+$id+"\"); return false;'>[确认]</font>&nbsp;&nbsp;</td></tr>";
		   $DHtml+="<tr><td colspan=2 style='padding:2px;'>"+$Html+"</td></tr><tr style='background-color:#88BF11;height:4px;'><td height=4 colspan=2 ></td></tr></table>";
	   return $DHtml;		
   }
   

function ChkRge()
    {
			$Html="<center> 请选择您要注册帐号的类型！<br /><br /><input type='button' value='学员注册' OnClick=window.location.href='/student/register.php'> <input type='button' value='教员注册' OnClick=window.location.href='/teacher/register.php'> <input type='button' value='取消' onclick='DialogHide();'><br /></center>";
			$Html=Html("我的家教",$Html); 
		    DialogShow($Html,300,0,300,100);
	}	
 function ChkLogin()
    {
		 ScreenConvert();
		 var $info=AJAX("/class/_check_student_login.php","Action=ChkIndex");
		 if($info!==""){
		     window.location.href=$info;
			 return false;
		 }else{
            var $Html='<div class="My"> <div style="width:315px; float:left; text-align:center; margin-left:30px;font-size:14px;">我的第一家教 Myletsno1</div>';
		        $Html+='<div style="width:50px; float:left; font-size:12px;">[ <a href="JavaScript:DialogHide();" style="color:#FFFFFF">关闭</a>]</div></div>';
			    $Html+='<div class="MyContent"><div style="width:180px; float:left; margin-top:50px; margin-left:10px;"><form action="/teacher/teacher_login.php" method="post">';
				$Html+='<div style="width:130px; float:left; height:60px; line-height:30px;"><font color="#DD0031">教</font>员名：<input name="UserID" type="text" style="width:75px;"><br />';
				$Html+='密　码：<input name="PassWord" type="password" style="width:75px;"><br /></div><input type="hidden" value="Teacher_login" name="Action" id="Action">';
				$Html+='<div style="width:50px;float:left;height:60px;line-height:60px;"><input type="image" name="imageField" src="/images/us3.GIF"> </div>';
				$Html+='</form><div style="width:100%; height:30px; line-height:30px; text-align:center;"><a href="/teacher/register.php">新教员注册</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/teacher/teacher_getps.php">忘记密码</a></div></div>';
				$Html+='<div style="width:180px; float:left; margin-top:50px; margin-left:30px;"><form action="/student/student_login.php" method="post"><div style="width:130px; float:left; height:60px; line-height:30px;">';
				$Html+='<font color="#97CC2B">学</font>员名：<input name="UserID" type="text" style="width:75px;"><br /> 密　码：<input name="PassWord" type="password" style="width:75px;"><br /> </div>';
				$Html+='<div style="width:50px;float:left;height:55px;padding-top:5px;"> <input type="image" name="imageField" src="/images/us2.GIF"></div>';
				$Html+='<input type="hidden" value="student_login" name="Action" id="Action"></form><div style="width:100%; height:30px; line-height:30px; text-align:center;"><a href="/student/register.php">新学员注册</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/student/student_getps.php">忘记密码</a></div></div></div>';
			DialogShow($Html,425,403,325,700);
		 }
	}
   
// JavaScript Document
