<%d=Trim(Request.QueryString("d"))%>
<script language="JavaScript">
<!--
function checkdata() {
if( mainForm.mefile.value =="") {
alert("\  ��ѡ��ͼƬ��")
return false;
}
return true;
}
// -->
</script>
<html >
<head>
<title></title>
<style type="text/css">
<!--
a:link {
	color: #993399;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #993399;
}
a:hover {
	text-decoration: underline;
	color: #FF0000;
}
a:active {
	text-decoration: none;
	color: #993399;
}
-->
</style>
<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE4 {
	font-size: 10pt;
	color: #FF0000;
}
-->
</style>
</head>

<body>
<center>
  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
    <tr>
      <td height="26"><div align="center" class="ziti02"><font color="#FFFFFF">

          �� �� ͼ Ƭ
      </font></div></td>
    </tr>
    <tr>
      <td height="107" valign="top" bgcolor="#FFFFFF"><form name="mainForm" enctype="multipart/form-data" action="process_edit02.asp?d=<%= d %>" method=post onSubmit="return checkdata()">
        <label></label>
      <div align="center">
        <br>
        <span class="STYLE4">ͼƬ��Ҫ����200k,��Ȼ���ܴ���</span><br>
        <input name=mefile type=file class="button" size="50">
        &nbsp;
<input name=ok type=submit class="button" value="�ϴ�">
&nbsp;
<label></label>
      </div>
      </form>      </td>
    </tr>
  </table>
</center> 
</body>
</html> 
