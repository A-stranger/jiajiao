<!--#include file = "conn.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title><%= title %></title>
<META content=���ϼҽ��� name=author>
<META content="www.mdjjj.net" name=copyright>
<META content=chinese name=language>
<META content=ALL name=robots>
<META content=Global name=distribution>
<META content=general name=rating>
<META content="MSHTML 6.00.3790.3959" name=GENERATOR>

<META content=document name=resource-type>
<META content="7 days" name=revisit-after>
<META content=JavaScript name=vs_defaultClientScript><LINK 
href="images/shanghai.css" type=text/css 
rel=stylesheet>
<SCRIPT type=text/javascript>
function secBoard(elementID,listName,n) {
var elem = document.getElementById(elementID);
var elemlist = elem.getElementsByTagName("h3");
for (var i=0; i<elemlist.length; i++) {
elemlist[i].className = "normal";
var m = i+1;
document.getElementById(listName+"_"+m).className = "normal";
}
elemlist[n-1].className = "current";
document.getElementById(listName+"_"+n).className = "current";
}
</SCRIPT>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<DIV id=center>
<DIV id=c_1>
<DIV id=c_1_1></DIV>
<DIV id=c_1_2>
  <DIV id=c_1_2_3>
    <table width="79%" border="0" align="center" cellpadding="0" cellspacing="0">
      <% 	 
dw2="������Ϣ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 5 title,id,type from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
      <tr>
        <td height="32" align="left"><strong><a class="orange px13" 
title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank>��<%= rs("title") %></A>&nbsp; ������Ϣ</strong></td>
      </tr>
      <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
    </table>
  </DIV>
</DIV>
<DIV id=c_1_3><script type="text/javascript">
imgUrl1="images/1.jpg"/*tpa=http://ad.jz123.cn/ad/10/images/01.jpg*/;
imgtext1=""
imgLink1=escape("");
imgUrl2="images/2.jpg"/*tpa=http://ad.jz123.cn/ad/10/images/02.jpg*/;
imgtext2=""
imgLink2=escape("");
imgUrl3="images/3.jpg"/*tpa=http://ad.jz123.cn/ad/10/images/03.jpg*/;
imgtext3=""
imgLink3=escape("");
imgUrl4="images/4.jpg"/*tpa=http://ad.jz123.cn/ad/10/images/04.jpg*/;
imgtext4=""
imgLink4=escape("/");


 var focus_width=392	
 var focus_height=173
 var text_height=0
 var swf_height = focus_height+text_height
 
 var pics=imgUrl1+"|"+imgUrl2+"|"+imgUrl3+"|"+imgUrl4
 var links=imgLink1+"|"+imgLink2+"|"+imgLink3+"|"+imgLink4
 var texts=imgtext1+"|"+imgtext2+"|"+imgtext3+"|"+imgtext4
 
 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="focus1.swf"/*tpa=http://ad.jz123.cn/ad/10/focus1.swf*/><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
 document.write('</object>');
              </script></DIV>
<DIV id=c_1_4></DIV>
<DIV id=c_1_5>
<DIV id=c_1_5_1><IMG src="images/telephone.gif"></DIV>
<DIV class=orange id=c_1_5_2><STRONG>ȫ��ͳһ��ҽ����ߣ�</STRONG><BR><STRONG><%= qrexian %></STRONG><BR><A class=orange-_ 
href="dingdan.asp">24Сʱ�����ύ�ҽ����� 
���&gt;&gt;</A> </DIV>
<DIV id=c_1_5_3><STRONG class=orange>��Ա���ߡ�<%= rexian %></STRONG></DIV>
<DIV id=c_1_5_4>����ʱ��:9:00-21:00 �ڼ����� ����ȫ��</DIV><!--�绰ģ�� --></DIV>
<DIV id=c_1_6></DIV>
<DIV id=c_1_7></DIV></DIV>
<DIV id=c_2>
<DIV id=c_2_1></DIV>
<DIV id=c_2_2>
<DIV id=c_2_2_a>
<DIV id=c_2_2_1><A 
href="dingdan.asp"><IMG 
src="images/qinjiajiao.gif" width=153 height=94 border="0"></A></DIV>
<DIV id=c_2_2_2>
<DIV id=c_2_2_2_1>+ <A 
href="wenzhang.asp?dw=��ҽ�����">��ҽ�����</A><BR>
  + 
<A 
href="biaozhun.asp">�ҽ��շѱ�׼</A><BR>+ 
<A 
href="wenzhang.asp?dw=Ѱ�Һ��ʵĽ�Ա">��ѡ���ʵĽ�Ա</A></DIV>
</DIV>
<DIV id=c_2_2_3><A 
href="zhuce.asp"><IMG 
src="images/zuojiaoyuan_1.gif" border="0"></A></DIV>
<DIV id=c_2_2_4>
<DIV id=c_2_2_4_1>+ <A 
href="wenzhang.asp?dw=��Ա�ض�">��Ա�ض�</A><BR>
  + 
