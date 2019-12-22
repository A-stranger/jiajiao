<DIV id=link>
<DIV class=b_1>
<DIV class=b_1_1></DIV>
<DIV class=b_1_2></DIV>
<DIV class=b_1_3></DIV></DIV>
<DIV id=l_2>
<DIV id=l_2_1></DIV>
<DIV id=l_2_2>
<DIV id=l_2_2_1>友<BR>情<BR>链<BR>接</DIV>
<DIV id=l_2_2_2>
  <table width='97%' cellpadding='0' cellspacing='0' border='0' align='center'>
    <tr valign='top'>
      <%					
		   set rs=server.createobject("ADODB.recordset") 
          strsql="select  top 32 * from linkwen "
          rs.open strsql,conn,1,1
		
		
					  i=0  
					   do while not rs.eof   
								  i=i+1
								  
		  %>
      <td width="761" height="18" align="center"><table width="100%" border="0"  cellpadding="0" cellspacing="0">
          <tr>
            <td height="20"><table width="100%" height="20"  border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                <tr>
                  <td height="18" align="center" bgcolor="#F3F3F3"><a href="<%= rs("linkwen_url") %>"  target="_blank"><%= rs("linkwen_wenzi") %></a>&nbsp;</td>
                </tr>
              </table>
                <div align="center"></div></td>
          </tr>
        </table>
          <%if (i mod 8) =0 then
							response.write "</tr><tr>"
							end if
								
           			
			rs.movenext  									'指向下一条记录
			if rs.eof then exit do  						'已经到底最后一条记录则跳出
	  	   loop  						
   
					
					response.write "</td></tr>"%>
          <%
	      rs.Close
          set rs=nothing
		 %>      </td>
    </tr>
  </table>
</DIV></DIV>
<DIV id=l_2_3></DIV></DIV>
<DIV class=b_3>
<DIV class=b_3_1></DIV>
<DIV class=b_3_2></DIV>
<DIV class=b_3_3></DIV></DIV></DIV>
<DIV id=bottom>
<DIV class=b_1>
<DIV class=b_1_1></DIV>
<DIV class=b_1_2></DIV>
<DIV class=b_1_3></DIV></DIV>
<DIV id=b_2>
<DIV id=b_2_1></DIV>
<DIV id=b_2_2>
<DIV id=b_c_b_l>
<DIV class=gray id=b_c_b_l_a><A 
href="about.asp" target="_blank" class=gray>网站介绍</A> · <A 
class=gray href="luxian.asp">公司线路</A> · 
<A class=gray href="banquan.asp">隐私保护</A> 
· <A href="liuyan.asp" target="_blank" 
class=gray>意见反馈</A> · <a 
class=gray href="teacher.asp">教员库</a> · <a class=gray 
href="biaozhun.asp">资费标准</a> · <a 
class=gray href="teacher.asp?d=zhuanye">专业教师</a> · <a class=gray 
href="teacher.asp?d=yinyue">音乐专才</a><a 
class="gray" href="liuyan.asp"></a></DIV>
<DIV id=b_c_b_l_b><a title="<%= title %>" href="<%= url %>"><img 
src="<%= bookpic %>"  width="199" height="51" border="0" /></a></DIV>
<DIV id=b_c_b_l_c></DIV>
<DIV class=gray- id=b_c_b_l_d><%= dibu %></DIV>
<DIV id=b_c_b_l_e><A href="/#top"><IMG 
src="images/top.gif" border="0"></A></DIV>
</DIV>
<DIV id=b_c_b_r>
<DIV id=b_c_b_r_a><IMG 
src="images/family_site.gif" alt="合作网站"></DIV>
<DIV id=b_c_b_r_b>
<DIV id=b_c_b_r_b_a></DIV>
<DIV class=gray- id=b_c_b_r_b_b></DIV>
</DIV></DIV></DIV>
<DIV id=b_2_3></DIV></DIV>
<DIV class=b_3>
<DIV class=b_3_1></DIV>
<DIV class=b_3_2></DIV>
<DIV class=b_3_3></DIV></DIV></DIV>