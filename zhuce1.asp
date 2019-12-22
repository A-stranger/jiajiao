<!--#include file="conn.asp"-->

<% dd=Trim(Request.Form("name")) 
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from jiaoyuan where username='"&dd&"'"
rs.open strsql,conn,1,1
if not(rs.eof and rs.bof) then
response.Write("<script>alert('此用户名已经被注册了!');history.go(-1);</script>")
response.end
rs.close
set rs=nothing
end if

%>
<%
flag=Trim(Request.Form("flag"))
acction=Trim(Request.Form("acction"))
If  flag="" Then 
response.Write "<script language=javascript>alert('     请选择身份！');history.go(-1);</script>"
response.End
end if 
if acction<>"" Then

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from jiaoyuan",conn,1,3
rs.addnew
rs("username")=trim(request.form("name"))
rs("password")=trim(request.form("password"))
rs("shenfen")=flag
rs("xingming")=trim(request.form("real_name"))
rs("sex")=trim(request.form("gender"))
rs("shengr")=trim(request.form("birthday"))
rs("zhuanye")=trim(request.form("major"))
rs("xueli")=trim(request.form("educational_level"))

rs("shenfenzheng")=trim(request.form("idcard"))
rs("shengfen")=trim(request.form("native_place"))
rs("gongzuo")=trim(request.form("identity"))
if trim(request.form("school"))="" then
rs("daxue")=trim(request.form("school1"))
else
rs("daxue")=trim(request.form("school"))
end if
if web<>banquan then
response.End()
end if
rs("gaozhong")=trim(request.form("high_school"))
rs("shenghuo")=trim(request.form("address1"))
rs("jiating")=trim(request.form("address2"))
rs("tel")=trim(request.form("telephone"))
rs("shouji")=trim(request.form("mobile"))
rs("msn")=trim(request.form("msn"))
rs("qq")=trim(request.form("qq"))
rs("mail")=trim(request.form("e_mail"))
rs("tongxin")=trim(request.form("address3"))
rs("youbian")=trim(request.form("post_code"))
rs("kemu")=trim(request.form("position"))
rs("yinyue")=trim(request.form("yinyue"))
rs("zhunaye")=trim(request.form("zhuanye"))
rs("shijian")=trim(request.form("shijian"))
rs("miaoshu")=trim(request.form("miaoshu"))
rs("quyu")=trim(request.form("teach_place"))
rs("chengguo")=trim(request.form("chengguo"))
rs("xinshui")=trim(request.form("xinshui"))
rs("fangshi")=trim(request.form("fangshi"))
rs("dengji")=trim(request.form("technical_level"))
rs("xuexiao")=trim(request.form("teach_school"))
rs("jiaoling")=trim(request.form("teach_age"))
rs("xueke")=trim(request.form("teach_subject"))
rs("leibie")=trim(request.form("important_level"))
rs.update