<A 
href="daili.asp">�鿴��У����</A><BR>
+ 
<A 
href="huikuan.asp">�鿴�ӵ�����</A> 
</DIV></DIV>
<DIV id=c_2_2_5></DIV></DIV>
<DIV class=search id=hotinfo_caption>
<DIV class=search_1></DIV>
<H3 class=current 
onmousemove="secBoard('hotinfo_caption','infolist',1);">ȫ����Ա</H3>
<H3 class=normal 
onmousemove="secBoard('hotinfo_caption','infolist',2);">��ѧ����Ա</H3>
<H3 class=normal 
onmousemove="secBoard('hotinfo_caption','infolist',3);">רҵ��ʦ</H3>
<H3 class=normal 
onmousemove="secBoard('hotinfo_caption','infolist',4);">���ֽ�Ա</H3>
<H3 class=normal 
onmousemove="secBoard('hotinfo_caption','infolist',5);">����������ʿ</H3>
<H3 class=normal 
onmousemove="secBoard('hotinfo_caption','infolist',6);">ѧԱ����</H3>
<DIV class=search_2><A class=orange 
href="teacher.asp">ȫ����Ա</A></DIV>
<DIV class=search_3></DIV></DIV>
<DIV class=search_content>
<DIV class=current id=infolist_1>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=teacher_serch.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle width="8%" height=35>��Ŀ��</TD>
          <TD width="28%"><SELECT class=input_text name=subject> <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                            <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %></SELECT> </TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle>��ѧ����</TD>
                <TD><font 
                        color=#ffffff>
                  <select  id=teach_place 
                        name=teach_place>
                    <option value="" 
                          selected>����</option>
                    <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                    <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                    <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                    <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                    <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                  </select>
                </font></TD>
                <TD align=middle>��Ա��ţ�T</TD>
                <TD align=middle><INPUT id=teacher_id1 maxLength=8 size=8 
                  name=teacher_id></TD>
                <TD>�Ա�</TD>
                <TD><SELECT class=input_text id=select3 
                        name=gender> <OPTION value="" selected>����</OPTION> 
                          <OPTION value=��>��</OPTION> <OPTION 
                        value=Ů>Ů</OPTION></SELECT> </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle height=30>��У��</TD>
          <TD><FONT 
                        color=#ffffff>
            <select size=1 name=select2>
              <option 
                          value="" selected>����</option>
              <%	
					  dw1="ԺУ"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
              <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
              <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
              <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
              <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
            </select>
          </FONT></TD>
          <TD align=middle width="12%">��ʦ��ݣ�</TD>
          <TD colSpan=3><SELECT class=input_text name=educational_level> 
              <OPTION value="" selected>ѡ���ʦ���</OPTION> <OPTION 
              value=��ר�ڶ�ѧ��>��ר�ڶ�ѧ��</OPTION> <OPTION value=���ƴ�һѧ��>���ƴ�һѧ��</OPTION> 
              <OPTION value=���ƴ��ѧ��>���ƴ��ѧ��</OPTION> <OPTION 
              value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> 
              <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION 
              value=�ڶ�˶ʿ��>�ڶ�˶ʿ��</OPTION> <OPTION value=�ڶ���ʿ��>�ڶ���ʿ��</OPTION> 
              <OPTION value=����ѧ��>����ѧ��</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION 
              value=�����׶���ʦ>�����׶���ʦ</OPTION> <OPTION value=�����׶���ʦ>�����׶���ʦ</OPTION> 
              <OPTION value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION 
              value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> <OPTION value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> 
              <OPTION value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION 
              value=���ݳ��н�ʦ>���ݳ��н�ʦ</OPTION> <OPTION value=���޳��н�ʦ>���޳��н�ʦ</OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION 
              value=���ݸ��н�ʦ>���ݸ��н�ʦ</OPTION> <OPTION value=���޸��н�ʦ>���޸��н�ʦ</OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> <OPTION 
              value=���ݴ�ѧ��ʦ>���ݴ�ѧ��ʦ</OPTION> <OPTION value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> 
              <OPTION value=""></OPTION> <OPTION 
              value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=������ʦ>������ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=���⹤�������Ա>���⹤�������Ա</OPTION> <OPTION 
              value=������ѧ�����Ա>������ѧ�����Ա</OPTION> <OPTION value=�⼮��ʦ>�⼮��ʦ</OPTION> 
              <OPTION value=�⼮��ѧ��>�⼮��ѧ��</OPTION></SELECT> </TD>
          <TD align=middle width="27%" colSpan=2><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField></TD>
        </TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV>
<DIV class=normal id=infolist_2>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=teacher_serch.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle width="8%" height=35>��Ŀ��</TD>
          <TD width="28%"><SELECT class=input_text id=subject 
                        name=subject>
                            <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                            <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </SELECT> </TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle>��ѧ����</TD>
                <TD><select class=input_text id=teach_place 
                        name=teach_place>
                            <option value="" 
                          selected>����</option>
                            <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
                <TD align=middle>��Ա��ţ�T</TD>
                <TD align=middle><INPUT id=teacher_id2 maxLength=8 size=8 
                  name=teacher_id></TD>
                <TD>�Ա�</TD>
                <TD><SELECT class=input_text name=gender> <OPTION value="" 
                    selected>����</OPTION> <OPTION value=2>��</OPTION> <OPTION 
                    value=1>Ů</OPTION></SELECT> </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle height=30>��У��</TD>
          <TD><select size=1 name=select2>
              <option 
                          value="" selected>����</option>
              <%	
					  dw1="ԺУ"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
              <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
              <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
              <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
              <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
            </select> </TD>
          <TD align=middle width="11%">��ʦ��ݣ�</TD>
          <TD colSpan=3><SELECT class=input_text name=educational_level> 
              <OPTION value="" selected>ѡ���ѧ�����</OPTION> <OPTION 
              value=���ƴ�һѧ��>���ƴ�һѧ��</OPTION> <OPTION value=���ƴ��ѧ��>���ƴ��ѧ��</OPTION> 
              <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION 
              value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> 
              <OPTION value=�ڶ�˶ʿ��>�ڶ�˶ʿ��</OPTION> <OPTION 
              value=�ڶ���ʿ��>�ڶ���ʿ��</OPTION> <OPTION value=��ר�ڶ�ѧ��>��ר�ڶ�ѧ��</OPTION> 
              <OPTION value=��ѧ������>��ѧ������</OPTION> <OPTION 
              value=���ڣ����磩ѧ��>���ڣ����磩ѧ��</OPTION> <OPTION value=�ɽ�ѧ��>�ɽ�ѧ��</OPTION> 
              <OPTION value=����ѧ��>����ѧ��</OPTION></SELECT> </TD>
          <TD align=middle width="27%" colSpan=2><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField><input name="d" type="hidden" id="d" value="daxue"></TD></TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV>
