<!--#include file = "Include/Startup.asp"-->
<%
'������������������������������������
'��                                                                  ��
'��                eWebEditor - eWebSoft�����ı��༭��               ��
'��                                                                  ��
'��  ��Ȩ����: eWebSoft.com                                          ��
'��                                                                  ��
'��  ��������: eWeb�����Ŷ�                                          ��
'��            email:webmaster@webasp.net                            ��
'��            QQ:589808                                             ��
'��                                                                  ��
'��  �����ַ: [��Ʒ����]http://www.eWebSoft.com/Product/eWebEditor/ ��
'��            [֧����̳]http://bbs.eWebSoft.com/                    ��
'��                                                                  ��
'��  ��ҳ��ַ: http://www.eWebSoft.com/   eWebSoft�ŶӼ���Ʒ         ��
'��            http://www.webasp.net/     WEB������Ӧ����Դ��վ      ��
'��            http://bbs.webasp.net/     WEB����������̳            ��
'��                                                                  ��
'������������������������������������
%>

<%
' ��ʼ�������
Dim sContentID, sStyleID, sFullScreen
Dim sStyleName, sStyleDir, sStyleEditorHeader, sStyleBody, nStateFlag, sDetectFromWord
Dim sVersion, sReleaseDate
Call InitPara()

' ȡ���а�ť
Dim aButtonCode(), aButtonHTML()
Call InitButtonArray()

' ȡ��ʽ�µĹ���������ť
Dim sToolBar
Call InitToolBar()

' �Ͽ����ݿ�����
Call DBConnEnd()

%>


<html>
<head>
<title>eWebEditor - eWebSoft�����ı��༭��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<style type="text/css">
<%=sStyleBody%>
</style>

<Script Language=Javascript src="include/editor.js"></Script>
<Script Language=Javascript>
var bEditMode=true;
var sCurrMode = "EDIT";
var bodyTag = "<%=sStyleEditorHeader%>" ;
var sContentName = "<%=sContentID%>" ;
var objContent = parent.document.getElementsByName(sContentName)[0];

// ȫ�����ö���
var config = new Object() ;
config.Version = "<%=sVersion%>" ;
config.ReleaseDate = "<%=sReleaseDate%>" ;
config.StyleName = "<%=sStyleName%>";
config.AutoDetectPasteFromWord = <%=sDetectFromWord%>;
</Script>

<script language="javascript" event="onerror(msg, url, line)" for="window">
return true ;	 // ���ش���
</script>

</head>

<body SCROLLING=no onConTextMenu="event.returnValue=false;" onfocus="VerifyFocus()">

<table border=0 cellpadding=0 cellspacing=0 width='100%' height='100%'>
<tr><td id="eWebEditor_Tool">

	<%=sToolBar%>

</td></tr>
<tr><td height='100%'>

	<table border=0 cellpadding=0 cellspacing=0 width='100%' height='100%'>
	<tr><td height='100%'>
	<input type="hidden" ID="ContentEdit" value="">
	<input type="hidden" ID="ContentLoad" value="">
	<input type="hidden" ID="ContentFlag" value="0">
	<iframe class="Composition" ID="eWebEditor" MARGINHEIGHT="1" MARGINWIDTH="1" width="100%" height="100%" scrolling="yes"> 
	</iframe>
	</td></tr>
	</table>

</td></tr>

<% If nStateFlag = 1 Then %>
<tr><td height=20 valign=top>

	<TABLE border="0" cellPadding="0" cellSpacing="0" width="100%">
	<TR>

	<td align="left" valign="top" id='eWebEditor_CODE' style="display:none">
	<map name='eWebEditor_Map1'>
	<area shape="polygon" coords="50, 1, 46, 7, 50, 14, 90, 14, 95, 2" alt="�༭״̬" onclick="setMode('EDIT')">
	<area shape="polygon" coords="128, 13, 134, 0, 96, 0, 93, 10, 96, 14" alt="Ԥ��״̬" onclick="setMode('VIEW')">
	</map> <img SRC="ButtonImage/<%=sStyleDir%>/modecode.gif" style="cursor:hand" height="15" width="135" usemap='#eWebEditor_Map1' border="0"></td>

	<td align="left" valign="top" id='eWebEditor_EDIT'>
	<map name='eWebEditor_Map2'>
	<area shape="polygon" coords="5, 3, 12, 14, 43, 14, 49, 6, 43, 0" alt="����״̬" onclick="setMode('CODE')">
	<area shape="polygon" coords="97, 0, 94, 7, 98, 14, 127, 14, 134, 0" alt="Ԥ��״̬" onclick="setMode('VIEW')">
	</map> <img SRC="ButtonImage/<%=sStyleDir%>/modeedit.gif" style="cursor:hand" height="15" width="135" usemap='#eWebEditor_Map2' border="0"></td>

	<td align="left" valign="top" id='eWebEditor_VIEW' style="display:none"><map name='eWebEditor_Map3'>
	<area shape="polygon" coords="3, 2, 10, 14, 41, 14, 50, 0" alt="����״̬" onclick="setMode('CODE')">
	<area shape="polygon" coords="87, 14, 91, 5, 87, 0, 50, 0, 46, 9, 49, 14" alt="�༭״̬" onclick="setMode('EDIT')">
	</map> <img SRC="ButtonImage/<%=sStyleDir%>/modepreview.gif" style="cursor:hand" height="15" width="135" usemap='#eWebEditor_Map3' border="0"></td>

	</TR>
	</Table>

