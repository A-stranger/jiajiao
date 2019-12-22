<%
uppath=request("uppath")&"/"			'文件上传路径
filelx=request("filelx")				'文件上传类型
formName=request("formName")			'回传到上页面编辑框所在Form的Name
EditName=request("EditName")			'回传到上页面编辑框的Name
%>
<html><head><title>文件上传</title>

<link href="images/css.css" rel="stylesheet" type="text/css">
<script language="javascript">
<!--
function mysub()
{
		esave.style.visibility="visible";
}
-->
</script>
<style type="text/css">
<!--
.STYLE3 {font-size: 10pt}
.STYLE5 {font-size: 9pt}
-->
</style>
<link href="manage/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" method="post" action="upfile_flash.asp" enctype="multipart/form-data" >
<div id="esave" style="position:absolute; top:18px; left:40px; z-index:10; visibility:hidden"> 
<TABLE WIDTH=340 BORDER=0 CELLSPACING=0 CELLPADDING=0>
<TR><td width=20%></td>
<TD bgcolor=#ff0000 width="60%"> 
<TABLE WIDTH=100% height=120 BORDER=0 CELLSPACING=1 CELLPADDING=0>
<TR> 
<td bgcolor=#ffffff align=center><font color=red>正在上传文件，请稍候...</font></td>
</tr>
</table>
</td><td width=20%></td>
</tr></table></div>
<table class="tableBorder" width="491" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#698EDA">
<tr> 
<td align="center" background="manage/images/admin_bg_1.gif"><b><font color="#ffffff"><span class="STYLE3">文件或图片上传</span> 
      <input type="hidden" name="filepath" value="<%=uppath%>">
<input type="hidden" name="filelx" value="<%=filelx%>">
<input type="hidden" name="EditName" value="<%=EditName%>">
<input type="hidden" name="FormName" value="<%=formName%>">
<input type="hidden" name="act" value="uploadfile"></font></b></td>
</tr>
<tr > 
<td height="80" align="center" bgcolor="#FFFFFF" id="upid"><span class="ziti03">选择文件:</span> 
<input type="file" name="file1" size="40" class="button" value="">
<input type="submit" name="Submit" value="开始上传" class="button" onClick="javascript:mysub()"></td>
</tr>
</table>
</form>
</body>
</html>