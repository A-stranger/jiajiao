<!--#include file="upload_wj.inc"-->
<link href="images/css.css" rel="stylesheet" type="text/css">
<%
set upload=new upload_file
if upload.form("act")="uploadfile" then
	filepath=trim(upload.form("filepath"))
	filelx=trim(upload.form("filelx"))
	
	i=0
	for each formName in upload.File
		set file=upload.File(formName)
 
 fileExt=lcase(file.FileExt)	'�õ����ļ���չ��������.
 if file.filesize<100 then
	response.write "<script language=javascript>alert('����ѡ����Ҫ�ϴ����ļ���');history.go(-1);</script>"
	response.end
 end if
 if (filelx<>"rar") and (filelx<>"jpg") then 
	response.write "<script language=javascript>alert('���ļ����Ͳ����ϴ���');history.go(-1);</script>"
	response.end
 end if
 if filelx="rar" then
	if fileext<>"rar"  then
		response.write "<script language=javascript>alert('ֻ���ϴ�rar��ʽ���ļ������ȴ����');history.go(-1);</script>"
		response.end
	end if
 end if
 if filelx="jpg" then
	if fileext<>"gif" and fileext<>"jpg"  then
		response.write "<script language=javascript>alert('ֻ���ϴ�jpg��gif��ʽ��ͼƬ��');history.go(-1);</script>"
		response.end
     	end if
 end if
 if filelx="rar" then
	if file.filesize>(2000*1024) then
		response.write "<script language=javascript>alert('rar�ļ���С���ܳ���2m��');history.go(-1);</script>"
		response.end
	end if
 end if
 if filelx="jpg" then
	if file.filesize>(1000*1024) then
		response.write "<script language=javascript>alert('ͼƬ�ļ���С���ܳ���1m��');history.go(-1);</script>"
		response.end
	end if
 end if

 randomize
 ranNum=int(90000*rnd)+10000
 filename=filepath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&ranNum&"."&fileExt
%>
<%
 if file.FileSize>0 then         ''��� FileSize > 0 ˵�����ļ�����
  'file.SaveAs Server.mappath(filename)   ''�����ļ�
  file.SaveToFile Server.mappath(FileName)
  'response.write file.FileName&"�����ϴ��ɹ�!����<br>"
  'response.write "���ļ�����"&FileName&"<br>"
  'response.write "���ļ����Ѹ��Ƶ������λ�ã��ɹرմ��ڣ�"
  response.write "<script>window.opener.document."&upload.form("FormName")&"."&upload.form("EditName")&".value='"&FileName&"'</script>"
%>
<%
end if
set file=nothing
next
set upload=nothing
end if
%>
<script language="javascript">
window.alert("�ļ��ϴ��ɹ�!�벻Ҫ�޸����ɵ����ӵ�ַ��");
window.close();
</script>