<DIV class=normal id=infolist_3>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=teacher_serch.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right width="13%" height=35>��Ŀ��</TD>
          <TD width="27%"><SELECT class=input_text id=subject 
                        name=subject>
                            <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                            <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </SELECT> </TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle width="16%">��ѧ����</TD>
                <TD width="21%"><select class=input_text id=teach_place 
                        name=teach_place>
                            <option value="" 
                          selected>����</option>
                            <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
                <TD width="3%"></TD>
                <TD align=middle width="21%">��Ա��ţ�T</TD>
                <TD width="30%"><INPUT id=teacher_id maxLength=8 size=8 
                  name=teacher_id></TD>
                <TD width="9%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=right height=30>��ݣ�</TD>
          <TD><SELECT class=input_text name=educational_level> <OPTION 
              value="" selected>ѡ���ʦ���</OPTION> <OPTION 
              value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION value=�����׶���ʦ>�����׶���ʦ</OPTION> 
              <OPTION value=�����׶���ʦ>�����׶���ʦ</OPTION> <OPTION 
              value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION value=""></OPTION> <OPTION 
              value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> 
              <OPTION value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> <OPTION 
              value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION value=""></OPTION> <OPTION 
              value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=���ݳ��н�ʦ>���ݳ��н�ʦ</OPTION> 
              <OPTION value=���޳��н�ʦ>���޳��н�ʦ</OPTION> <OPTION 
              value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> <OPTION 
              value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=���ݸ��н�ʦ>���ݸ��н�ʦ</OPTION> 
              <OPTION value=���޸��н�ʦ>���޸��н�ʦ</OPTION> <OPTION 
              value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> <OPTION 
              value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> <OPTION value=���ݴ�ѧ��ʦ>���ݴ�ѧ��ʦ</OPTION> 
              <OPTION value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=������ʦ>������ʦ</OPTION></SELECT> </TD>
          <TD align=middle width="10%">�� ��</TD>
          <TD colSpan=3><SELECT class=input_text name=gender> <OPTION 
              value="" selected>����</OPTION> <OPTION value=2>��</OPTION> <OPTION 
              value=1>Ů</OPTION></SELECT> </TD>
          <TD align=middle width="25%"><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField><input name="d" type="hidden" id="d" value="zhuanye"></TD>
          <TD align=middle 
  width="10%">&nbsp;</TD></TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV>
<DIV class=normal id=infolist_4>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=teacher_serch.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle width="8%" height=35>��Ŀ</TD>
          <TD width="28%"><SELECT class=input_text id=subject 
                        name=subject>
                            <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                            <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </SELECT> </TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle>��ѧ����</TD>
                <TD><select class=input_text id=teach_place 
                        name=teach_place>
                            <option value="" 
                          selected>����</option>
                            <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
                <TD align=middle>��Ա��ţ�T</TD>
                <TD align=middle><INPUT maxLength=8 size=8 name=teacher_id> 
</TD>
                <TD>�Ա�</TD>
                <TD><SELECT class=input_text name=gender> <OPTION value="" 
                    selected>����</OPTION> <OPTION value=2>��</OPTION> <OPTION 
                    value=1>Ů</OPTION></SELECT> </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle height=30>��У</TD>
          <TD><select size=1 name=school>
                            <option 
                          value="" selected>����</option>
                            <%	
					  dw1="ԺУ"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
          <TD align=middle width="10%">��ʦ��ݣ�</TD>
          <TD colSpan=3><SELECT class=input_text name=educational_level> 
              <OPTION value="" selected>ѡ���ʦ���</OPTION> <OPTION 
              value=��ר�ڶ�ѧ��>��ר�ڶ�ѧ��</OPTION> <OPTION value=���ƴ�һѧ��>���ƴ�һѧ��</OPTION> 
              <OPTION value=���ƴ��ѧ��>���ƴ��ѧ��</OPTION> <OPTION 
              value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> 
              <OPTION value=���ƴ���ѧ��>���ƴ���ѧ��</OPTION> <OPTION 
              value=�ڶ�˶ʿ��>�ڶ�˶ʿ��</OPTION> <OPTION value=�ڶ���ʿ��>�ڶ���ʿ��</OPTION> 
              <OPTION value=����ѧ��>����ѧ��</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION 
              value=�����׶���ʦ>�����׶���ʦ</OPTION> <OPTION value=�����׶���ʦ>�����׶���ʦ</OPTION> 
              <OPTION value=��ְ�׶���ʦ>��ְ�׶���ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION 
              value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> <OPTION value=����Сѧ��ʦ>����Сѧ��ʦ</OPTION> 
              <OPTION value=��ְСѧ��ʦ>��ְСѧ��ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION 
              value=���ݳ��н�ʦ>���ݳ��н�ʦ</OPTION> <OPTION value=���޳��н�ʦ>���޳��н�ʦ</OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION 
              value=���ݸ��н�ʦ>���ݸ��н�ʦ</OPTION> <OPTION value=���޸��н�ʦ>���޸��н�ʦ</OPTION> 
              <OPTION value=��ְ���н�ʦ>��ְ���н�ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> <OPTION 
              value=���ݴ�ѧ��ʦ>���ݴ�ѧ��ʦ</OPTION> <OPTION value=��ְ��ѧ��ʦ>��ְ��ѧ��ʦ</OPTION> 
              <OPTION value=""></OPTION> <OPTION 
              value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=����רҵ��ѵ������ʦ>����רҵ��ѵ������ʦ</OPTION> <OPTION 
              value=��ְרҵ��ѵ������ʦ>��ְרҵ��ѵ������ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=������ʦ>������ʦ</OPTION> <OPTION value=""></OPTION> 
              <OPTION value=���⹤�������Ա>���⹤�������Ա</OPTION> <OPTION 
              value=������ѧ�����Ա>������ѧ�����Ա</OPTION> <OPTION value=�⼮��ʦ>�⼮��ʦ</OPTION> 
              <OPTION value=�⼮��ѧ��>�⼮��ѧ��</OPTION></SELECT> </TD>
          <TD align=middle width="27%" colSpan=2><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField><input name="d" type="hidden" id="d" value="yinyue"></TD></TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV>
