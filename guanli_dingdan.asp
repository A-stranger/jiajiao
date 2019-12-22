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
          background=images/my_1_2.gif class=white_link_9><strong><strong><img src="images/my_1_4.gif" width="142" height="58" align="middle"><strong><span class="t">&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;最 新 订 单</span></strong></strong></strong></TD>
                            <TD width="4%" 
            height=56 align=right valign="middle" 
          background=images/my_1_2.gif class=white_link_9><strong><span class="t"><img src="images/my_1_3.gif" width="12" height="58"></span></strong></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                        <TABLE cellSpacing=1 cellPadding=0 width="100%" 
        border=0>
                          <TBODY>
                            <TR bgColor=#6288d9>
                              <TD width="8%" height=50 bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>订单号</DIV></TD>
                              <TD width="13%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>学员<br>
                              年级</DIV></TD>
                              <TD width="7%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>学员<br>
                              性别 </DIV></TD>
                              <TD width="19%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>求教学科 </DIV></TD>
                              <TD width="9%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>对教员<br>
                              性别要求</DIV></TD>
                              <TD width="17%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>教学方式</DIV></TD>
                              <TD width="6%" bgcolor="#f5e2bc"><div align="center"><span class="white_link_9">有无<br>
                              车贴</span></div></TD>
                              <TD width="15%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>时间</DIV></TD>
                              <TD width="6%" bgcolor="#f5e2bc"><DIV class=white_link_9 align=center>查看<br>
                              详情</DIV></TD>
                            </TR>
                            <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
strsql="select * from dingdan order by id desc"
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
                            <tr>
                              <td height="20" colspan="4"><div align="center" class="STYLE1">
                                  <div align="center">暂 无 信 息！</div>
                              </div></td>
                            </tr>
                            <% 	else %>
                            <% 
	    counts=12											
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
	    do while not rs.eof and counts>0
	   %>
                            <TR background='#FFFFFF' >
                              <TD width="8%" height=23 align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center">S<%= rs("id") %></div></TD>
                              <TD width="13%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("nianji") %></div></TD>
                              <TD width="7%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("sex") %></div></TD>
                              <TD width="19%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><span class="STYLE11">
                                  <% If rs("yuyue")<>"" Then %>
                                已经预约T<%= rs("yuyue") %>教员
                                <% End If %>
                              </span><%= rs("xueke") %></div></TD>
                              <TD 
            width="9%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("jsex") %></div></TD>
                              <TD 
            width="17%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("fangshi") %></div></TD>
                              <TD width="6%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("chetie") %></div></TD>
                              <TD width="15%" align=middle background="#FFFFFF" bgcolor="#f9f9e7"><div align="center"><%= rs("intime") %></div></TD>
                              <TD width="6%" align=center valign="middle" background="#FFFFFF" bgcolor="#f9f9e7"><A class=buleo_link_9 
            href="xueyuan_show.asp?id=<%= rs("id") %>" 
            target=_blank>查看<br>
                              详情</A></TD>
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
          height=28 valign="bottom" background=images/zhishe.gif bgColor=#f5e2bc><DIV align=center><A 
          href="javascript:location.reload()">刷新</A></DIV></TD>
                              <TD width="80%" background=images/zhishe.gif bgColor=#f5e2bc><DIV align=left>
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
