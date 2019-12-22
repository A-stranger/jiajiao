<!--#include file="conn.asp"-->
<% id=session("id") %>
<%
if session("username")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='logoin.asp';</script>"
response.End
end if
%>
<HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>教员信息管理--山东家教网家教服务</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/style.css" type=text/css rel=stylesheet>
<STYLE type=text/css>
BODY {
	MARGIN-TOP: 10px;
	BACKGROUND-IMAGE: url();
	MARGIN-BOTTOM: 20px;
	background-color: #339933;
}
.STYLE12 {color: #FFFFFF}
</STYLE>

<META content="MSHTML 6.00.2900.3132" name=GENERATOR></HEAD>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
  <TBODY>
  <TR>
    <TD width=29><IMG height=28 src="images/jiaos1.gif" 
      width=29></TD>
    <TD>&nbsp;</TD>
    <TD width=29><IMG height=28 src="images/jiaos2.gif" 
      width=29></TD></TR>
  <TR>
    <TD ></TD>
    <TD vAlign=top align=middle width=780><TABLE width="98%" height=60 
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
            </TABLE><!--#include file="top.asp"--><BR><BR>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=98><!--#include file="left.asp"-->
           </TD>
          <TD vAlign=top width=18>
            <TABLE cellSpacing=0 cellPadding=0 width=1 align=center 
            bgColor=#3366cc border=0>
              <TBODY>
              <TR>
                <TD height=400></TD></TR></TBODY></TABLE></TD>
          <TD width=664 valign="top"><TABLE cellSpacing=0 cellPadding=0 width=95% align=center bgColor=#ffffff 
border=0>
            <TBODY>
              
              <TR>
                <TD width="742" align=left vAlign=top><TABLE width=100% border=0 align="center" cellPadding=0 cellSpacing=1>
                  <TBODY>
                    <TR>
                      <TD class=white_link_9 align=middle 
          background=images/bian2.gif 
            height=28><div align="center">:::::::::<strong>资金记录</strong>:::::::::</div></TD>
                    </TR>
                  </TBODY>
                </TABLE>
                  <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#99CCCC 
        border=0>
                    <TBODY>
                      
                      <% 	 
dim counts
set rs=server.CreateObject("adodb.recordset")
strsql="select * from xinyu where userid='"&id&"' order by id desc"
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
                        <TD height="23" align=middle bgcolor="#6699FF"><div align="center"><span class="STYLE12">记录内容</span></div></TD>
                        <TD align=middle bgcolor="#6699FF"><div align="center"><span class="STYLE12">记录时间</span></div></TD>
                      </TR><% do while not rs.eof %>
                      <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#C4F1FF'">
                        <TD width="58%" height="23" align=middle bgcolor="#FFFFFF"><div align="left"> &nbsp;<%= rs("xinyu") %></div></TD>
                        <TD width="22%" align=middle bgcolor="#FFFFFF"><div align="center"><%= rs("intime") %></div></TD>
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
                  </TABLE>                  <p>&nbsp;</p></TD>
              </TR>
            </TBODY>
          </TABLE></TD>
        </TR></TBODY></TABLE><BR><BR><BR></TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>
      <DIV align=center>  </SPAN></DIV></TD>
    <TD>&nbsp;</TD>
  </TR></TBODY></TABLE></BODY></HTML>