<DIV class=normal id=infolist_5>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=teacher_serch.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right width="13%" height=35>��Ŀ��</TD>
          <TD width="27%"><SELECT class=input_text id=subject 
                        name=subject>
                            <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                            <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </SELECT></TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle width="18%">��ѧ����</TD>
                <TD width="22%"><select class=input_text id=teach_place 
                        name=teach_place>
                            <option value="" 
                          selected>����</option>
                            <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
                <TD width="3%"></TD>
                <TD align=middle width="18%">��Ա��ţ�T</TD>
                <TD width="30%"><INPUT maxLength=8 size=8 name=teacher_id> </TD>
                <TD width="9%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=right height=30>��ݣ�</TD>
          <TD><SELECT class=input_text name=educational_level> <OPTION 
              value="" selected>ѡ���ʦ���</OPTION> <OPTION 
              value=���⹤�������Ա>���⹤�������Ա</OPTION> <OPTION 
              value=������ѧ�����Ա>������ѧ�����Ա</OPTION> <OPTION value=�⼮��ʦ>�⼮��ʦ</OPTION> 
              <OPTION value=�⼮��ѧ��>�⼮��ѧ��</OPTION></SELECT> </TD>
          <TD align=middle width="11%">��Ա�Ա�</TD>
          <TD colSpan=3><SELECT class=input_text id=select3 
                        name=gender> <OPTION value="" selected>����</OPTION> 
                          <OPTION value=��>��</OPTION> <OPTION 
                        value=Ů>Ů</OPTION></SELECT> </TD>
          <TD align=middle width="25%"><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField><input name="d" type="hidden" id="d" value="haigui"></TD>
          <TD align=middle 
  width="10%">&nbsp;</TD></TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV>
<DIV class=normal id=infolist_6>
<TABLE height=80 cellSpacing=1 cellPadding=0 width="97%" align=center 
bgColor=#d4d4d4 border=0>
  <TBODY>
  <TR>
    <FORM name=f action=xueyuan.asp method=post target=_blank>
    <TD bgColor=#f8f8f8>
      <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right width="18%" height=35>��̿�Ŀ��</TD>
          <TD width="15%"><INPUT size=8 name=subject></TD>
          <TD colSpan=6>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD align=middle width="17%">ѧԱ�Ա�</TD>
                <TD width="19%"><SELECT class=input_text name=student_sex> 
                    <OPTION value="" selected>����</OPTION> <OPTION 
                    value=2>��</OPTION> <OPTION value=1>Ů</OPTION></SELECT></TD>
                <TD width="2%"></TD>
                <TD align=middle width="18%">��Ա�Ա�</TD>
                <TD width="35%"><SELECT class=input_text name=teacher_sex> 
                    <OPTION value="����ν" selected>��Ҫ��</OPTION> <OPTION 
                    value=���С�>��</OPTION> <OPTION value="Ů">Ů</OPTION></SELECT> 
                </TD>
                <TD width="9%">&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD align=right height=30>�ڿεص㣺</TD>
          <TD><select class=input_text id=teach_place 
                        name=teach_place>
                            <option value="" 
                          selected>����</option>
                            <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
                            <% 
						  if rs.eof and rs.bof then 
						  Else
						  do while not rs.eof
						  %>
                            <option 
                          value=<%= rs("title") %>><%= rs("title") %></option>
                            <% 
						 rs.movenext
			             if rs.eof then exit do  						
	  	                    loop  
						  
						 %>
                            <% 
						 End If 
						 rs.close
		                 set rs=nothing
						 %>
                          </select> </TD>
          <TD align=middle width="12%">������ţ�S</TD>
          <TD colSpan=3><INPUT size=6 name=id_1> </TD>
          <TD align=middle width="30%"><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
            src="images/search_6.gif" 
          name=imageField></TD>
          <TD align=middle 
  width="10%">&nbsp;</TD></TR></TBODY></TABLE></TD></FORM></TR></TBODY></TABLE></DIV></DIV>
<DIV id=sort>
<DIV id=sort_1>
<P class=p_1>----- ��У���� -----</P>
<P class=p_2>
  <%	
					  dw1="ԺУ"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 15 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
  <% if rs.eof and rs.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                        ���޼�¼
                        <% Else
				   %>
</P>
<table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
  <tr valign='top'>
    <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
    <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="3" bordercolor="#F3F3F3">
          <tr>
            <td width="200" height="18" valign="top" bgcolor="#FFFFFF" ><A  href="teacher.asp?daxue=<%= rs("title") %>" ><%= rs("title") %></A></td>
          </tr>
        </table></td>
      </tr>
    </table>
        <%if (i mod 3) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
  </tr>
