<html >
<head>
<script language="JavaScript" src="images/softkeyboard.js"></script>
<script language="JavaScript">
<!--
function checkdata() {
if( form1.guanliyuan_user.value =="") {
alert("\请输入您的管理员名")
return false;
}
if( form1.guanliyuan_pass.value =="") {
alert("\请输入您的密码")
return false;
}
return true;
}
// -->
</script>

<title>网站管理系统</title>
<link href="CSS/CSS.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
<link href="css.css" rel="stylesheet" type="text/css">
</head>

<body>
<p>&nbsp;</p>
<form id="form1" name="form1" method="post" action="chkadmin.asp" onSubmit="return checkdata()">
  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><img name="login_01" src="login/login_01.gif" width="600" height="256" border="0" alt=""></td>
    </tr>
    <tr>
      <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="600">
          <tr>
            <td><img name="login_02" src="login/login_02.gif" width="76" height="212" border="0" alt=""></td>
            <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="452">
                <tr>
                  <td width="452" height="145" align="center" bgcolor="#FFFFFF"><table width="209" height="84" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    <tr>
                      <td width="29%" bgcolor="#FFFFFF" class="ziti03">ID：</td>
                      <td width="71%" bgcolor="#FFFFFF"><label>
                        <input name="admin" type="text" class="button" id="admin" size="20" maxlength="20" />
                      </label></td>
                    </tr>
                    <tr>
                      <td bgcolor="#FFFFFF" class="ziti03">密码：</td>
                      <td bgcolor="#FFFFFF"><label>
                        <input name="password" onclick= "password1=this;showkeyboard();this.readOnly=1;Calc.password.value=''" type="password" class="button" id="password" size="20" />
                      </label></td>
                    </tr>
                    
                    <tr>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF"><label>
                        <input name="Submit" type="submit" class="button" style="cursor:hand;" value="登陆" />
                        <input name="Submit2" type="reset" class="button" style="cursor:hand;" value="重写" />
                      </label></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td><img name="login_05" src="login/login_05.gif" width="452" height="67" border="0" alt=""></td>
                </tr>
            </table></td>
            <td><img name="login_04" src="login/login_04.gif" width="72" height="212" border="0" alt=""></td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
 
