<!--#include file = "conn.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>��ҽ�-<%= title %></title>
<META content=ɽ���ҽ��� name=author>
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
<style type="text/css">
<!--
.STYLE5 {	FONT-WEIGHT: bold; COLOR: #5abf70
}
.STYLE6 {	FONT-WEIGHT: bold; COLOR: #d63e7c
}
.STYLE7 {	COLOR: #d63e7c
}
.STYLE8 {	COLOR: #3366cc
}
.STYLE8 {	COLOR: #59bfba
}
.STYLE9 {	COLOR: #f189a3
}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<script language="JavaScript">
<!--
function checkdata() {
if( form1.name.value =="") {
alert("\����д��ϵ��!")
return false;
}
if( form1.telephone_home.value =="") {
alert("\����д��ϵ�绰!")
return false;
}
if( form1.subject.value =="") {
alert("\����д���ѧ��!")
return false;
}
if( form1.fangshi.value =="") {
alert("\��ѡ���ѧ��ʽ!")
return false;
}

return true;
}
// -->
</script>


<% 
acction=Trim(Request.Form("acction"))
if acction<>"" Then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from dingdan",conn,1,3
rs.addnew
d="·"
rs("username")=trim(request.form("name"))
rs("tel")=trim(request.form("telephone_home"))
rs("shouji")=trim(request.form("mobile"))
rs("sex")=trim(request.form("student_sex"))
rs("dizhi")=trim(request.form("strDistrict"))
rs("dizhi1")=trim(request.form("road1"))&d&trim(request.form("road2"))&d
rs("nianji")=trim(request.form("grade"))
rs("anpai")=trim(request.form("anpai"))
rs("xueke")=trim(request.form("subject"))
rs("qingkuang")=trim(request.form("explain"))
rs("jsex")=trim(request.form("teacher_sex"))
rs("jqingkuang")=trim(request.form("other"))
rs("fangshi")=trim(request.form("fangshi"))
rs("baochou")=trim(request.form("price"))
rs("baochou2")=trim(request.form("price2"))
rs("chetie")=trim(request.form("chetie"))

rs.update

 
neirong="<table width='600' height='360' border='0' cellpadding='5' cellspacing='1' bgcolor='#CCCCCC'><tr>"
neirong=neirong&"<td width='212' align='right' bgcolor='#FFFFFF'><span class='STYLE2'>����(ѧԱ)��ţ�</span></td>"
neirong=neirong&"<td width='388' bgcolor='#FFFFFF'>S"&rs("id")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&" <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��ϵ�ˣ�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("username")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�绰��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("tel")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�ƶ��绰��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("shouji")&"</td>"
neirong=neirong&"  </tr>"
neirong=neirong&"  <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>ѧԱ�Ա�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("sex")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��������</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dizhi")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>����λ�ã�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dizhi1")&"�����</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>ѧԱ�꼶��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("nianji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�ڿΰ��ţ�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("anpai")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>���ѧ�ƣ�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xueke")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>ѧԱ���������</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("qingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��Ա�Ա�</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jsex")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>�Խ�Ա����Ҫ��(�� �ӵ� ��� )��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jqingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>��ѧ��ʽ��</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("fangshi")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>���޳�����</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("chetie")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>���꣺</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("baochou")&"Ԫ/Сʱ</td>"
neirong=neirong&"</tr>"
neirong=neirong&"</table>"

dim jmail
set jmail=server.createobject("Jmail.message")
jmail.silent=true
jmail.charset="gb2312"
jmail.ContentType="text/html" 
jmail.fromname="ɽ���ҽ���" '�����Ƿ��������ƣ����Դ����ݿ�����ȡֵ
jmail.from="jj0453@126.com" '�����Ƿ��������䣬���Դ����ݿ�����ȡֵ������ʽһ��Ҫ��ȷ
jmail.addrecipient "jj0453@126.com","��վ����Ա"
jmail.subject="����ѧԱ�����ˣ�" '��ֵ���Դ����ݿ�����ȡֵ
jmail.Body=neirong