</table>
<div align="center">
  <% End If 
		  rs.close
		set rs=nothing
		  %>
  <a href="teacher.asp"></a></div>
</DIV>
<DIV id=sort_2>
<P class=p_1>-- ѧ�Ʒ��� --</P>
<P class=p_2>
  <%	
					  dw1="ѧ��"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 15 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
  <% if rs.eof and rs.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                        ���޼�¼
                        <% Else
				   %>
</P>
<table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
  <tr valign='top'>
    <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
    <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top"><table width="100%" height="25"   border="0" align="center" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
          <tr>
            <td width="171" height="20" align="center" valign="top" bgcolor="#FFFFFF" ><a  href="teacher.asp?kemu=<%= rs("title") %>"><%= rs("title") %></a></td>
          </tr>
        </table></td>
      </tr>
    </table>
        <%if (i mod 3) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
  </tr>
</table>
<div align="center">
  <% End If 
		  rs.close
		set rs=nothing
		  %>
  <a href="teacher.asp"></a></div>
</DIV>
<DIV id=sort_3>
<P class=p_1>--- ���շ��� ---</P>
<P class=p_2><A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=������">������</A> 
<A 
href="teacher.asp?kemu=С����">С����</A></P>
<P class=p_2><A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=�ַ���">�ַ���</A> 
<A 
href="teacher.asp?kemu=������">������</A></P>
<P class=p_2><A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=���ɹ�">���ɹ�</A> 
<A 
href="teacher.asp?kemu=˫�ɹ�">˫�ɹ�</A></P>
<P class=p_2><A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=����">����</A> 
<A 
href="teacher.asp?kemu=����˹">����˹</A> 
<A 
href="teacher.asp?kemu=�����">�����</A></P>
<P class=p_2><A 
href="teacher.asp?kemu=С��">С��</A>��<A 
href="teacher.asp?kemu=���">���</A>��<A 
href="teacher.asp?kemu=����">����</A>��<A 
href="teacher.asp?kemu=����">����</A></P></DIV>
<DIV id=sort_4>
<P class=p_1>-- ������� --</P>
<P class=p_2>
  <%	
					  dw1="����"				
set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 20 * from lanmu where type='"&dw1&"'  ",conn,1,3
%>
  <% if rs.eof and rs.bof then %>
&nbsp;&nbsp;&nbsp;&nbsp;
                        ���޼�¼
                        <% Else
				   %>
</P>
<table width='100%' height="40" border='0' align='center' cellpadding='0' cellspacing='0'>
  <tr valign='top'>
    <% 

		
					  i=0  
					   do while not rs.eof  
								  i=i+1
								  
		  %>
    <td width="631" align="center" class="ziti02"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top"><table width="100%" height="22"   border="0" align="left" cellpadding="0" cellspacing="2" bordercolor="#F3F3F3">
          <tr>
            <td width="753" height="21" valign="top" bgcolor="#FFFFFF" ><div align="center"><A href="teacher.asp?quyu=<%= rs("title") %>"><%= rs("title") %></A></div></td>
          </tr>
        </table></td>
      </tr>
    </table>
        <%if (i mod 4) =0 then
							response.write "</tr><tr>"
							End If 								
           				
			rs.movenext
			 									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	   loop  						
   
					
					response.write "</td></tr>"%></td>
  </tr>
</table>
<div align="center">
  <% End If 
		  rs.close
		set rs=nothing
		  %>
  <a href="teacher.asp"></a></div>
</DIV></DIV>
<DIV id=c_2_2_6></DIV>
<DIV id=c_2_2_7></DIV>
<DIV id=c_2_2_8></DIV></DIV>
<DIV id=c_2_3>
<DIV class=c_2_3_1><A href="logoin.asp"><IMG src="images/login.gif" width=225 
height=37 border="0"></A></DIV>
<DIV id=c_2_3_2>
<FORM action=logoin.asp method=post name="form1" id="form1">
<P>�û����� <INPUT id=name size=16 name=name> </P>
<P>�ܡ��룺 <INPUT id=password type=password size=16 name=password> </P>
<DIV 
style="PADDING-LEFT: 15px; FLOAT: left; MARGIN-BOTTOM: 10px; WIDTH: 100px; HEIGHT: 20px"><INPUT 
style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
type=image height=20 alt=��½ width=40 
src="images/login_ico.gif" name=imageField2> <A 
href="zhuce.asp"><IMG 
src="images/zhuce.gif" width=40 height=20 border="0"></A>
  <input name="w" type="hidden" id="w" value="1">
</DIV><A 
style="MARGIN-TOP: 4px; DISPLAY: block; FLOAT: left" 
href="getpassword.asp">��������?</A> 
</FORM>
<DIV style="WIDTH: 180px" align=center><A class=orange_ 
href="guanli_renzheng.asp">ֱ��������֤</A></DIV>
</DIV>
<DIV class=c_2_3_1><IMG height=37 
src="images/notice.gif" width=225></DIV>
<DIV id=c_2_3_3>
<% 	 
dw2="���¹���"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 5 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
<DIV class=c_2_3_3_1><a href="wenzhang_show.asp?id=<%= rs("id") %>" target="_blank" ><IMG  
src="images/02.jpg" > <%= left(rs("title"),9) %>
                      <% If len(rs("title"))>9 Then %>
                  ...
                  <% End If %>
                </a>����<%= month(rs("intime")) %>-<%= day(rs("intime")) %></A></DIV>
<%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>

