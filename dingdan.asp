<!--#include file = "conn.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>请家教-<%= title %></title>
<META content=山东家教网 name=author>
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
alert("\请填写联系人!")
return false;
}
if( form1.telephone_home.value =="") {
alert("\请填写联系电话!")
return false;
}
if( form1.subject.value =="") {
alert("\请填写求教学科!")
return false;
}
if( form1.fangshi.value =="") {
alert("\请选择教学方式!")
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
d="路"
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
neirong=neirong&"<td width='212' align='right' bgcolor='#FFFFFF'><span class='STYLE2'>订单(学员)编号：</span></td>"
neirong=neirong&"<td width='388' bgcolor='#FFFFFF'>S"&rs("id")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&" <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>联系人：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("username")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>电话：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("tel")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>移动电话：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("shouji")&"</td>"
neirong=neirong&"  </tr>"
neirong=neirong&"  <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>学员性别：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("sex")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>所在区域：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dizhi")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>具体位置：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dizhi1")&"交叉口</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>学员年级：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("nianji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>授课安排：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("anpai")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>求教学科：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xueke")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>学员情况描述：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("qingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>教员性别：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jsex")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>对教员其它要求(或 接单 情况 )：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jqingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>教学方式：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("fangshi")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>有无车贴：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("chetie")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>报酬：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("baochou")&"元/小时</td>"
neirong=neirong&"</tr>"
neirong=neirong&"</table>"

dim jmail
set jmail=server.createobject("Jmail.message")
jmail.silent=true
jmail.charset="gb2312"
jmail.ContentType="text/html" 
jmail.fromname="山东家教网" '这里是发件人名称，可以从数据库或表单中取值
jmail.from="jj0453@126.com" '这里是发件人邮箱，可以从数据库或表单中取值，但格式一定要正确
jmail.addrecipient "jj0453@126.com","网站管理员"
jmail.subject="有新学员加入了！" '该值可以从数据库或表单中取值
jmail.Body=neirong

jmail.mailserverusername="jj0453" '邮件发送服务器登录名称
jmail.mailserverpassword="9911010448" '邮件发送服务器登录密码
jmail.maildomain="mail.126.com" '邮件发送服务器域名
sendok=jmail.send("smtp.126.com") 'smtp服务器名称



rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     提交成功，我们会尽快和你联系的！');history.go(-1);</script>"
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
                  align=left>全市统一热线(请家教):<BR>
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
                  class="orange px14"><STRONG>直接拨打客服热线：<%= qrexian %></STRONG></SPAN><BR>
                          　　
                          客服人员将会根据您的要求,从天天家教9万多名<BR>
                          注册教员中，择优挑选合适的教员。</DIV></TD>
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
                  class="STYLE5 px14">自主填写订单：</SPAN><BR>
                            　　
                            请转到页面右边，把您的需求<BR>
                            填写清楚，客服人员将会根据您的<BR>
                            要求去挑选合适的教员。</DIV></TD>
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
                  class="STYLE6 px14">在线预约：</SPAN><BR>
                            　　
                            您可以直接进入<SPAN 
                  class=STYLE7><A class=pink_ 
                  href="teacher_serch.asp" 
                  target=_blank>教员库</A>、<A class=pink_ 
                  href="teacher.asp?d=zhuanye" 
                  target=_blank>专职<BR>
                              教师库</A>、<A class=pink_ 
                  href="teacher.asp?d=mingxing" 
                  target=_blank>明星教员库</A>、<A class=pink_ 
                  href="teacher.asp?d=yinyue" 
                  target=_blank>音乐专才库</A></SPAN><BR>
                            找到您中意的教员后，电话或在线<BR>
                            预约此教员。</DIV></TD>
                          <TD width=109 bgColor=#faf1f1><IMG height=153 
                  src="images/qjj_3_1.jpg" width=96></TD>
                          <TD width=6><IMG height=153 
                  src="images/qjj_3_2.gif" width=7></TD>
                        </TR>
                        <TR>
                          <TD class="px13 height18" vAlign=bottom colSpan=4 
                  height=70>　　　　采取上述任一方式，都能请到合适得家教．如果还有空闲，<BR>
                            　　
                            请阅读以下文章，有助于您全面了解如何请家教！</TD>
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
                  align=center>如果您晚上9点以后,或者白天不方便打电话,<BR>
                            您可以填写如下信息,我们将尽快与您确定家教信息!</DIV></TD>
                        </TR>
                        
                        <TR bgColor=#fafafa>
                          <TD colSpan=2 
        height=10><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                            <TBODY>
                              <TR bgColor=#eeeeee>
                                <TD width="27%" height=35><DIV align=right>联系人：</DIV></TD>
                                <TD width="73%" bgColor=#eeeeee><DIV align=left>
                                  <INPUT id=name3 maxLength=30 size=12 
                  name=name>
                                </DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>电话：</DIV></TD>
                                <TD bgColor=#e3e3e3><DIV align=left>
                                  <INPUT maxLength=50 name=telephone_home>
                                    <SPAN 
                  class=asho_link_9>请注明(宅、办)</SPAN></DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#eeeeee height=35><DIV align=right>移动电话：</DIV></TD>
                                <TD bgColor=#eeeeee><DIV align=left>
                                  <INPUT maxLength=30 size=25 name=mobile>
                                </DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>学员性别：</DIV></TD>
                                <TD bgColor=#e3e3e3><DIV align=left>
                                  <INPUT name=student_sex type=radio value=男 checked>
                                  男　
                                  <INPUT type=radio value=女 name=student_sex>
                                  女</DIV></TD>
                              </TR>
                              <TR>
                                <TD bgColor=#eeeeee height=35><DIV align=right>您的所在位置：</DIV></TD>
                                <TD bgColor=#eeeeee><DIV align=left><font 
                        color=#ffffff>
                                    <select class=input_text id=strDistrict 
                        name=strDistrict>
                                      <option value="" 
                          selected>请选择</option>
                                      <%	
					  dw1="地区"				
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
                                <TD bgColor=#e3e3e3 height=35><DIV align=right>具体位置：</DIV></TD>
                                <TD align="left" bgColor=#e3e3e3><INPUT maxLength=30 size=10 name=road1>
                                  路和
                                  <INPUT maxLength=30 size=10 name=road2>
                                路交界</TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>学员年级：</DIV></TD>
                                <TD><DIV align=left>
                                  <SELECT size=1 name=grade>
                                      <OPTION value="" 
                    selected>请选择</OPTION>
                                      <OPTION value=幼儿>幼儿</OPTION>
                                      <OPTION 
                    value=一年级>一年级</OPTION>
                                      <OPTION value=二年级>二年级</OPTION>
                                      <OPTION value=三年级>三年级</OPTION>
                                      <OPTION 
                    value=四年级>四年级</OPTION>
                                      <OPTION value=五年级>五年级</OPTION>
                                      <OPTION value=六年级>六年级</OPTION>
                                      <OPTION value=初一>初一</OPTION>
                                      <OPTION value=初二>初二</OPTION>
                                      <OPTION value=初三>初三</OPTION>
                                      <OPTION value=高一>高一</OPTION>
                                      <OPTION value=高二>高二</OPTION>
                                      <OPTION value=高三>高三</OPTION>
                                      <OPTION value=三校生>三校生</OPTION>
                                      <OPTION value=自考生>自考生</OPTION>
                                      <OPTION value=大一>大一</OPTION>
                                      <OPTION value=大二>大二</OPTION>
                                      <OPTION value=大三>大三</OPTION>
                                      <OPTION value=大四>大四</OPTION>
                                      <OPTION value=成人>成人</OPTION>
                                      <OPTION value=外国人>外国人</OPTION>
                                      <OPTION 
                  value=其它>其它情况</OPTION>
                                  </SELECT>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=35><DIV align=right>授课时间：</DIV></TD>
                                <TD><DIV align=left>
                                    <TEXTAREA id=anpai name=anpai rows=5 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>求教学科：</DIV></TD>
                                <TD><DIV align=left>
                                  <INPUT maxLength=100 size=21 name=subject>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=110><DIV align=right>学员情况描述：<BR>
                                  （学员的基础、<BR>
                                  学习状况、<BR>
                                  性格等。）</DIV></TD>
                                <TD><DIV align=left>
                                  <TEXTAREA id=textarea2 name=explain rows=5 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35><DIV align=right>选择教员性别：</DIV></TD>
                                <TD><DIV align=left>
                                  <INPUT type=radio value=女教员 name=teacher_sex>
                                  要女教员　
                                  <INPUT type=radio value=男教员 name=teacher_sex>
                                  要男教员　
                                  <INPUT 
                  type=radio CHECKED value=无所谓 name=teacher_sex>
                                  无所谓</DIV></TD>
                              </TR>
                              <TR bgColor=#e3e3e3>
                                <TD height=90><DIV align=right>对教员其它要求（比如要求教员必须是专业教师或者大学生等）：</DIV></TD>
                                <TD><DIV align=left>
                                  <TEXTAREA name=other rows=4 cols=35></TEXTAREA>
                                </DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><div align="right">教学方式：</div></TD>
                                <TD align="left" bgColor=#EEEEEE><label>
                                  <input type="radio" name="fangshi" id="radio" value="学生上门">
                                  学生上门
                                  <input type="radio" name="fangshi" id="radio2" value="教师上门">
                                  教师上门
                                  <input type="radio" name="fangshi" id="radio3" value="小班辅导">
                                  小班辅导
                                  <input type="radio" name="fangshi" id="radio4" value="网上辅导">
                                  网上辅导
                                  <input type="radio" name="fangshi" id="radio5" value="其他">
                                其他</label></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#E3E3E3"><div align="right">有无车贴：</div></TD>
                                <TD align="left" bgColor=#E3E3E3><label>
                                  <input type="radio" name="chetie" value="有">
                                  </label>
                                  有
                                  <label>
                                    <input name="chetie" type="radio" value="无" checked>
                                无</label></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><div align="right">计时方式：</div></TD>
                                <TD align="left" bgColor=#EEEEEE><input maxlength=30 size=16 name=price>
                                  <span 
                  class=asho_link_9>元/小时</span></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=35 bgcolor="#EEEEEE"><DIV align=right>包月方式：</DIV></TD>
                                <TD align="left" bgColor=#EEEEEE><DIV align=left>
                                  <input maxlength=30 size=16 name=price2>
                                  <span 
                  class=asho_link_9>元/月</span></DIV></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD height=30 colSpan=2 bgcolor="#E3E3E3"><div align="center">
                                    <INPUT name="we" type="checkbox" id="we" value="checkbox" CHECKED>
                                  因上述信息不真实，而引发的任何后果，一概由填表人负责<br>
                                </div></TD>
                              </TR>
                              <TR bgColor=#eeeeee>
                                <TD colSpan=2 height=30><DIV align=center>
                                  <INPUT type=submit value="    提    交    " name=submit>
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
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=寻找合适的教员"><IMG 
src="images/05.gif" width="196" height="29" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
<TBODY>
                          <TR>
                            <TD height=10></TD>
                          </TR>
                          <% 	 
dw2="寻找合适的教员"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                          <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                            <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                                  <% If len(rs("title"))>12 Then %>
                              ...
                              <% End If %>
                            </A></TD>
                          </TR>
                          
                          <TR>
                            <TD height=1 align="left" bgColor=#ebecee></TD>
                          </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
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
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=家教直通车"><IMG 
src="images/zxz_1.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="家教直通车"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
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
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=家长加油站"><IMG 
src="images/zxz_2.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="家长加油站"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
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
        <DIV class=c_5_b_1><A href="wenzhang.asp?dw=家教才艺通"><IMG 
src="images/zxz_3.gif" border="0"></A></DIV>
        <TABLE cellSpacing=0 cellPadding=0 width=187 align=center 
                  border=0>
          <TBODY>
            <TR>
              <TD height=10></TD>
            </TR>
            <% 	 
dw2="家教才艺通"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 8 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
            <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
              <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),12) %>
                    <% If len(rs("title"))>12 Then %>
                ...
                <% End If %>
              </A></TD>
            </TR>
            
            <TR>
              <TD height=1 align="left" bgColor=#ebecee></TD>
            </TR><%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
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