jmail.mailserverusername="jj0453" '�ʼ����ͷ�������¼����
jmail.mailserverpassword="9911010448" '�ʼ����ͷ�������¼����
jmail.maildomain="mail.126.com" '�ʼ����ͷ���������
sendok=jmail.send("smtp.126.com") 'smtp����������



rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     �ύ�ɹ������ǻᾡ�������ϵ�ģ�');history.go(-1);</script>"
response.End
end if
%>

<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR>
            <TD 
          style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid"><TABLE cellSpacing=0 cellPadding=0 width=928 border=0>
              <TBODY>
                <TR>
                  <TD width=320 height=90><DIV align=center><IMG 
                  src="images/qing.gif" width=345 height=85></DIV></TD>
                  <TD vAlign=bottom width=332><DIV style="PADDING-BOTTOM: 20px" align=right><IMG height=23 
                  src="images/phone1.gif" width=28></DIV></TD>
                  <TD width=16>&nbsp;</TD>
                  <TD vAlign=bottom width=260><DIV class="orange height20" 
                  style="FONT-WEIGHT: bold; PADDING-BOTTOM: 10px" 
                  align=left>ȫ��ͳһ����(��ҽ�):<BR>
                    <%= qrexian %> </DIV></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD height=12></TD>
          </TR>
        </TBODY>
      </TABLE>
          <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR>
                <TD width=460 valign="top"><TABLE cellSpacing=0 cellPadding=0 width=460 border=0>
                    <TBODY>
                      <TR>
                        <TD width=105><IMG height=131 
                  src="images/qjj_1.gif" width=105></TD>
                        <TD bgColor=#f9f9e8><DIV style="PADDING-LEFT: 30px; LINE-HEIGHT: 25px" 
                  align=left><SPAN 
                  class="orange px14"><STRONG>ֱ�Ӳ���ͷ����ߣ�<%= qrexian %></STRONG></SPAN><BR>
                          ����
                          �ͷ���Ա�����������Ҫ��,������ҽ�9�����<BR>
                          ע���Ա�У�������ѡ���ʵĽ�Ա��</DIV></TD>
                        <TD width=6><IMG height=131 
                  src="images/qjj_1_1.gif" width=6></TD>
                      </TR>
                      <TR>
                        <TD colSpan=3 height=12></TD>
                      </TR>
                    </TBODY>
                </TABLE>
                    <TABLE cellSpacing=0 cellPadding=0 width=460 border=0>
                      <TBODY>
                        <TR>
                          <TD width=105><IMG height=129 
                  src="images/qjj_2.gif" width=111></TD>
                          <TD bgColor=#f4f8ee><DIV style="PADDING-LEFT: 30px; LINE-HEIGHT: 25px" 
                  align=left><SPAN 
                  class="STYLE5 px14">������д������</SPAN><BR>
                            ����
                            ��ת��ҳ���ұߣ�����������<BR>
                            ��д������ͷ���Ա�����������<BR>
                            Ҫ��ȥ��ѡ���ʵĽ�Ա��</DIV></TD>
                          <TD width=90 bgColor=#f4f8ee><IMG height=55 
                  src="images/qjj_2_1.gif" width=47></TD>
                          <TD width=6><IMG height=129 
                  src="images/qjj_2_2.gif" width=7></TD>
                        </TR>
                        <TR>
                          <TD colSpan=4 height=12></TD>
                        </TR>
                      </TBODY>
                    </TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width=460 border=0>
                      <TBODY>
                        <TR>
                          <TD width=105 bgColor=#faf1f1><IMG height=153 
                  src="images/qjj_3.gif" width=109></TD>
                          <TD bgColor=#faf1f1><DIV style="PADDING-LEFT: 30px; LINE-HEIGHT: 25px" 
                  align=left><SPAN 
                  class="STYLE6 px14">����ԤԼ��</SPAN><BR>
                            ����
                            ������ֱ�ӽ���<SPAN 
                  class=STYLE7><A class=pink_ 
                  href="teacher_serch.asp" 
                  target=_blank>��Ա��</A>��<A class=pink_ 
                  href="teacher.asp?d=zhuanye" 
                  target=_blank>רְ<BR>
                              ��ʦ��</A>��<A class=pink_ 
                  href="teacher.asp?d=mingxing" 
                  target=_blank>���ǽ�Ա��</A>��<A class=pink_ 
                  href="teacher.asp?d=yinyue" 
                  target=_blank>����ר�ſ�</A></SPAN><BR>
                            �ҵ�������Ľ�Ա�󣬵绰������<BR>
                            ԤԼ�˽�Ա��</DIV></TD>
                          <TD width=109 bgColor=#faf1f1><IMG height=153 
                  src="images/qjj_3_1.jpg" width=96></TD>
                          <TD width=6><IMG height=153 
                  src="images/qjj_3_2.gif" width=7></TD>
                        </TR>
                        <TR>
                          <TD class="px13 height18" vAlign=bottom colSpan=4 
                  height=70>����������ȡ������һ��ʽ�������뵽���ʵüҽ̣�������п��У�<BR>
                            ����
                            ���Ķ��������£���������ȫ���˽������ҽ̣�</TD>
                        </TR>
                      </TBODY>
                </TABLE></TD>
                <TD width=10>&nbsp;</TD>
                <TD 
          style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
          vAlign=center width=458 bgColor=#ffffff><FORM 
            action=dingdan.asp method=post name=form1 id="form1" onSubmit="return checkdata()">
                    <TABLE cellSpacing=0 cellPadding=0 width=450 align=center 
            bgColor=#fafafa border=0>
                      <TBODY>
                        <TR>
                          <TD width="458" height=12 colSpan=2></TD>
                        </TR>
                        <TR>
                          <TD colSpan=2><DIV align=center><A id=1 name=1></A><IMG height=42 
                  src="images/qjj_4.gif" width=384></DIV></TD>
                        </TR>
                        <TR>
                          <TD colSpan=2><DIV class=orange 
                  style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 20px; LINE-HEIGHT: 20px; PADDING-TOP: 20px" 
                  align=center>���������9���Ժ�,���߰��첻�����绰,<BR>
                            ��������д������Ϣ,���ǽ���������ȷ���ҽ���Ϣ!</DIV></TD>
                        </TR>
                        
                        <TR bgColor=#fafafa>
                          <TD colSpan=2 
        height=10><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                            <TBODY>
                              <TR bgColor=#eeeeee>
                                <TD width="27%" height=35><DIV align=right>��ϵ�ˣ�</DIV></TD>
                                <TD width="73%" bgColor=#eeeeee><DIV align=left>
                                  <INPUT id=name3 maxLength=30 size=12 
                  name=name>
                                </DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>�绰��</DIV></TD>
                                <TD bgColor=#e3e3e3><DIV align=left>
                                  <INPUT maxLength=50 name=telephone_home>
                                    <SPAN 
                  class=asho_link_9>��ע��(լ����)</SPAN></DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#eeeeee height=35><DIV align=right>�ƶ��绰��</DIV></TD>
                                <TD bgColor=#eeeeee><DIV align=left>
                                  <INPUT maxLength=30 size=25 name=mobile>
                                </DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>ѧԱ�Ա�</DIV></TD>
                                <TD bgColor=#e3e3e3><DIV align=left>
                                  <INPUT name=student_sex type=radio value=�� checked>
                                  �С�
                                  <INPUT type=radio value=Ů name=student_sex>
                                  Ů</DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#eeeeee height=35><DIV align=right>��������λ�ã�</DIV></TD>
                                <TD bgColor=#eeeeee><DIV align=left><font 
                        color=#ffffff>
                                    <select class=input_text id=strDistrict 
                        name=strDistrict>
                                      <option value="" 
                          selected>��ѡ��</option>
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
                                </font></DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>����λ�ã�</DIV></TD>
                                <TD align="left" bgColor=#e3e3e3><INPUT maxLength=30 size=10 name=road1>
                                  ·��
                                  <INPUT maxLength=30 size=10 name=road2>
                                ·����</TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>ѧԱ�꼶��</DIV></TD>
                                <TD><DIV align=left>
                                  <SELECT size=1 name=grade>
                                      <OPTION value="" 
                    selected>��ѡ��</OPTION>
                                      <OPTION value=�׶�>�׶�</OPTION>
                                      <OPTION 
                    value=һ�꼶>һ�꼶</OPTION>
                                      <OPTION value=���꼶>���꼶</OPTION>
                                      <OPTION value=���꼶>���꼶</OPTION>
                                      <OPTION 
                    value=���꼶>���꼶</OPTION>
                                      <OPTION value=���꼶>���꼶</OPTION>
                                      <OPTION value=���꼶>���꼶</OPTION>
                                      <OPTION value=��һ>��һ</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=��һ>��һ</OPTION>
                                      <OPTION value=�߶�>�߶�</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=��У��>��У��</OPTION>
                                      <OPTION value=�Կ���>�Կ���</OPTION>
                                      <OPTION value=��һ>��һ</OPTION>
                                      <OPTION value=���>���</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=����>����</OPTION>
                                      <OPTION value=�����>�����</OPTION>
                                      <OPTION 
                  value=����>�������</OPTION>
                                  </SELECT>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=35><DIV align=right>�ڿ�ʱ�䣺</DIV></TD>
                                <TD><DIV align=left>
                                    <TEXTAREA id=anpai name=anpai rows=5 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>���ѧ�ƣ�</DIV></TD>
                                <TD><DIV align=left>
                                  <INPUT maxLength=100 size=21 name=subject>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=110><DIV align=right>ѧԱ���������<BR>
                                  ��ѧԱ�Ļ�����<BR>
                                  ѧϰ״����<BR>
                                  �Ը�ȡ���</DIV></TD>
                                <TD><DIV align=left>
                                  <TEXTAREA id=textarea2 name=explain rows=5 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>ѡ���Ա�Ա�</DIV></TD>
                                <TD><DIV align=left>
                                  <INPUT type=radio value=Ů��Ա name=teacher_sex>
                                  ҪŮ��Ա��
                                  <INPUT type=radio value=�н�Ա name=teacher_sex>
                                  Ҫ�н�Ա��
                                  <INPUT 
                  type=radio CHECKED value=����ν name=teacher_sex>
                                  ����ν</DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=90><DIV align=right>�Խ�Ա����Ҫ�󣨱���Ҫ���Ա������רҵ��ʦ���ߴ�ѧ���ȣ���</DIV></TD>
                                <TD><DIV align=left>
                                  <TEXTAREA name=other rows=4 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><div align="right">��ѧ��ʽ��</div></TD>
                                <TD align="left" bgColor=#EEEEEE><label>
                                  <input type="radio" name="fangshi" id="radio" value="ѧ������">
                                  ѧ������
                                  <input type="radio" name="fangshi" id="radio2" value="��ʦ����">
                                  ��ʦ����
                                  <input type="radio" name="fangshi" id="radio3" value="С�ศ��">
                                  С�ศ��
                                  <input type="radio" name="fangshi" id="radio4" value="���ϸ���">
                                  ���ϸ���
                                  <input type="radio" name="fangshi" id="radio5" value="����">
                                ����</label></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#E3E3E3"><div align="right">���޳�����</div></TD>
                                <TD align="left" bgColor=#E3E3E3><label>
                                  <input type="radio" name="chetie" value="��">
                                  </label>
                                  ��
                                  <label>
                                    <input name="chetie" type="radio" value="��" checked>
                                ��</label></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><div align="right">��ʱ��ʽ��</div></TD>
                                <TD align="left" bgColor=#EEEEEE><input maxlength=30 size=16 name=price>
                                  <span 
                  class=asho_link_9>Ԫ/Сʱ</span></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><DIV align=right>���·�ʽ��</DIV></TD>
                                <TD align="left" bgColor=#EEEEEE><DIV align=left>
                                  <input maxlength=30 size=16 name=price2>
                                  <span 
                  class=asho_link_9>Ԫ/��</span></DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=30 colSpan=2 bgcolor="#E3E3E3"><div align="center">
                                    <INPUT name="we" type="checkbox" id="we" value="checkbox" CHECKED>
                                  ��������Ϣ����ʵ�����������κκ����һ��������˸���<br>
                                </div></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD colSpan=2 height=30><DIV align=center>
                                  <INPUT type=submit value="    ��    ��    " name=submit>
                                    <input type="hidden" name="acction" value="acction">
                                </DIV></TD>
                              </TR>
                          </TABLE></TD>
                        </TR>
                      </TBODY>
                    </TABLE>
                </FORM></TD>
              </TR>
            </TBODY>
          </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
  background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD background=images/top_2_1.gif height=12></TD>
      <TD bgColor=#ffffff colSpan=8 height=12></TD>
      <TD background=images/top_3_2.gif height=12></TD>
    </TR>
    <TR>
      <TD background=images/top_2_1.gif></TD>
      <TD bgColor=#ffffff></TD>
      <TD vAlign=top bgColor=#e8ebee colSpan=6 height=1></TD>
      <TD bgColor=#ffffff></TD>
      <TD background=images/top_3_2.gif></TD>
    </TR>
    
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff height=250></TD>
      <TD width="237" vAlign=top bgColor=#ffffff><DIV class=c_5_b>
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=Ѱ�Һ��ʵĽ�Ա"><IMG 
src="images/05.gif" width="196" height="29" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
<TBODY>
                          <TR>
                            <TD height=10></TD>
                          </TR>
                          <% 	 