</DIV></DIV>
<DIV id=c_2_4></DIV></DIV>
<DIV class=c_3>
<DIV class=c_3_1></DIV>
<DIV class=c_3_2>
<DIV class=c_3_2_1></DIV>
<DIV class=c_3_2_2><A class=white16 
href="teacher.asp?d=zhuanye">ר ҵ �� ʦ 
�� Ϣ ��</A></DIV>
<DIV class=c_3_2_3><A 
href="teacher.asp?d=zhuanye"><IMG 
src="images/teacher_3.gif" width=213 height=45 border="0"></A></DIV>
<DIV class=c_3_2_4>
<% 
			  d="��"
			  set rs=server.CreateObject("adodb.recordset")

strsql="select top 5 * from jiaoyuan where zhunaye='"&d&"' and kongkai='"&d&"' order by intime desc"
rs.open strsql,conn,1,1
i=0
do while not rs.eof
i=i+1

 %>
<DIV class=c_3_2_4_1><A title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("xingming"),1) %>��ʦ  
<% If rs("xueke")<>"" Then %>
					  <%= left(rs("xueke"),4) %>
                      <% Else %>
                      <%= left(rs("kemu"),4) %>
                      <% End If %>
                       �� <%= rs("gongzuo") %> �� <%= rs("dengji") %> �� <%= month(rs("intime")) %>-<%= day(rs("intime")) %> �� ��ϸ</A></DIV>
	<%   	rs.movenext  									'ָ����һ����¼
			if rs.eof or i>4 then exit do  						'�Ѿ��������һ����¼������
	  	loop
		rs.close  
		set rs=nothing
		%>
	<DIV class=c_3_2_4_2><A class=orange 
href="teacher.asp?d=zhuanye">�����Ա&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_2_5><A 
href="teacher.asp?d=zhuanye"><IMG 
src="images/photo1.jpg" width=120 height=170 border="0"></A></DIV>
</DIV>
<DIV class=c_3_3>
<DIV class=c_3_3_1><A 
href="teacher.asp?d=mingxing"><IMG 
src="images/teacher_star.gif" border="0"></A></DIV>
<% 
			  d="��"
			  set rs=server.CreateObject("adodb.recordset")

strsql="select top 6 * from jiaoyuan where mingxing='"&d&"' and kongkai='"&d&"' "
rs.open strsql,conn,1,1
i=0
do while not rs.eof
i=i+1
 %>
<DIV class=c_3_3_2><A class=a2 title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank> </A><A class=a2 title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank><IMG  
src="images/01.jpg" width="17" height="16" ></A> <A class=a2 title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("xingming"),1) %>��ʦ��<%= left(rs("daxue"),7) %>��<%= left(rs("zhuanye"),4) %></A></DIV>
<%   	rs.movenext  									'ָ����һ����¼
			if rs.eof or i>5 then exit do  						'�Ѿ��������һ����¼������
	  	loop
		rs.close  
		set rs=nothing
		%>
<DIV class=c_3_3_3><A class=cyan 
href="teacher.asp?d=mingxing">�����Ա&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_4></DIV></DIV>
<DIV class=c_3>
<DIV class=c_3_1></DIV>
<DIV class=c_3_2>
<DIV class=c_3_2_1></DIV>
<DIV class=c_3_2_2><A class=white16 
href="teacher.asp?d=mingxing">�� �� �� Ա 
�� Ϣ ��</A></DIV>
<DIV class=c_3_2_3><A 
href="teacher.asp?d=mingxing"><IMG 
src="images/teacher_4.gif" width=213 height=45 border="0"></A></DIV>
<DIV class=c_3_2_4>
  <% 
			  d="��"
			  set rs=server.CreateObject("adodb.recordset")

strsql="select top 5 * from jiaoyuan where mingxing='"&d&"' and kongkai='"&d&"' order by intime desc"
rs.open strsql,conn,1,1
i=0
do while not rs.eof
i=i+1

 %>

  <DIV class=c_3_2_4_1><A title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("xingming"),1) %>��Ա <%= rs("daxue") %> �� <%= left(rs("kemu"),6) %>&nbsp; <%= left(rs("xueli"),4) %> ��<%= month(rs("intime")) %>-<%= day(rs("intime")) %> ����ϸ</A></DIV>
  <%   	rs.movenext  									'ָ����һ����¼
			if rs.eof or i>4 then exit do  						'�Ѿ��������һ����¼������
	  	loop
		rs.close  
		set rs=nothing
		%>
  <DIV class=c_3_2_4_2><A class=orange 
href="teacher.asp?d=mingxing">�����Ա&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_2_5><A 
href="teacher.asp?d=mingxing"><IMG 
src="images/photo2.jpg" width=120 height=170 border="0"></A></DIV>
</DIV>
<DIV class=c_3_3>
<DIV class=c_3_3_1><A 
href="teacher.asp?d=yinyue"><IMG 
src="images/teacher_music.gif" border="0"></A></DIV> 
<% 
			  d="��"
			  set rs=server.CreateObject("adodb.recordset")

strsql="select top 6 * from jiaoyuan where yinyue='"&d&"' and kongkai='"&d&"' order by intime desc"
rs.open strsql,conn,1,1
i=0
do while not rs.eof
i=i+1
 %>
<DIV class=c_3_3_2><A class=a2 title=����鿴���� 
href="teacher_show.asp?id=<%= rs("id") %>" 
target=_blank><IMG  
src="images/03.jpg" >&nbsp; <%= left(rs("xingming"),1) %>��ʦ��<%= rs("daxue") %>��<%= left(rs("zhuanye"),4) %></A></DIV>

<%   	rs.movenext  									'ָ����һ����¼
		if rs.eof or i>5 then exit do  						'�Ѿ��������һ����¼������
	  	loop
		rs.close  
		set rs=nothing
		%>
