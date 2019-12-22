<!--#include file = "conn.asp"-->
<% 
kemu=Trim(Request("subject"))
quyu=Trim(Request("teach_place"))
sex=Trim(Request("student_sex"))
jsex=Trim(Request("teacher_sex"))
id=Trim(Request("id"))

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>学员库-<%= title %>-本资源来自搜虎精品社区www.souho.net</title>
<META content=山东家教网-本资源来自搜虎精品社区www.souho.net name=author>
<META content="www.shandongjiajiao.net-本资源来自搜虎精品社区www.souho.net" name=copyright>
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
<TABLE cellSpacing=0 cellPadding=0 width=976 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD style="COLOR: #333333; LINE-HEIGHT: 20px" vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR>
            <TD 
          style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid"><TABLE cellSpacing=0 cellPadding=0 width=928 border=0>
              <TBODY>
                <TR>
                  <TD width=320 height=90><DIV align=center><IMG height=85 
                  src="images/xueyuan.gif" 
                  width=345></DIV></TD>
                  <TD width=174>&nbsp;</TD>
                  <TD width=174>&nbsp;</TD>
                  <TD width=260><A 
                  onclick="window.external.addFavorite('xueyuan.asp','<%= title %>')" 
                  onmouseout="window.status='<%= title %>';return true;" 
                  href="#"><IMG 
                  height=67 src="images/xyk_1.gif" 
                  width=242></A></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD height=12></TD>
          </TR>
        </TBODY>
      </TABLE>
          <TABLE cellSpacing=0 cellPadding=0 width=927 border=0>
            <FORM name=form1 action=xueyuan.asp method=post>
              <TBODY>
                <TR>
                  <TD width=7 align="right"><IMG height=54 
            src="images/jyk_1.gif" 
        width=7></TD>
                  <TD width=130 height="54" bgColor=#f5e2bc><DIV align=right>订单号：S</DIV></TD>
                  <TD width=54 bgColor=#f5e2bc><DIV align=center>
                    <INPUT name=id id="id" size=6>
                  </DIV></TD>
                  <TD width=46 bgColor=#f5e2bc><DIV align=right>科目： </DIV></TD>
                  <TD width=128 bgColor=#f5e2bc><DIV align=center>
                    <SELECT class=input_text name=subject>
                      <OPTION value="" 
                          selected>请选择家教科目</OPTION>
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
                    </SELECT>
                  </DIV></TD>
                  <TD width=50 bgColor=#f5e2bc><DIV align=right>区域：</DIV></TD>
                  <TD width=86 bgColor=#f5e2bc><DIV align=center><font 
                        color=#ffffff>
                    <select  id=teach_place 
                        name=teach_place>
                      <option value="" 
                          selected>不限</option>
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
                  <TD width=76 bgColor=#f5e2bc><DIV align=right>学员性别： </DIV></TD>
                  <TD width=75 bgColor=#f5e2bc><DIV align=center><SPAN class=0md120>
                    <SELECT class=input_text 
            id=select4 name=student_sex>
                        <OPTION value="" selected>不限</OPTION>
                        <OPTION value=男>男</OPTION>
                        <OPTION value=女>女</OPTION>
                    </SELECT>
                  </SPAN></DIV></TD>
                  <TD width=75 bgColor=#f5e2bc><DIV align=right>教员性别：</DIV></TD>
                  <TD width=93 bgColor=#f5e2bc><DIV align=center><SPAN class=0md120>
                    <SELECT class=input_text 
            id=select3 name=teacher_sex>
                        <OPTION value="" 
              selected>无要求</OPTION>
                        <OPTION value=男>男</OPTION>
                        <OPTION 
              value=女>女</OPTION>
                    </SELECT>
                  </SPAN></DIV></TD>
                  <TD width=100 bgColor=#f5e2bc><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=检索 width=64 
            src="images/search_6.gif" 
          name=imageField></TD>
                  <TD><IMG height=54 
            src="images/jyk_2.gif" 
        width=7></TD>
                </TR>
            </FORM>
        </TABLE>
        <TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=0>
            <TBODY>
              <TR>
                <TD height=12></TD>
              </TR>
            </TBODY>
        </TABLE>
        <TABLE cellSpacing=1 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR bgColor=#f5e2bc>
                <TD width=57 height=37><DIV align=center>订单编号</DIV></TD>
                <TD width=87><DIV align=center>学员年级性别</DIV></TD>
                <TD width=87><DIV align=center>求教科目</DIV></TD>
                <TD width=310><DIV align=center>
                    <DIV align=center>对教员要求(性别)</DIV>
                </DIV></TD>
                <TD width=144><DIV align=center>
                    <DIV align=center>区域</DIV>
                </DIV></TD>
                <TD width=79><DIV align=center>课时费</DIV></TD>
                <TD width=81><DIV align=center>发布时间</DIV></TD>
                <TD width=76 bgColor=#f5e2bc><DIV align=center>查看详情</DIV></TD>
              </TR>
			  <% 	 
