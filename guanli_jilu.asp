<!--#include file="conn.asp"-->
<%
if session("username")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='logoin.asp';</script>"
response.End
end if
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>会员中心-<%= title %></title>
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
.STYLE12 {color: #FFFFFF}
.STYLE14 {
	TEXT-DECORATION: none;
	font-size: 13px;
	color: #0000CC;
}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 
background=images/top_2_1.gif></TD>
    <TD vAlign=top bgColor=#ffffff><TABLE width="948" border=0 align=center cellPadding=0 cellSpacing=0 bgColor=#ffffff>
      <TBODY>
        
        <TR>
          <TD vAlign=top align=middle width=948><TABLE width="98%" height=60 
      border=0 align="center" cellPadding=0 cellSpacing=1 bgColor=#cccccc>
              <TBODY>
                <TR>
                  <TD vAlign=center background=images/beijin1.gif 
          bgColor=#f3f3f3><DIV align=center><SPAN class=buleo2_link_9>欢迎您</SPAN><SPAN 
            class=red_10><%= session("username") %></SPAN>，<SPAN 
            class=buleo2_link_9>您的教员编号是</SPAN><SPAN 
            class=red_10>T<%= session("id") %></SPAN><SPAN 
            class=buleo2_link_9>,您的简历已被浏览过</SPAN><SPAN 
            class=red_link_10><%= session("cishu") %></SPAN><SPAN 
            class=buleo2_link_9>次！</SPAN><BR>
                          <SPAN 
            class=buleo2_link_9>为了保证您的个人资料不被他人修改或窃取，请务必在离开前退出并关闭浏览器窗口！</SPAN> <BR>
                  </DIV></TD>
                </TR>
              </TBODY>
            </TABLE>
          <BR>
            <BR>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD vAlign=top width=169><!--#include file="left.asp"-->                    </TD>
                    <TD vAlign=top width=10><TABLE width=1 height="650" border=0 align=center cellPadding=0 cellSpacing=0 
            bgColor=#3366cc>
                        <TBODY>
                          <TR>
                            <TD width="1" height=400></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                    <TD width="778" align=left vAlign=top bgcolor="#ffffff"><TABLE width=100% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD width="96%" align=left valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><strong><img src="images/my_1_4.gif" width="142" height="58" align="middle"><strong><span class="t">&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;家教详细记录</span><span class="STYLE14"><a href="guanli_xjilunew.asp"> 添加新的家教记录</a></span></strong></strong></strong></TD>
                            <TD width="4%" 
            height=56 align=right valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><span class="t"><img src="images/my_1_3.gif" width="12" height="58"></span></strong></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                        <TABLE cellSpacing=0 cellPadding=0 width=95% align=center bgColor=#ffffff 
border=0>
                          <TBODY>
                            <TR>
                              <TD width="742" align=left vAlign=top><TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#99CCCC 
        border=0>
                                    <TBODY>
                                      <% 	 
dim counts
id=session("id")
set rs=server.CreateObject("adodb.recordset")
strsql="select * from jilu where userid='"&id&"' order by id desc"
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
                                      <% 	else %>
                                      <% 
	    counts=10											
		rs.pageSize =counts								
		allpages =rs.pageCount								
		page = Request("page")								    
		If not isNumeric(page) then page=1			
		if isEmpty(page) or Cint(page) < 1 then				
			page = 1  
		elseif Cint(page) >= allPages then  				'page 值大于总页数
			page = allPages   
	  	end if
	  	rs.AbsolutePage = page
	     
	   %>
                                      <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#99CCCC'">
                                        <TD align=center bgcolor="#6699FF" class="STYLE12">订单(学员编号)</TD>
                                        <TD align=center bgcolor="#6699FF" class="STYLE12">上课时间</TD>
                                        <TD align=center bgcolor="#6699FF" class="STYLE12">上课内容</TD>
                                        <TD align=center bgcolor="#6699FF" class="STYLE12">所获报酬</TD>
                                        <TD height="23" align=center bgcolor="#6699FF"><span class="STYLE12">备注</span></TD>
                                        <TD align=center bgcolor="#6699FF"><span class="STYLE12">录入时间</span></TD>
                                        
                                      </TR>
                                      <% do while not rs.eof and counts>0 %>
                                      <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#C4F1FF'">
                                        <TD width="19%" align=center bgcolor="#FFFFFF"><a href="xueyuan_show.asp?id=<%= rs("dingdan") %>" class="rose_link_9">S<%= rs("dingdan") %></a></TD>
                                        <TD width="19%" align=center bgcolor="#FFFFFF"><%= rs("shijian") %></TD>
                                        <TD width="18%" align=center bgcolor="#FFFFFF"><%= rs("neirong") %></TD>
                                        <TD width="11%" align=center bgcolor="#FFFFFF"><%= rs("baochou") %></TD>
                                        <TD width="21%" height="23" align=center bgcolor="#FFFFFF">&nbsp;<%= rs("beizhu") %></TD>
                                        <TD width="12%" align=center bgcolor="#FFFFFF"><%= rs("intime") %></TD>
                                      
                                      </TR>
                                      <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
                                                            </TABLE>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                                    <TBODY>
                                      <TR>
                                        <TD colSpan=2 height=1></TD>
                                      </TR>
                                      <TR>
                                        <TD width="20%" 
          height=28 valign="bottom" background=images/zhishe.gif bgColor=#b1c5eb><DIV align=center><A 
          href="javascript:location.reload()">刷新</A></DIV></TD>
                                        <TD width="80%" background=images/zhishe.gif bgColor=#b1c5eb><DIV align=left>
                                            <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
                                              <tr>
                                                <td height="18" class="ziti03"><div align="right" class="top">
                                                    <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"条记录 "  
if page = 1 then  											'到达第一页
	response.write "<font color=darkgray>首页 前页</font>"  
else  														'不是第一页
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1 class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=darkgray> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&" class='top'><font size=2>末页</font></a>"  
end if  

response.write "第"&page&"页 共"&allpages&"页"
%>
                                                    <%
set rs=nothing
conn.close
set conn=nothing 
%>
                                                    <%  end if %>
                                                </div></td>
                                              </tr>
                                            </table>
                                        </DIV></TD>
                                      </TR>
                                    </TBODY>
                                  </TABLE>
                                <p>&nbsp;</p></TD>
                            </TR>
                          </TBODY>
                        </TABLE>                        <p>&nbsp;</p>
                        </TD>
                  </TR>
                </TBODY>
              </TABLE>
            <BR>
            <BR>
            <BR></TD>
          </TR>
        <TR>
          <TD><DIV align=center> </SPAN></DIV></TD>
          </TR>
      </TBODY>
    </TABLE></TD>
    <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD></TR></TBODY></TABLE>
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