dw2="Ѱ�Һ��ʵĽ�Ա"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                          <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                            <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                                  <% If len(rs("title"))>12 Then %>
                              ...
                              <% End If %>
                            </A></TD>
                          </TR>
                          
                          <TR>
                            <TD height=1 align="left" bgColor=#ebecee></TD>
                          </TR><%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
                          <TR>
                            <TD height=12></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
      </DIV></TD>
      <TD width="230" vAlign=top bgColor=#ffffff><DIV class=c_5_b>
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҽ�ֱͨ��"><IMG 
src="images/zxz_1.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="�ҽ�ֱͨ��"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
            <TR>
              <TD height=12></TD>
            </TR>
          </TBODY>
        </TABLE>
      </DIV></TD>
      <TD vAlign=top bgColor=#e8ebee></TD>
      <TD width="230" vAlign=top bgColor=#ffffff><DIV class=c_5_b>
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҳ�����վ"><IMG 
src="images/zxz_2.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="�ҳ�����վ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
            <TR>
              <TD height=12></TD>
            </TR>
          </TBODY>
        </TABLE>
      </DIV></TD>
      <TD vAlign=top bgColor=#e8ebee></TD>
      <TD width="230" vAlign=top bgColor=#ffffff><DIV id=c_5_c>
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=�ҽ̲���ͨ"><IMG 
src="images/zxz_3.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="�ҽ̲���ͨ"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'ָ����һ����¼
	if rs.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop 
		rs.close
		set rs=nothing
 %>
            <TR>
              <TD height=12></TD>
            </TR>
          </TBODY>
        </TABLE>
      </DIV></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
    <TR>
      <TD background=images/top_2_1.gif></TD>
      <TD bgColor=#ffffff height=12></TD>
      <TD vAlign=top bgColor=#ffffff colSpan=6>&nbsp;</TD>
      <TD bgColor=#ffffff>&nbsp;</TD>
      <TD 
background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=16><IMG height=15 
      src="images/center_1_1.gif" width=16></TD>
    <TD 
background=images/center_1_2.gif>&nbsp;</TD>
    <TD width=15><IMG height=15 
      src="images/center_1_3.gif" 
  width=15></TD></TR></TBODY></TABLE>
<!--#include file = "foot.asp"--></BODY></HTML>