<DIV class=c_3_3_3><A class=cyan 
href="teacher.asp?d=yinyue">�����Ա&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_4></DIV></DIV>
<DIV class=c_3>
<DIV class=c_3_1></DIV>
<DIV class=c_3_2_s>
<DIV class=c_3_2_1_s></DIV>
<DIV class=c_3_2_2_s><A class=white16 
href="xueyuan.asp">�� �� ѧ Ա �� 
Ϣ</A></DIV>
<DIV class=c_3_2_3><A 
href="xueyuan.asp"><IMG 
src="images/student_3.gif" width=213 height=45 border="0"></A></DIV>
 <DIV class=c_3_2_4><%
					d="��"
					set rs=server.CreateObject("adodb.recordset")
rs.Open "select top 5 * from dingdan where xianshi='"&d&"'  order by id desc",conn,1,1

do while not rs.eof

 %>
<A title=����鿴���� 
href="xueyuan_show.asp?id=<%= rs("id") %>" 
target=_blank>
<DIV class=c_3_2_4_1_s>
<DIV class=c_a><%= rs("nianji") %></DIV>
<DIV class=c_c><%= left(rs("xueke"),4) %></DIV>
<DIV class=c_e><%= left(rs("dizhi"),4) %></DIV>
<DIV class=c_f><%= left(rs("anpai"),10) %>...</DIV><%= month(rs("intime")) %>-<%= day(rs("intime")) %></DIV></A>
<% rs.movenext  									'ָ����һ����¼
			if rs.eof  then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close 	
		set rs=nothing %>
<DIV class=c_3_2_4_2><A class=cyan 
href="xueyuan.asp">����ѧԱ&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_2_5><A 
href="xueyuan.asp"><IMG 
src="images/photo3.jpg" width=120 height=170 border="0"></A></DIV>
</DIV>
<DIV class=c_3_3>
<DIV class=c_3_3_1><A 
href="wenzhang.asp?dw=��ɫ����"><IMG 
src="images/service.gif" border="0"></A></DIV>
<% 	 
dw2="��ɫ����"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 5 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
<DIV class=c_3_3_2><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><IMG  
src="images/04.jpg" width="20" height="19" >&nbsp; <%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %>
                </a></DIV>
<%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
<DIV class=c_3_3_3><A class=orange 
href="wenzhang.asp?dw=��ɫ����">������ɫ����&gt;&gt;</A></DIV>
</DIV>
<DIV class=c_3_4></DIV></DIV>
<DIV id=c_4>
<DIV id=c_4_1></DIV>
<DIV id=c_4_2>
<FORM id=form1 name=form1 action=search.asp method=post>
<DIV id=c_4_2_1><IMG height=68 
src="images/zxz_logo.gif" width=259></DIV>
<DIV id=c_4_2_2><SELECT name=dw size=1 id="dw"> 
  <OPTION value="" 
  selected>��������</OPTION> <OPTION value=�ҽ�ֱͨ��>�ҽ�ֱͨ��</OPTION> <OPTION 
  value=�ҳ�����վ>�ҳ�����վ</OPTION> <OPTION value=�ҽ̲���ͨ>�ҽ̲���ͨ</OPTION> <OPTION 
  value=ѧϰ����>ѧϰ����</OPTION> <OPTION value=ѧϰ����>ѧϰ����</OPTION> <OPTION 
  value=����ѧϰ>����ѧϰ</OPTION> <OPTION value=��ѧ��Դ>��ѧ��Դ</OPTION><OPTION value=Ѱ�Һ��ʵĽ�Ա>Ѱ�Һ��ʵĽ�Ա</OPTION></SELECT><INPUT id=title 
name=title> 
</DIV>
<DIV id=c_4_2_3><INPUT 
style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
type=image height=23 width=71 
src="images/zxz_search.gif" name=imageField2> 
</DIV></FORM>
<DIV id=c_4_2_4><A 
href="wenzhang.asp?dw=�ҽ�ֱͨ��">�ҽ�ֱͨ��</A> | <A 
href="wenzhang.asp?dw=�ҳ�����վ">�ҳ�����վ</A> | <A 
href="wenzhang.asp?dw=�ҽ̲���ͨ">�ҽ̲���ͨ</A> | <A 
href="wenzhang.asp?dw=ѧϰ����">ѧϰ����</A> | <A 
href="wenzhang.asp?dw=ѧϰ����">ѧϰ����</A> | <A 
href="wenzhang.asp?dw=��ѧ��Դ">��ѧ��Դ</A> | <A 
href="wenzhang.asp?dw=����ѧϰ">����ѧϰ</A></DIV>
</DIV>
<DIV id=c_4_3></DIV></DIV>
<SCRIPT language=JavaScript type=text/javascript>;
imgUrl=new Array();
var imgLink=new Array();
imgLink=new Array();    
var adNum=0;
var imgPre=new Array();
var j=0;
imgUrl[1]="../info/images/12402018344452.jpeg";
imgLink[1]="../info/special_109.htm";
imgUrl[2]="../info/images/11316844662866.jpeg";
imgLink[2]="../info/special_60.htm";
imgUrl[3]="../info/images/11316803136036.jpeg";
imgLink[3]="../info/special_59.htm";
imgUrl[4]="../info/images/12398782381410.jpeg";
imgLink[4]="../info/special_93.htm";
imgUrl[5]="../info/images/11328993064547.jpeg";
imgLink[5]="../info/special_71.htm";
imgUrl[6]="../info/images/12402121518210.jpeg";
imgLink[6]="../info/special_98.htm";
imgUrl[7]="../info/images/12398793473903.jpeg";
imgLink[7]="../info/special_100.htm";
imgUrl[8]="../info/images/12398786209017.jpeg";
imgLink[8]="../info/special_103.htm";
imgUrl[9]="../info/images/12398756399806.jpeg";
imgLink[9]="../info/special_101.htm";
imgUrl[10]="../info/images/12398752899128.jpeg";
imgLink[10]="../info/special_108.htm";
imgUrl[11]="../info/images/12398748846001.jpeg";
imgLink[11]="../info/special_107.htm";
imgUrl[12]="../info/images/12398744852320.jpeg";
imgLink[12]="../info/special_106.htm";
imgUrl[13]="../info/images/12391643168741.jpeg";
imgLink[13]="../info/special_105.htm";
imgUrl[14]="../info/images/12281138487013.jpeg";
imgLink[14]="../info/special_104.htm";
imgUrl[15]="../info/images/11442334943540.jpeg";
imgLink[15]="../info/special_102.htm";
imgUrl[16]="../info/images/11358458484185.jpeg";
imgLink[16]="../info/special_99.htm";
imgUrl[17]="../info/images/11356667706698.jpeg";
imgLink[17]="../info/special_97.htm";
imgUrl[18]="../info/images/11353185447088.jpeg";
imgLink[18]="../info/special_96.htm";
var h=18;