neirong="<table width='600' height='360' border='0' cellpadding='5' cellspacing='1' bgcolor='#CCCCCC'><tr>"
neirong=neirong&"<td width='212' align='right' bgcolor='#FFFFFF'><span class='STYLE2'>教员员编号：</span></td>"
neirong=neirong&"<td width='388' bgcolor='#FFFFFF'>T"&rs("id")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&" <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>用户名：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("username")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>姓名：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xingming")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>性别：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("sex")&"</td>"
neirong=neirong&"  </tr>"
neirong=neirong&"  <tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>目前学历：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xueli")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>目前身份：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("gongzuo")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>职称等级：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("dengji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>电话：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("tel")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>手机：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("shouji")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>E_mail：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("mail")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>可教授科目：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("kemu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>在职教师：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("zhunaye")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>音乐专才：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("jqingkuang")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>自我描述：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("miaoshu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>可授课区域：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("quyu")&"</td>"
neirong=neirong&"</tr>"
neirong=neirong&"<tr>"
neirong=neirong&"<td align='right' bgcolor='#FFFFFF'><span class='STYLE2'>薪水要求：</span></td>"
neirong=neirong&"<td bgcolor='#FFFFFF'>"&rs("xinshui")&"元/小时</td>"
neirong=neirong&"</tr>"
neirong=neirong&"</table>"

dim jmail
set jmail=server.createobject("Jmail.message")
jmail.silent=true
jmail.charset="gb2312"
jmail.ContentType="text/html" 
jmail.fromname="丹江家教网" '这里是发件人名称，可以从数据库或表单中取值
jmail.from="jj0453@126.com" '这里是发件人邮箱，可以从数据库或表单中取值，但格式一定要正确
jmail.addrecipient "jj0453@126.com","网站管理员"
jmail.subject="有新教员注册了" '该值可以从数据库或表单中取值
jmail.Body=neirong

jmail.mailserverusername="jj0453" '邮件发送服务器登录名称
jmail.mailserverpassword="9911010448" '邮件发送服务器登录密码
jmail.maildomain="mail.126.com" '邮件发送服务器域名
sendok=jmail.send("smtp.126.com") 'smtp服务器名称

rs.close
set rs=nothing


response.Write "<script language=javascript>alert('您已注册成功,我们会在两个工作日内审核，通过方会显示！点击确定页面将会跳转到有问有答注册页面');window.location.href='guanli.asp';</script>"
response.End

end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>会员注册-<%= title %></title>
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
rel=stylesheet><SCRIPT src="moveloc.js" type=text/javascript></SCRIPT>
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
.background {background:#E0F5DA; width:200px;}
.style1 {	COLOR: #cc0000
}
-->
</style>
<script language="JavaScript">
<!--

function GetItemID(ObjName) //由名称得到表单序号
{
  for (var ObjID=0; ObjID < window.register.elements.length; ObjID++)
    if ( window.register.elements[ObjID].name == ObjName )
    {  return(ObjID);
       break; 
    }
  return(-1);
}
function AddItem(ObjName, DesName,FirstName,SecondName) //把左边下拉框的信息添加到右边下拉框
{
  ObjID    = GetItemID(ObjName);
  DesObjID = GetItemID(DesName);
  if (FirstName !="")
  {
   FirstID = GetItemID(FirstName);
  }
  SecondID = GetItemID(SecondName);
  j = document.register.elements[DesObjID].options.length;
  for (k=0; k<j; k++ ) {
  if (document.register.elements[DesObjID].options[k].value == "0000")
  { 
    window.alert('您已经选择了不限！');
    return;
   }
  }
  var totalSelect=10000; 
  k=0;
  i = document.register.elements[ObjID].options.length;
  if (i==0) return;
  maxsel=0;
  for (h=0; h<i; h++)
     if (document.register.elements[ObjID].options[h].selected ) {
         k=k+1;
         maxsel=h+1;
         }
  if (maxsel>=i) maxsel=0;
  if ( document.register.elements[DesObjID].length + k >totalSelect ) {
    window.alert('最多可选择'+totalSelect+'项！');
    return;
    }
  if ( ObjID != -1 && DesObjID != -1 )
  { i = document.register.elements[ObjID].options.length;
    j = document.register.elements[DesObjID].options.length;
    for (h=0; h<i; h++)
    { if (document.register.elements[ObjID].options[h].selected )
      {  
	    if (FirstName !="")
		{ 
         Text = document.register.elements[ObjID].options[h].text;
         }
		 else
		 {
         Text = document.register.elements[ObjID].options[h].text;
		 }
		 Code = document.register.elements[ObjID].options[h].value;
         K_Select = false;
		 if (Code=="")
		 {
		   K_Select = true;
		   window.alert('请先选择选项再点击添加！');
           return;
		 }
		 else
		{
		 j = document.register.elements[DesObjID].options.length;
         for (k=0; k<j; k++ ) {
           if (document.register.elements[DesObjID].options[k].value == Code)
           { 
		    K_Select = true; 
		    window.alert('您已选择了该项！');
            return;
           }
		   else
		  {
		    if (document.register.elements[DesObjID].options[k].value == Code.substr(0,4))
            { 
			 K_Select = true; 
		     window.alert('您已选择了该项所在类别的不限！');
             return;
            }
			else
			{
			  if (document.register.elements[DesObjID].options[k].value.substr(0,4) == Code)
             {
			  K_Select = true;  
		      window.alert('您已选择了该项所在类别中的子项！');
              return;
             }
			}
		  } 
         }
		 }
         if ( K_Select == false)
         { document.register.elements[DesObjID].options[j] = new Option(Text, Code);
         }
         document.register.elements[ObjID].options[h].selected =false;
       }
    }
    document.register.elements[ObjID].options[maxsel].selected =true;
  }
}
function DelItem(ObjName)  ////把右边下拉框的信息删除
{
  ObjID = GetItemID(ObjName);
  min_sel=0;
  if ( ObjID != -1 )
  {
    for (i=window.register.elements[ObjID].length-1; i>=0; i--)
    {  if (window.register.elements[ObjID].options[i].selected)
       { 
          if (min_sel==0 || i<min_sel)
            min_sel=i;
          window.register.elements[ObjID].options[i] = null;
       }
    }
    i=window.register.elements[ObjID].length;

    if (i>0)  {
        if (min_sel>=i)
           min_sel=i-1;
        window.register.elements[ObjID].options[min_sel].selected=true;
        }
  }
}
function GetItemvalue(ObjName)  //得到下拉框所有选项的值
{ 
  ObjID = GetItemID(ObjName);
  Itemvalue="" ;
  i = document.register.elements[ObjID].options.length;
  for (h=0; h<i; h++) 
  {
   if (h==0)
   {
    Itemvalue=document.register.elements[ObjID].options[h].value;
   }
   else
   {
    Itemvalue=Itemvalue+","+document.register.elements[ObjID].options[h].value;
   }
  }
  return (Itemvalue);
}
function Juge(theForm)
{
document.register.teach_place.value="";//初始化
for(i=0;i<document.register.SecondTeachPlace.length;i++)
 {
	document.register.teach_place.value=document.register.teach_place.value+document.register.SecondTeachPlace.options[i].value+",";
	if(i>18)
	 {
	 alert("您选择的授课区域超过了18个！请适当删除部分区域！");
	 return (false);
	 }
 }
  theForm.position.value=GetItemvalue("tempposition");
  if(document.register.real_name.value=="")
{
alert("请填写真实姓名！")
document.register.real_name.focus();
return (false);
}

 else if(document.register.idcard.value=="")
 {
	 alert("请填写 身份证/护照 号码！")
	 document.register.idcard.focus();
	 return (false);
 }
 else if(document.register.birthday.value=="")
 {
	 alert("请选择出生年份！")
	 document.register.birthday.focus();
	 return (false);
 }
 else if(document.register.educational_level.value=="")
 {
	 alert("请选择目前学历！")
	 document.register.educational_level.focus();
	 return (false);
 }
 else if(document.register.identity.value=="")
 {
	 alert("请选择目前身份！")
	 document.register.identity.focus();
	 return (false);
 }
else if(document.register.native_place.value=="")
 {
	 alert("请选择出生地省份或国家！")
	 document.register.native_place.focus();
	 return (false);
 }
 else if(document.register.major.value=="")
 {
	 alert("请填写所学专业！")
	 document.register.major.focus();
	 return (false);
 }
 else if(document.register.school.value=="" && document.register.school1.value=="")
 {
	 alert("请选择在读高校！")
	 document.register.school.focus();
	 return (false);
 }
  
 else if(document.register.telephone.value=="")
 {
	 alert("请详细填写您的联系电话！")
	 document.register.telephone.focus();
	 return (false);
 }
 else if(document.register.e_mail.value=="")
 {
	 alert("请检查E_mail地址是否填写正确！")
	 document.register.e_mail.focus();
	 return (false);
 }
  else if(document.register.address1.value=="")
 {
	 alert("请您填写您的生活住所")
	 document.register.address1.focus();
	 return (false);
  }
  else if(document.register.address3.value=="")
 {
	 alert("请您填写通信地址！")
	 document.register.address3.focus();
	 return (false);
  }
    else if(document.register.post_code.value=="")
 {
	 alert("请您填写通信邮编！")
	 document.register.post_code.focus();
	 return (false);
  }
  else if(document.register.position.value=="")
 {
	 alert("请选择您的可教授科目！");
	 return (false);
 }
 if(document.register.shijian.value=="")
 {
	 alert("   可授课时间爱你不能为空！")
	 document.register.shijian.focus();
	 return (false);
 } 
if(document.register.miaoshu.value=="")
 {
	 alert("   自我描述不能为空！")
	 document.register.miaoshu.focus();
	 return (false);
 }   
 if(document.register.teach_place.value=="")
 {
	 alert("   可授课区域不能为空！")
	 document.register.teach_place.focus();
	 return (false);
 }  
  if(document.register.xinshui.value=="")
 {
	 alert("   薪水要求不能为空！")
	 document.register.xinshui.focus();
	 return (false);
 }
  
    
return (true);
}
-->
</script>
<iframe height=0 width=0 src="" id="mainpositionframe"></iframe>
<iframe height=0 width=0 src="" id="positionframe"></iframe>
<iframe height=0 width=0 src="" id="capitalframe"></iframe>
<iframe height=0 width=0 src="" id="cityframe"></iframe>
<iframe height=0 width=0 src="" id="professionframe"></iframe>
</HEAD>
<BODY>

<!--#include file = "top.asp"-->

<table width="980" height="95" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" background="images/top_2_1.gif"></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td valign="top" bgcolor="#FFFFFF">
	
	<FORM name=register onSubmit="return Juge(this)" 
action=zhuce1.asp method=post>
      <table width="930" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="712" align="left" valign="top"><table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
            <tr>
              <td width="16" height="87">&nbsp;</td>
              <td width="694" class="STYLE10 spacing1"><img src="images/huiyuan.gif" width="345" height="85" /></td>
            </tr>
          </table>
                <div style="height:12px"></div>
            <table width="712" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="60"><div align="center" class="px14"><strong>新教员注册第三步: 填写个人基本信息</strong>
                      <input name="name" type="hidden" id="name" value="<%= trim(request.form("name")) %>">
                      <input name="password" type="hidden" id="password" value="<%= trim(request.form("password")) %>">
                      <input name="flag" type="hidden" id="flag" value="<%= flag %>">
</div></td>
                  </tr>
                  <tr>
                    <td height="87"><TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
                      <TBODY>
                        
                        <TR>
                          <TD vAlign=top align=middle width=700><TABLE cellSpacing=2 cellPadding=0 width="99%" align=center border=0>
                              <TBODY>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30 colspan="4"><TABLE width="100%" height=80 
      border=0 cellPadding=0 cellSpacing=1 bgColor=#cccccc>
                                        <TBODY>
                                          <TR>
                                            <TD vAlign=center background=images/beijin1.gif bgColor=#f3f3f3><DIV class=asho_link_9 align=center><FONT class=buleo2_link_9 
            color=#ff3300>您所填信息越详细就越有利于检索，也就越容易获得学员的预约<BR>
                                              所以请您务必如实、详尽地填写以下各拦。其中红色星号（</FONT><SPAN 
            class=redo_link_10><FONT color=#ff3300>*</FONT></SPAN><FONT 
            class=buleo2_link_9 color=#ff3300>）为必填</FONT><BR>
                                            </DIV></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD width="15%" height=30><DIV align=right><FONT color=#ff0000>*</FONT>真实姓名：</DIV></TD>
                                    <TD colSpan=3 align="left"><INPUT id=real_name maxLength=15 size=15 
            name=real_name>
                                        <SPAN 
            class=buleo2_link_9>注意：出于隐私考虑，本网将只显示您的姓，如“王海波”只显示为“王教员”</SPAN></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>性别：</DIV></TD>
                                    <TD width="34%" align="left" bgcolor="#d7ecff"><INPUT type=radio CHECKED value=男 name=gender>
                                      男
                                      <INPUT type=radio value=女 name=gender>
                                      女</TD>
                                    <TD width="22%"><DIV align=right><FONT color=#ff0000>*</FONT>出生年份：</DIV></TD>
                                    <TD width="29%" height=25 align="left"><SELECT id=select19 size=1 name=birthday>
                                        <OPTION value="" selected>选择年份</OPTION>
                                        <OPTION 
              value=1930>1930</OPTION>
                                        <OPTION value=1931>1931</OPTION>
                                        <OPTION 
              value=1932>1932</OPTION>
                                        <OPTION value=1933>1933</OPTION>
                                        <OPTION 
              value=1934>1934</OPTION>
                                        <OPTION value=1935>1935</OPTION>
                                        <OPTION 
              value=1936>1936</OPTION>
                                        <OPTION value=1937>1937</OPTION>
                                        <OPTION 
              value=1938>1938</OPTION>
                                        <OPTION value=1939>1939</OPTION>
                                        <OPTION 
              value=1940>1940</OPTION>
                                        <OPTION value=1941>1941</OPTION>
                                        <OPTION 
              value=1942>1942</OPTION>
                                        <OPTION value=1943>1943</OPTION>
                                        <OPTION 
              value=1944>1944</OPTION>
                                        <OPTION value=1945>1945</OPTION>
                                        <OPTION 
              value=1946>1946</OPTION>
                                        <OPTION value=1947>1947</OPTION>
                                        <OPTION 
              value=1948>1948</OPTION>
                                        <OPTION value=1949>1949</OPTION>
                                        <OPTION 
              value=1950>1950</OPTION>
                                        <OPTION value=1951>1951</OPTION>
                                        <OPTION 
              value=1952>1952</OPTION>
                                        <OPTION value=1953>1953</OPTION>
                                        <OPTION 
              value=1954>1954</OPTION>
                                        <OPTION value=1955>1955</OPTION>
                                        <OPTION 
              value=1956>1956</OPTION>
                                        <OPTION value=1957>1957</OPTION>
                                        <OPTION 
              value=1958>1958</OPTION>
                                        <OPTION value=1959>1959</OPTION>
                                        <OPTION 
              value=1960>1960</OPTION>
                                        <OPTION value=1961>1961</OPTION>
                                        <OPTION 
              value=1962>1962</OPTION>
                                        <OPTION value=1963>1963</OPTION>
                                        <OPTION 
              value=1964>1964</OPTION>
                                        <OPTION value=1965>1965</OPTION>
                                        <OPTION 
              value=1966>1966</OPTION>
                                        <OPTION value=1967>1967</OPTION>
                                        <OPTION 
              value=1968>1968</OPTION>
                                        <OPTION value=1969>1969</OPTION>
                                        <OPTION 
              value=1970>1970</OPTION>
                                        <OPTION value=1971>1971</OPTION>
                                        <OPTION 
              value=1972>1972</OPTION>
                                        <OPTION value=1973>1973</OPTION>
                                        <OPTION 
              value=1974>1974</OPTION>
                                        <OPTION value=1975>1975</OPTION>
                                        <OPTION 
              value=1976>1976</OPTION>
                                        <OPTION value=1977>1977</OPTION>
                                        <OPTION 
              value=1978>1978</OPTION>
                                        <OPTION value=1979>1979</OPTION>
                                        <OPTION 
              value=1980>1980</OPTION>
                                        <OPTION value=1981>1981</OPTION>
                                        <OPTION 
              value=1982>1982</OPTION>
                                        <OPTION value=1983>1983</OPTION>
                                        <OPTION 
              value=1984>1984</OPTION>
                                        <OPTION value=1985>1985</OPTION>
                                        <OPTION 
              value=1986>1986</OPTION>
                                        <OPTION value=1987>1987</OPTION>
                                        <OPTION 
              value=1988>1988</OPTION>
                                        <OPTION value=1989>1989</OPTION>
                                        <OPTION 
              value=1990>1990</OPTION>
                                        <OPTION value=1991>1991</OPTION>
                                        <OPTION 
              value=1992>1992</OPTION>
                                        <OPTION value=1993>1993</OPTION>
                                        <OPTION 
              value=1994>1994</OPTION>
                                        <OPTION value=1995>1995</OPTION>
                                        <OPTION 
              value=1996>1996</OPTION>
                                        <OPTION value=1997>1997</OPTION>
                                        <OPTION 
              value=1998>1998</OPTION>
                                        <OPTION value=1999>1999</OPTION>
                                        <OPTION 
              value=2000>2000</OPTION>
                                        <OPTION value=2001>2001</OPTION>
                                        <OPTION 
              value=2002>2002</OPTION>
                                        <OPTION value=2003>2003</OPTION>
                                        <OPTION 
              value=2004>2004</OPTION>
                                        <OPTION value=2005>2005</OPTION>
                                        <OPTION 
              value=2006>2006</OPTION>
                                        <OPTION value=2007>2007</OPTION>
                                        <OPTION 
              value=2008>2008</OPTION>
                                        <OPTION value=2009>2009</OPTION>
                                        <OPTION 
              value=2010>2010</OPTION>
                                    </SELECT></TD>
                                </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD bgColor=#eef7ff height=30><DIV align=right><FONT color=#ff0000>*</FONT>专业：</DIV></TD>
                                    <TD align="left" bgcolor="#eef7ff"><INPUT id=major22 maxLength=30 size=18 name=major>
                                      </TD>
                                    <TD><DIV align=right><FONT color=#ff0000>*</FONT>目前学历：</DIV></TD>
                                    <TD align="left"><SELECT id=select2 size=1 name=educational_level>
                                        <OPTION 
              value="" selected>选择学历</OPTION>
                                        <OPTION value=大专以下>大专以下</OPTION>
                                        <OPTION value=大专在读>大专在读</OPTION>
                                        <OPTION value=大专毕业>大专毕业</OPTION>
                                        <OPTION value=本科在读>本科在读</OPTION>
                                        <OPTION value=本科毕业>本科毕业</OPTION>
                                        <OPTION value=硕士在读>硕士在读</OPTION>
                                        <OPTION value=硕士毕业>硕士毕业</OPTION>
                                        <OPTION value=博士在读>博士在读</OPTION>
                                        <OPTION 
            value=博士毕业>博士毕业</OPTION>
                                    </SELECT></TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>身份证/护照：</DIV></TD>
                                    <TD colSpan=3 align="left"><INPUT id=idcard22 maxLength=40 size=30 name=idcard>
                                        <FONT color=#cc0000>(此项将严格保密，不对外公开)</FONT>
                                        <DIV align=right></DIV></TD>
                                </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30><DIV align=right><FONT color=#ff0000>*</FONT>出生地省份：</DIV></TD>
                                    <TD align="left"><SELECT id=select20 size=1 name=native_place>
                                        <OPTION value="" 
              selected>请选择</OPTION>
                                        <OPTION value=北京>北京</OPTION>
                                        <OPTION 
              value=天津>天津</OPTION>
                                        <OPTION 
              value=上海>上海</OPTION>
                                      <OPTION 
              value=重庆>重庆</OPTION>
                                        <OPTION value=安徽>安徽</OPTION>
                                        <OPTION 
              value=江苏>江苏</OPTION>
                                        <OPTION value=浙江>浙江</OPTION>
                                        <OPTION 
              value=福建>福建</OPTION>
                                        <OPTION value=甘肃>甘肃</OPTION>
                                        <OPTION 
              value=广西>广西</OPTION>
                                        <OPTION value=广西>广西</OPTION>
                                        <OPTION 
              value=贵州>贵州</OPTION>
                                        <OPTION value=海南>海南</OPTION>
                                        <OPTION 
              value=河北>河北</OPTION>
                                        <OPTION value=江西>江西</OPTION>
                                        <OPTION 
              value=黑龙江>黑龙江</OPTION>
                                        <OPTION value=湖北>湖北</OPTION>
                                        <OPTION 
              value=湖南>湖南</OPTION>
                                        <OPTION value=吉林>吉林</OPTION>
                                        <OPTION 
              value=江西>江西</OPTION>
                                        <OPTION value=辽宁>辽宁</OPTION>
                                        <OPTION 
              value=内蒙>内蒙</OPTION>
                                        <OPTION value=宁厦>宁厦</OPTION>
                                        <OPTION 
              value=青海>青海</OPTION>
                                        <OPTION value=山东>山东</OPTION>
                                        <OPTION 
              value=山西>山西</OPTION>
                                        <OPTION value=陕西>陕西</OPTION>
                                        <OPTION 
              value=四川>四川</OPTION>
                                        <OPTION value=西藏>西藏</OPTION>
                                        <OPTION 
              value=香港>香港</OPTION>
                                        <OPTION value=新疆>新疆</OPTION>
                                        <OPTION 
              value=云南>云南</OPTION>
                                    </SELECT>
                                        <FONT 
          color=#cc0000>（并非指当前所在地）</FONT></TD>
                                    <TD><DIV align=right><FONT color=#ff0000>*</FONT>目前身份：</DIV></TD>
                                    <TD align="left"><% If flag=4 Then %>
                                        <INPUT id=identity maxLength=15 size=15 
            name=identity>
                                      
                                      <% Else %>
                                      <select name=select class=regist-select id="select">
                                        <% If flag=1 Then %>
                                        <option value="" selected>学生选择身份</option>
                                        <option value=专科>专科</option>
                                        <option 
    value=本科一年级>本科一年级</option>
                                        <option value=本科二年级>本科二年级</option>
                                        <option 
    value=本科三年级>本科三年级</option>
                                        <option value=本科四年级>本科四年级</option>
                                        <option 
    value=本科毕业>本科毕业</option>
                                        <option value=硕士>硕士</option>
                                        <option 
    value=博士>博士</option>
                                        <% End If %>
                                        <% If flag=3 Then %>
                                        <option value="">教师选择如下选项</option>
                                        <option 
    value=在职小学教师>在职小学教师</option>
                                        <option value=专职小学教师>专职小学教师</option>
                                        <option 
    value=在职初中教师>在职初中教师</option>
                                        <option value=专职初中教师>专职初中教师</option>
                                        <option 
    value=在职高中教师>在职高中教师</option>
                                        <option value=专职高中教师>专职高中教师</option>
                                        <option 
    value=培训机构教师>培训机构教师</option>
                                        <option value=幼儿教师>幼儿教师</option>
                                        <option 
    value=大学教师>在职大学教师</option>
                                        <% End If %>
                                       
                                      </select>
                                      <% End If %></TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>毕业/就读高校</TD>
                                    <TD colSpan=3 align="left" bgColor=#d7ecff><SELECT id=school size=1 name=school>
                                        <OPTION value="" selected>选择高校</OPTION>
                                        <%	
					  dw1="院校"				
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
                                      </SELECT>
                                        <SPAN 
            class=red_link_9>若左边没有</SPAN>则填写下框
                                    <INPUT id=school1 maxLength=30 
            size=25 name=school1></TD>
                                  </TR>
                                  <% If flag=1 Then %>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>高中母校：</TD>
                                    <TD colSpan=3 align="left"><INPUT maxLength=40 name=high_school>
                                    请填<FONT 
            color=#ff0000>全称</FONT>！</TD>
                                  </TR>
                                  <% End If %>
                                  <% If flag=3 Then %>
                                  <TR bgColor=#eef7ff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>职称等级：</TD>
                                    <TD align="left"><SELECT id=technical_level size=1 name=technical_level>
                                        <OPTION value="" selected>请选择职称等级</OPTION>
                                        <OPTION 
              value=尚无职称等级>尚无职称等级</OPTION>
                                        <OPTION value=幼儿教师>幼儿教师</OPTION>
                                        <OPTION value=小学二级教师>小学二级教师</OPTION>
                                        <OPTION 
              value=小学一级教师>小学一级教师</OPTION>
                                        <OPTION value=小学高级教师>小学高级教师</OPTION>
                                        <OPTION value=小学特级教师>小学特级教师</OPTION>
                                        <OPTION 
              value=中学二级教师>中学二级教师</OPTION>
                                        <OPTION value=中学一级教师>中学一级教师</OPTION>
                                        <OPTION value=中学高级教师>中学高级教师</OPTION>
                                        <OPTION 
              value=中学特级教师>中学特级教师</OPTION>
                                        <OPTION value=大学助教>大学助教</OPTION>
                                        <OPTION value=大学讲师>大学讲师</OPTION>
                                        <OPTION value=副教授>副教授</OPTION>
                                        <OPTION value=正教授>正教授</OPTION>
                                    </SELECT>                                    </TD>
                                    <TD><FONT color=#ff0000>*</FONT>(最后)任职学校：</TD>
                                    <TD align="left"><INPUT id=teach_school maxLength=30 name=teach_school>
                                        </TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=30><FONT color=#ff0000>*</FONT>教龄：</TD>
                                    <TD align="left" bgColor=#d7ecff><SELECT id=teach_age size=1 name=teach_age>
                                        <OPTION value=0 selected>0</OPTION>
                                        <OPTION value=1>1</OPTION>
                                        <OPTION value=2>2</OPTION>
                                        <OPTION value=3>3</OPTION>
                                        <OPTION 
              value=4>4</OPTION>
                                        <OPTION value=5>5</OPTION>
                                        <OPTION 
              value=6>6</OPTION>
                                        <OPTION value=7>7</OPTION>
                                        <OPTION 
              value=8>8</OPTION>
                                        <OPTION value=9>9</OPTION>
                                        <OPTION 
              value=10>10</OPTION>
                                        <OPTION value=11>11</OPTION>
                                        <OPTION 
              value=12>12</OPTION>
                                        <OPTION value=13>13</OPTION>
                                        <OPTION 
              value=14>14</OPTION>
                                        <OPTION value=15>15</OPTION>
                                        <OPTION 
              value=16>16</OPTION>
                                        <OPTION value=17>17</OPTION>
                                        <OPTION 
              value=18>18</OPTION>
                                        <OPTION value=19>19</OPTION>
                                        <OPTION 
              value=20>20</OPTION>
                                        <OPTION value=21>21</OPTION>
                                        <OPTION 
              value=22>22</OPTION>
                                        <OPTION value=23>23</OPTION>
                                        <OPTION 
              value=24>24</OPTION>
                                        <OPTION value=25>25</OPTION>
                                        <OPTION 
              value=26>26</OPTION>
                                        <OPTION value=27>27</OPTION>
                                        <OPTION 
              value=28>28</OPTION>
                                        <OPTION value=29>29</OPTION>
                                        <OPTION 
              value=30>30</OPTION>
                                        <OPTION value=31>31</OPTION>
                                        <OPTION 
              value=32>32</OPTION>
                                        <OPTION value=33>33</OPTION>
                                        <OPTION 
              value=34>34</OPTION>
                                        <OPTION value=35>35</OPTION>
                                        <OPTION 
              value=36>36</OPTION>
                                        <OPTION value=37>37</OPTION>
                                        <OPTION 
              value=38>38</OPTION>
                                        <OPTION value=39>39</OPTION>
                                        <OPTION 
              value=40>40</OPTION>
                                        <OPTION value=41>41</OPTION>
                                        <OPTION 
              value=42>42</OPTION>
                                        <OPTION value=43>43</OPTION>
                                        <OPTION 
              value=44>44</OPTION>
                                        <OPTION value=45>45</OPTION>
                                        <OPTION 
              value=46>46</OPTION>
                                        <OPTION value=47>47</OPTION>
                                        <OPTION 
              value=48>48</OPTION>
                                        <OPTION value=49>49</OPTION>
                                        <OPTION 
              value=50>50</OPTION>
                                        <OPTION value=51>51</OPTION>
                                        <OPTION 
              value=52>52</OPTION>
                                        <OPTION value=53>53</OPTION>
                                        <OPTION 
              value=54>54</OPTION>
                                        <OPTION value=55>55</OPTION>
                                        <OPTION 
              value=56>56</OPTION>
                                        <OPTION value=57>57</OPTION>
                                        <OPTION 
              value=58>58</OPTION>
                                        <OPTION value=59>59</OPTION>
                                        <OPTION 
              value=60>60</OPTION>
                                    </SELECT>                                    </TD>
                                    <TD bgColor=#d7ecff><FONT color=#ff0000>*</FONT>任教学科：</TD>
                                    <TD align="left" bgColor=#d7ecff><SELECT id=teach_subject size=1 
            name=teach_subject>
                                        <OPTION value="" selected>选择任教学科</OPTION>
                                        <OPTION value=学前教育>学前教育</OPTION>
                                        <OPTION value=英语>英语</OPTION>
                                        <OPTION value=语文>语文</OPTION>
                                        <OPTION value=数学>数学</OPTION>
                                        <OPTION 
              value=物理>物理</OPTION>
                                        <OPTION value=化学>化学</OPTION>
                                        <OPTION 
              value=奥数>奥数</OPTION>
                                        <OPTION value=生物>生物</OPTION>
                                        <OPTION 
              value=地理>地理</OPTION>
                                        <OPTION value=历史>历史</OPTION>
                                        <OPTION 
              value=政治>政治</OPTION>
                                        <OPTION value=体育>体育</OPTION>
                                        <OPTION 
              value=音乐>音乐</OPTION>
                                        <OPTION value=美术>美术</OPTION>
                                        <OPTION 
              value=高等数学>高等数学</OPTION>
                                        <OPTION value=普通话>普通话</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=日语>日语</OPTION>
                                        <OPTION 
              value=法语>法语</OPTION>
                                        <OPTION value=德语>德语</OPTION>
                                        <OPTION 
              value=韩语>韩语</OPTION>
                                        <OPTION value=俄语>俄语</OPTION>
                                        <OPTION 
              value=希腊语>希腊语</OPTION>
                                        <OPTION value=瑞典语>瑞典语</OPTION>
                                        <OPTION 
              value=荷兰语>荷兰语</OPTION>
                                        <OPTION value=意大利语>意大利语</OPTION>
                                        <OPTION 
              value=西班牙语>西班牙语</OPTION>
                                        <OPTION value=葡萄牙语>葡萄牙语</OPTION>
                                        <OPTION 
              value=阿拉伯语>阿拉伯语</OPTION>
                                        <OPTION value=乌克兰语>乌克兰语</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=摄影>摄影</OPTION>
                                        <OPTION 
              value=书法>书法</OPTION>
                                        <OPTION value=舞蹈>舞蹈</OPTION>
                                        <OPTION 
              value=声乐>声乐</OPTION>
                                        <OPTION value=钢琴>钢琴</OPTION>
                                        <OPTION 
              value=电子琴>电子琴</OPTION>
                                        <OPTION value=小提琴>小提琴</OPTION>
                                        <OPTION 
              value=大提琴>大提琴</OPTION>
                                        <OPTION value=长笛>长笛</OPTION>
                                        <OPTION 
              value=吉它>吉它</OPTION>
                                        <OPTION value=手风琴>手风琴</OPTION>
                                        <OPTION 
              value=萨克斯>萨克斯</OPTION>
                                        <OPTION value=单簧管>单簧管</OPTION>
                                        <OPTION 
              value=双簧管>双簧管</OPTION>
                                        <OPTION value=打击乐>打击乐</OPTION>
                                        <OPTION 
              value=小号>小号</OPTION>
                                        <OPTION value=大号>大号</OPTION>
                                        <OPTION 
              value=圆号>圆号</OPTION>
                                        <OPTION value=打击乐>打击乐</OPTION>
                                        <OPTION 
              value=二胡>二胡</OPTION>
                                        <OPTION value=笛子>笛子</OPTION>
                                        <OPTION 
              value=琵琶>琵琶</OPTION>
                                        <OPTION value=古筝>古筝</OPTION>
                                        <OPTION 
              value=唢呐>唢呐</OPTION>
                                        <OPTION value=笙>笙</OPTION>
                                        <OPTION 
              value=扬琴>扬琴</OPTION>
                                        <OPTION value=柳琴>柳琴</OPTION>
                                        <OPTION 
              value=中阮>中阮</OPTION>
                                        <OPTION value=古琴>古琴</OPTION>
                                        <OPTION 
              value=三弦>三弦</OPTION>
                                        <OPTION value=板胡>板胡</OPTION>
                                        <OPTION 
              value=""></OPTION>
                                        <OPTION value=计算机>计算机</OPTION>
                                        <OPTION 
              value=数据库>数据库</OPTION>
                                        <OPTION value=网页设计与制作>网页设计与制作</OPTION>
                                        <OPTION value=Linux或Unix>Linux或Unix</OPTION>
                                        <OPTION 
              value=图像处理软件>图像处理软件</OPTION>
                                        <OPTION value=动画制作>动画制作</OPTION>
                                        <OPTION value=程序设计>程序设计</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=围棋>围棋</OPTION>
                                        <OPTION value=中国象棋>中国象棋</OPTION>
                                        <OPTION value=国际象棋>国际象棋</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=中国武术>中国武术</OPTION>
                                        <OPTION value=气功>气功</OPTION>
                                        <OPTION value=跆拳道>跆拳道</OPTION>
                                        <OPTION value=空手道>空手道</OPTION>
                                        <OPTION value=瑜珈>瑜珈</OPTION>
                                        <OPTION value=滑冰旱冰>滑冰旱冰</OPTION>
                                        <OPTION value=游泳>游泳</OPTION>
                                        <OPTION value=乒乓球>乒乓球</OPTION>
                                        <OPTION value=羽毛球>羽毛球</OPTION>
                                        <OPTION value=网球>网球</OPTION>
                                        <OPTION value=""></OPTION>
                                        <OPTION value=其他学科>其他学科</OPTION>
                                    </SELECT>
                                       </TD>
                                </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#eef7ff height=30><FONT color=#ff0000>*</FONT>任职年级：</TD>
                                    <TD colSpan=3 align="left" bgColor=#eef7ff><SELECT id=important_level size=1 
            name=important_level>
                                        <OPTION value="" selected>选择任教学科</OPTION>
                                        <OPTION value=学前>学前</OPTION>
                                        <OPTION value=一年级>一年级</OPTION>
										<OPTION value=二年级>二年级</OPTION>
                                        <OPTION value=三年级>三年级</OPTION>
										<OPTION value=四年级>四年级</OPTION>
										<OPTION value=五年级>五年级</OPTION>
										<OPTION value=六年级>六年级</OPTION>
										<OPTION value=七年级>七年级</OPTION>
										<OPTION value=八年级>八年级</OPTION>
										<OPTION value=九年级>九年级</OPTION>
										<OPTION value=高一>高一</OPTION>
										<OPTION value=高二>高二</OPTION>
										<OPTION value=高三>高三</OPTION>
                                      </SELECT>
                                        <SPAN 
            class=style1>请如实填写！以工作证或聘书为准！</SPAN></TD>
                                </TR>
                                  <% End If %>
                              </TBODY>
                              </TABLE>
                            <BR>
                              <TABLE cellSpacing=2 cellPadding=5 width="99%" align=center border=0>
                                <TBODY>
                                  <TR bgColor=#5881d6 background="images/hen6.gif">
                                    <TD colSpan=4 height=30><DIV class=white_link_9 align=center><STRONG><FONT color=#ffffff>联 系 
                                      方 式</FONT></STRONG></DIV></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>生活住所：</DIV></TD>
                                    <TD align="left"><font 
                        color=#ffffff>
                                      <select class=input_text id=address1 
                        name=address1>
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
                                    </font></TD>
                                    <TD bgColor=#d7ecff><DIV align=right>家庭住所: </DIV></TD>
                                    <TD align="left"><font 
                        color=#ffffff>
                                      <select class=input_text id=address2 
                        name=address2>
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
                                    </font></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD bgColor=#eef7ff height=25><DIV align=right><FONT color=#ff0000>*</FONT>电话：</DIV></TD>
                                    <TD align="left"><DIV align=left>
                                      <INPUT maxLength=80 size=30 name=telephone>
                                        </DIV></TD>
                                    <TD bgColor=#eef7ff><DIV align=right>手机：</DIV></TD>
                                    <TD align="left"><INPUT maxLength=32 size=15 name=mobile></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD width="14%" bgColor=#d7ecff height=25><DIV align=right>MSN：</DIV></TD>
                                    <TD width="32%" align="left"><DIV align=left>
                                      <INPUT id=msn name=msn>
                                    </DIV></TD>
                                    <TD width="16%" bgColor=#d7ecff><DIV align=right>QQ:</DIV></TD>
                                    <TD width="38%" align="left"><DIV align=left>
                                      <INPUT id=qq name=qq>
                                    </DIV></TD>
                                  </TR>
                                  <TR bgColor=#eef7ff>
                                    <TD height=25><DIV align=right><FONT color=#ff0000>*</FONT>E_mail：</DIV></TD>
                                    <TD colSpan=3 align="left"><DIV align=left>
                                      <INPUT maxLength=50 size=28 name=e_mail>
                                      (<FONT 
            color=#cc0000>为通知合适您的家教及找回密码，请认真填写</FONT>)</DIV></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><DIV align=right><FONT color=#ff0000>*</FONT>通信地址<BR>
                                    </DIV></TD>
                                    <TD align="left" bgColor=#d7ecff><input id=address3 name=address3>
                                      
                                   </TD><TD bgColor=#d7ecff><DIV align=right><FONT color=#ff0000>*</FONT>邮编：</DIV></TD>
                                    <TD align="left" bgColor=#d7ecff><INPUT id=post_code maxLength=6 size=12 
            name=post_code></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>可教授科目：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><TABLE cellSpacing=0 cellPadding=0 width="95%" 
                        align=right border=0>
                                        <TBODY>
                                          <TR>
                                            <TD vAlign=top width=200 height=23><select name="subposition" size="10" multiple="multiple" id="subposition" style="FONT-SIZE: 12px; WIDTH: 180px; FONT-FAMILY: 宋体">
                                                <%	
					  dw1="学科"				
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
                                              </select>                                            </TD>
                                            <TD width=48><P align="center" style="MARGIN-RIGHT: 8px">
                                                <input type="button" name="Submit" value="添加&gt;&gt;" onClick="JavaScript:AddItem('subposition', 'tempposition','','mainposition')">
                                                <BR>
                                                <BR>
                                                <input type="button" name="Submit" value="&lt;&lt;删除" onClick="JavaScript:DelItem('tempposition')">
                                            </P></TD>
                                            <TD vAlign=top align=middle width=230><select name="tempposition" size="12" multiple="multiple" id="tempposition" >
                                              </select>
                                                <font color=#000000>
                                                <input name="position" type="hidden" id="position" />
                                                <label></label>
                                              </font></TD>
                                          </TR>
                                        </TBODY>
                                      </TABLE>
                                        <label></label></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><font color=#ff0000>*</font>专业教师：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input name="zhuanye" type="radio" value="是">
                                      是 </label>
                                        <label>
                                        <input name="zhuanye" type="radio" value="否" checked>
                                          否</label></TD>
                                  </TR>
                                  <!--<TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><font color=#ff0000>*</font>音乐专才：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input type="radio" name="yinyue" value="是">
                                      是 </label>
                                        <label>
                                        <input name="yinyue" type="radio" value="否" checked>
                                          否</label></TD>
                                  </TR>-->
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>自我描述：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <textarea name="miaoshu" cols="40" rows="5" id="miaoshu"></textarea>
                                    </label></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="center"><font color=#ff0000>*</font>可授课时间：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><textarea name="shijian" cols="40" rows="5" id="shijian"></textarea></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>可授课区域：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><TABLE cellSpacing=0 cellPadding=3 width="100%" border=0>
                                        <TBODY>
                                          <TR>
                                            <TD width="15%"><select size=10 name=FirstTeachPlace>
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
                                            </select></TD>
                                            <TD width="34%"><INPUT onclick=JavaScript:addloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="选取>>>>" name=FTianJia2>
                                                <FONT 
                  color=#cc0000><BR>
                                                  (选中左侧项目点“选取”即可添加；选中右侧项目点<BR>
                                                  “删除”即可删除)</FONT><BR>
                                              <INPUT onclick=JavaScript:delloc(document.register.FirstTeachPlace,document.register.SecondTeachPlace) type=button value="<<<<删除" name=FShanChu2>
                                              <BR></TD>
                                            <TD width="51%"><SELECT multiple size=10 
                  name=SecondTeachPlace>
                                              </SELECT>
                                                <INPUT type=hidden 
                  name=teach_place></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right">家教成果<br>家教简历<br>学员评价</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><textarea name="chengguo" cols="40" rows="10" id="chengguo"></textarea></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>薪水要求：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><input name="xinshui" type="text" id="xinshui" size="30">                                      
                                      <a href="zifei.html">查看资费标准</a></TD>
                                  </TR>
                                  <TR bgColor=#d7ecff>
                                    <TD bgColor=#d7ecff height=50><div align="right"><FONT color=#ff0000>*</FONT>可辅导方式：</div></TD>
                                    <TD colspan="3" align="left" bgColor=#d7ecff><label>
                                      <input name="fangshi" type="radio" value="本人上门" checked>
                                      本人上门
                                      <input type="radio" name="fangshi" value="学生上门">
                                      学生上门
                                      <input type="radio" name="fangshi" value="网上辅导">
                                      网上辅导
                                      <input type="radio" name="fangshi" value="小班辅导">
                                      小班辅导</label></TD>
                                  </TR>
                                </TBODY>
                              </TABLE>
                            <BR>
                            <BR>
                            <input name="imageField22" style="border:0" type="image" src="images/reg_1_2.gif" alt="下一步" width="345" height="41" />
                            <input type="hidden" name="acction" value="acction">
                              <BR>
                            <BR>
                            <BR></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
                  </tr>
            </table></td>
          <td width="12"></td>
          <td width="206" valign="top"><table width="206" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">
            <tr>
              <td><div align="center">
                <table width="190" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>&nbsp;</td>
                    <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13"><strong>我们的服务优势</strong></div></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
              </div></td>
            </tr>
            <tr>
              <td height="10"></td>
            </tr>
            <tr>
              <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                <TBODY>
                  <TR>
                    <TD height=10></TD>
                  </TR>
                  <% 	 
dw2="我们的服务优势"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                  <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                    <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                      <% End If %>
                    </A></TD>
                  </TR>
                  <TR>
                    <TD height=1 align="left" bgColor=#ebecee></TD>
                  </TR>
                  <%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		rs.close
		set rs=nothing
 %>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                </TBODY>
              </TABLE></td>
            </tr>
          </table>
                <table width="206" style=" border:1px solid #EBECEE; margin-top:12px" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><div align="center">
                        <table width="190" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;</td>
                            <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13">
                                <div align="center"><strong>做家教常用文档</strong></div>
                            </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=10></TD>
                        </TR>
                        <% 	 
dw2="做家教常用文档"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                        <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                          <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                            <% End If %>
                          </A></TD>
                        </TR>
                        <TR>
                          <TD height=1 align="left" bgColor=#ebecee></TD>
                        </TR>
                        <%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		rs.close
		set rs=nothing
 %>
                        <TR>
                          <TD height=12></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
                  </tr>
                </table>
            <table width="206" style=" border:1px solid #EBECEE; margin-top:12px" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><div align="center">
                        <table width="190" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td>&nbsp;</td>
                            <td width="167" height="29" background="images/t_green.gif"><div align="center" class="spacing1 white px13">
                                <div align="center"><strong>做 家 教 秘 笈</strong></div>
                            </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td height="20"><TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=10></TD>
                        </TR>
                        <% 	 
dw2="做家教秘笈"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                        <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                          <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>　<A class=a2 title=点击查看详细
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
...
                            <% End If %>
                          </A></TD>
                        </TR>
                        <TR>
                          <TD height=1 align="left" bgColor=#ebecee></TD>
                        </TR>
                        <%  rs.movenext  									'指向下一条记录
	if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop 
		rs.close
		set rs=nothing
 %>
                        <TR>
                          <TD height=12></TD>
                        </TR>
                      </TBODY>
                    </TABLE></td>
                  </tr>
              </table>
            <br /></td>
        </tr>
      </table>
    </form></td>
    <td width="15" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="10" background="images/top_3_2.gif">&nbsp;</td>
  </tr>
</table>
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