dim counts
dw="是"
set rs=server.CreateObject("adodb.recordset")


strsql="select * from dingdan where xianshi='"&dw&"' and  xueke like '%" & kemu & "%' and dizhi like '%" & quyu & "%' and  sex like '%" & sex & "%' and  jsex like '%" & jsex & "%' order by intime desc"

if id<>"" then 
strsql="select * from dingdan where id="&id
end if
rs.open strsql,conn,1,1
if rs.eof and rs.bof then 
      %>
	        
      <tr>
        <td height="20" colspan="4" bgcolor="#99CCCC"><div align="center" class="STYLE1">
          <div align="center" class="black_12">暂 无 信 息！</div>
        </div></td>
        </tr>
		<% 	else %>
		<% 
	    counts=20											
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
	    i=0
	    do while not rs.eof and counts>0
		i=i+1
	   %>
              <TR bgColor=<% If (i mod 2) =0 Then %>
			  #f7f5dc
			  <% Else %>
			  #f9f9ec
			  <% End If %>
			  >
                <TD width=57 height=40><DIV align=center>S<%= rs("id") %></DIV></TD>
                <TD width=87><DIV align=center><%= rs("nianji") %>(<%= rs("sex") %>)</DIV></TD>
                <TD width=87><DIV align=center><%= rs("xueke") %></DIV></TD>
                <TD class=p10 width=310><%= rs("jqingkuang") %>(<%= rs("jsex") %>)
               <% if rs("zhaungtai")="已结单" then %>
			    <% response.write("<font color='#ff0000'><b>【已安排】</b></font>")%>
				 <% Else %>
                 <% response.write("<font color='#00ff00'><b>【可预约】</b></font>")%>
                   <% End If %></TD>
                <TD class=p10 width=144><%= rs("dizhi") %></TD>
                <TD width=79><DIV align=center><%= rs("baochou") %>元/小时</DIV></TD>
                <TD width=81><DIV align=center><%= rs("intime") %></DIV>
                    <DIV></DIV></TD>
                <TD width=76 ><DIV align=center><A class=blue_ 
            href="xueyuan_show.asp?id=<%= rs("id") %>" 
            target=_blank>查看<BR>
                  详情</A></DIV></TD>
              </TR>
			  <%
            counts = counts - 1  							'每页显示条数减1
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	loop  						
   %>
	<%  end if %>	
            </TBODY>
        </TABLE>
        <TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
            <TBODY>
              <TR bgColor=#f7edcd>
                <TD width=46 
          bgColor=#f7edcd height=37></TD>
                <TD class=spacing1 bgColor=#f7edcd><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD colSpan=3 height=1></TD>
                    </TR>
                    <TR>
                      <TD width="7%" 
          height=18 valign="bottom"><DIV align=center><A 
          href="javascript:location.reload()">刷新</A></DIV></TD>
                      <TD width="56%"><DIV align=left>
                          <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
                            <tr>
                              <td height="18" class="ziti03"><div align="right" class="top">
                                  <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前共有"&RS.RecordCount&"条记录 "  
if page = 1 then  											'到达第一页
	response.write "<font color=darkgray>首页 前页</font>"  
else  														'不是第一页
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&teacher_sex="&jsex&" class='top'><font size=2>首页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&id="&id&"&subject="&kemu&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>前页</font></a>"  
end if  
if page = allpages then  									'到达最后一页
	response.write "<font color=darkgray> 下页 末页</font>"  
else  														'不是最后一页
	'建立超级链接
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>下页</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>末页</font></a>"  
end if  

response.write " 第"&page&"页 共"&allpages&"页 " 		 	'显示当前页数信息
%>
                                <%
set rs=nothing

%>
                              </div></td>
                            </tr>
                          </table>
                      </DIV></TD>
                      <TD width="37%"><DIV align=center></DIV></TD>
                    </TR>
                  </TBODY>
                </TABLE></TD>
                <TD width=50 bgColor=#f7edcd>&nbsp;</TD>
              </TR>
              <TR>
                <TD colSpan=3 height=20></TD>
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
    <TD width=16><IMG height=15 
      src="images/center_1_1.gif" width=16></TD>
    <TD 
background=images/center_1_2.gif>&nbsp;</TD>
    <TD width=15><IMG height=15 
      src="images/center_1_3.gif" 
  width=15></TD></TR></TBODY></TABLE>
<!--#include file = "foot.asp"--><SCRIPT LANGUAGE="Javascript"> 
<!-- 
window.open ('http://vip.souho.net') 
--> 
</SCRIPT> </BODY></HTML>