</td></tr>
<% End If %>

</table>

<div id="divTemp" style="VISIBILITY: hidden; OVERFLOW: hidden; POSITION: absolute; WIDTH: 1px; HEIGHT: 1px"></div>

</body>
</html>


<%


' ��ʾ���ô�����ʾ
Sub ShowErr(str)
	Call DBConnEnd()
	Response.Write "���ô���" & str
	Response.End
End Sub

' ��ʼ���������
Sub InitPara()
	' ȡȫ����־
	sFullScreen = Trim(Request.QueryString("fullscreen"))
	' ȡ��Ӧ������ID
	sContentID = Trim(Request.QueryString("id"))
	If sContentID = "" Then ShowErr "�봫����ò���ID�������ص����ݱ���ID��"

	' ȡ��ʽ��ʼֵ
	sStyleName = Trim(Request.QueryString("style"))
	If sStyleName = "" Then sStyleName = "standard"

	sSql = "select * from ewebeditor_style where s_name='" & sStyleName & "'"
	oRs.Open sSql, oConn, 0, 1
	If Not oRs.Eof Then
		sStyleID = oRs("S_ID")
		sStyleName = oRs("S_Name")
		sStyleDir = oRs("S_Dir")
		sStyleEditorHeader = oRs("S_EditorHeader")
		sStyleBody = oRs("S_Body")
		nStateFlag = oRs("S_StateFlag")
		sDetectFromWord = oRs("S_DetectFromWord")
	Else
		ShowErr "��Ч����ʽStyle�������룬���Ҫʹ��Ĭ��ֵ�������գ�"
	End If
	oRs.Close

	' ȡ�汾�ż���������
	sSql = "select sys_version,sys_releasedate from ewebeditor_system"
	oRs.Open sSql, oConn, 0, 1
	sVersion = oRs(0)
	sReleaseDate = oRs(1)
	oRs.Close
End Sub

' ��ʼ����ť����
Sub InitButtonArray()
	Dim i
	sSql = "select * from ewebeditor_button order by b_order asc"
	oRs.Open sSql, oConn, 0, 1
	i = 0
	Do While Not oRs.Eof
		i = i + 1
		Redim Preserve aButtonCode(i)
		Redim Preserve aButtonHTML(i)
		aButtonCode(i) = oRs("B_Code")
		Select Case oRs("B_Type")
		Case 0
			aButtonHTML(i) = "<DIV CLASS=""" & oRs("B_Class") & """ TITLE=""" & oRs("B_Title") & """ onclick=""" & oRs("B_Event") & """><IMG CLASS=""Ico"" SRC=""ButtonImage/" & sStyleDir & "/" & oRs("B_Image") & """></DIV>"
		Case 1
			aButtonHTML(i) = "<SELECT CLASS=""" & oRs("B_Class") & """ onchange=""" & oRs("B_Event") & """>" & oRs("B_HTML") & "</SELECT>"
		Case 2
			aButtonHTML(i) = "<DIV CLASS=""" & oRs("B_Class") & """>" & oRs("B_HTML") & "</DIV>"
		End Select
		oRs.MoveNext
	Loop
	oRs.Close
End Sub

' �ɰ�ť����õ���ť���������
Function Code2HTML(s_Code)
	Dim i
	Code2HTML = ""
	For i = 1 To UBound(aButtonCode)
		If UCase(aButtonCode(i)) = UCase(s_Code) Then
			Code2HTML = aButtonHTML(i)
			Exit Function
		End If
	Next
End Function

' ��ʼ��������
Sub InitToolBar()
	Dim aButton, n
	sSql = "select t_button from ewebeditor_toolbar where s_id=" & sStyleID & " order by t_order asc"
	oRs.Open sSql, oConn, 0, 1
	If Not oRs.Eof Then
		sToolBar = "<table border=0 cellpadding=0 cellspacing=0 width='100%' class='Toolbar'>"
		Do While Not oRs.Eof
			sToolBar = sToolBar & "<tr><td><div class=yToolbar>"
			aButton = Split(oRs("T_Button"), "|")
			For n = 0 To UBound(aButton)
				If sFullScreen = "1" And UCase(aButton(n)) = "MAXIMIZE" Then
					aButton(n) = "Minimize"
				End If
				sToolBar = sToolBar & Code2HTML(aButton(n))
			Next
			sToolBar = sToolBar & "</div></td></tr>"
			oRs.MoveNext
		Loop
		sToolBar = sToolBar & "</table>"
	Else
		ShowErr "��Ӧ��ʽû�����ù�������"
	End If
	oRs.Close
End Sub

%> 