for (i=1;i<=h;i++) 
{
	if( (imgUrl[i]!="") && (imgLink[i]!="")) 
	{
		j++;
	} 
	else 
	{
		break;
	}
}

function playTran()
{
	if (document.all)
	{
		document.imgInit.filters[0].play();
	}
}

function nextAd()
{
	if(adNum<j) adNum++ ;
	else adNum=1;
	
	if (document.all)
	{
		document.imgInit.filters[0].Transition=26;
		document.imgInit.filters[0].apply();
	}
	document.images.imgInit.src=imgUrl[adNum];
	playTran();
	theTimer=setTimeout("nextAd()", 4000);
}

 function jump2url()
 {
     jumpUrl=imgLink[adNum];
     jumpTarget='_blank';
     if (jumpUrl != '')
	 {
         if (jumpTarget != '')  window.open(jumpUrl,jumpTarget);
         else location.href=jumpUrl;}
     }
  function displayStatusMsg()
  { 
     status=imgLink[adNum];
     document.returnValue = true;
 }
</SCRIPT>

<DIV id=c_5>
<DIV id=c_5_1></DIV>
<DIV id=c_5_2>
<DIV id=c_5_2_1>
  <DIV class=c_5_b>
    <DIV class=c_5_b_1><A href="wenzhang.asp?dw=Ѱ�Һ��ʵĽ�Ա"><IMG 
src="images/05.gif" width="196" height="29" border="0"></A></DIV>
    <DIV class=c_5_b_2>
      <UL><% 	 
dw2="Ѱ�Һ��ʵĽ�Ա"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
      </UL>
      <DIV class=c_5_b_2_1><A class=orange 
href="wenzhang.asp?dw=�ҽ�ֱͨ��">����&gt;&gt;</A></DIV>
    </DIV>
  </DIV>
  <DIV class=c_5_b>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҽ�ֱͨ��"><IMG 
src="images/zxz_1.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="�ҽ�ֱͨ��"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=orange 
href="wenzhang.asp?dw=�ҽ�ֱͨ��">����&gt;&gt;</A></DIV>
</DIV></DIV>
<DIV class=c_5_b>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҳ�����վ"><IMG 
src="images/zxz_2.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="�ҳ�����վ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=green 
href="wenzhang.asp?dw=�ҳ�����վ">����&gt;&gt;</A></DIV>
</DIV></DIV>
<DIV id=c_5_c>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҽ̲���ͨ"><IMG 
src="images/zxz_3.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="�ҽ̲���ͨ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=pink 
href="wenzhang.asp?dw=�ҽ̲���ͨ">����&gt;&gt;</A></DIV>
</DIV></DIV></DIV>
<DIV id=c_5_2_2>
<DIV id=c_5_d>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=ѧϰ����"><IMG 
src="images/zxz_4.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
 <% 	 
dw2="ѧϰ����"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=pink 
href="wenzhang.asp?dw=ѧϰ����">����&gt;&gt;</A></DIV>
</DIV></DIV>
<DIV class=c_5_e>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=ѧϰ����"><IMG 
src="images/zxz_5.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="ѧϰ����"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=green 
href="wenzhang.asp?dw=ѧϰ����">����&gt;&gt;</A></DIV>
</DIV></DIV>
<DIV class=c_5_e>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=����ѧϰ"><IMG 
src="images/zxz_6.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="����ѧϰ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=orange 
href="wenzhang.asp?dw=����ѧϰ">����&gt;&gt;</A></DIV>
</DIV></DIV>
<DIV id=c_5_f>
<DIV class=c_5_b_1><A href="wenzhang.asp?dw=��ѧ��Դ"><IMG 
src="images/zxz_7.gif" border="0"></A></DIV>
<DIV class=c_5_b_2>
<UL>
  <% 	 
dw2="��ѧ��Դ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
        <LI><A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),13) %>
                      <% If len(rs("title"))>13 Then %>
                  ...
                  <% End If %></A></LI>
  <%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %></UL>
<DIV class=c_5_b_2_1><A class=blue 
href="wenzhang.asp?dw=��ѧ��Դ">����&gt;&gt;</A></DIV>
</DIV></DIV></DIV></DIV>
<DIV id=c_5_3></DIV></DIV>
<DIV class=b_3>
<DIV class=b_3_1></DIV>
<DIV class=b_3_2></DIV>
<DIV class=b_3_3></DIV></DIV></DIV>

<!--#include file = "foot.asp"--></BODY></HTML>
