<!--#include file = "conn.asp"-->
<% 
 id=Trim(Request.QueryString("id"))  
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from dingdan where id="&id
 rs.open strsql,conn,1,3

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>ѧԱ����-<%= title %></title>
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
.bo1 {	BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; COLOR: #666666; BORDER-BOTTOM: #cccccc 1px solid
}
-->
</style>
</HEAD>
<BODY>
<!--#include file = "top.asp"-->
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          <TR>
            <TD width=712><TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BACKGROUND: url(../../common/image_all/t_info_t.gif) no-repeat; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=712>
              <TBODY>
                <TR>
                  <TD width=56 height=87>&nbsp;</TD>
                  <TD width=654 align="center" class="heiti px18 spacing1"><span class="STYLE10 spacing1">�鿴ѧԱ���� <SPAN 
                  class=orange>S<%= rs("id") %></SPAN> ��ϸ���</span></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=12></TD>
            <TD width=14><IMG height=95 
            src="images/t_info_1.gif" width=14></TD>
            <TD width=66 
          background=images/t_info_2.gif><DIV align=center><IMG height=23 
            src="images/phone2.gif" 
          width=28></DIV></TD>
            <TD class="height20 orange" width=114 
          background=images/t_info_2.gif><DIV 
            align=left><STRONG>��ҽ����ߣ�<BR>
                  <%= qrexian %></STRONG></DIV></TD>
            <TD width=12><IMG height=95 
            src="images/t_info_3.gif" 
        width=12></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD width=10 
    background=images/top_3_2.gif>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
    <TR>
      <TD width=10 background=images/top_2_1.gif></TD>
      <TD width=15 bgColor=#ffffff>&nbsp;</TD>
      <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width=930 border=0>
        <TBODY>
          
          <TR>
            <TD style="COLOR: #333333" vAlign=top width=712>��
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                <TBODY>
                  <TR>
                    <TD width=134 height=12></TD>
                    <TD width=139></TD>
                    <TD width=93></TD>
                    <TD width=341></TD>
                  </TR>
                  <TR>
                    <TD background=images/t_info_10.gif colSpan=4 
                height=34><DIV class="white px13" align=center><STRONG>ѧ Ա �� �� �� 
                      Ϣ</STRONG></DIV></TD>
                  </TR>
                  <TR>
                    <TD bgColor=#f9f9ec height=30><DIV align=right>������ţ�</DIV></TD>
                    <TD align="left" bgColor=#f9f9ec><DIV align=left>��S<%= rs("id") %></DIV></TD>
                    <TD bgColor=#f9f9ec><DIV align=right>��ϵ�ˣ�</DIV></TD>
                    <TD align="left" bgColor=#f9f9ec>��<%= rs("username") %></TD>
                  </TR>
                  <TR>
                    <TD bgColor=#f7f5dc height=30><DIV align=right>ѧԱ�Ա� </DIV></TD>
                    <TD align="left" bgColor=#f7f5dc><DIV align=left>��<%= rs("sex") %></DIV></TD>
                    <TD bgColor=#f7f5dc><DIV align=right>ѧԱ�꼶��</DIV></TD>
                    <TD align="left" bgColor=#f7f5dc>��<%= rs("nianji") %></TD>
                  </TR>
                  <TR>
                    <TD bgColor=#f9f9ec height=35><DIV align=right>
                        <DIV align=right>��������</DIV>
                    </DIV></TD>
                    <TD align="left" bgColor=#f9f9ec>��<%= rs("dizhi") %></TD>
                    <TD bgColor=#f9f9ec><DIV align=right>����λ�ã�</DIV></TD>
                    <TD align="left" bgColor=#f9f9ec><table cellspacing=0 cellpadding=0 width="100%" border=0>
                      <tbody>
                        <tr>
                          <td width="67%">��<%= rs("dizhi1") %></td>
                          <td width="33%">&nbsp;</td>
                        </tr>
                      </tbody>
                    </table></TD>
                  </TR>
                  <TR>
                    <TD height=10></TD>
                    <TD></TD>
                    <TD></TD>
                    <TD></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
  <TBODY>
  
  <TR>
    <TD background=images/t_info_10.gif colSpan=2 
                height=34><DIV class="white px13" align=center><STRONG>�� �� �� �� �� 
      Ϣ</STRONG></DIV></TD>
  </TR>
  <TR>
    <TD width=134 bgColor=#f9f9ec height=30><DIV align=right>��̿�Ŀ��</DIV></TD>
    <TD width=575 align="left" bgColor=#f9f9ec>��<%= rs("xueke") %></TD>
  </TR>
  <TR>
    <TD bgColor=#f7f5dc height=30><DIV align=right>
      <DIV align=right>Ƶ�Σ�</DIV>
    </DIV></TD>
    <TD align="left" bgColor=#f7f5dc>��<%= rs("anpai") %></TD>
  </TR>
  <TR>
    <TD bgColor=#f9f9ec height=30><DIV align=right>ѧԱ���������</DIV></TD>
    <TD align="left" bgColor=#f9f9ec>��<%= rs("qingkuang") %></TD>
  </TR>
  
  <TR>
    <TD bgColor=#F7F5DC height=30><DIV align=right>�Խ�Ա�Ա�Ҫ��</DIV></TD>
    <TD align="left" bgColor=#F7F5DC>��<%= rs("jsex") %></TD>
  </TR>
  <TR>
    <TD bgColor=#F9F9EC height=30><DIV align=right>�Խ�ԱҪ��(�ӵ����)��</DIV></TD>
    <TD align="left" 
                bgColor=#F9F9EC style="PADDING-LEFT: 12px; LINE-HEIGHT: 20px"><%= rs("jqingkuang") %></TD>
  </TR>
  <TR>
    <TD bgColor=#F7F5DC height=30><DIV align=right>���꣺</DIV></TD>
    <TD align="left" bgColor=#F7F5DC>��<%= rs("baochou") %>Ԫ/Сʱ</TD>
  </TR>
  <TR>
    <TD bgColor=#F7F5DC height=30><div align="right">���꣺</div></TD>
    <TD align="left" bgColor=#F7F5DC> &nbsp; <%= rs("baochou2") %>Ԫ/��</TD>
  </TR>
  <TR>
    <TD bgColor=#F9F9EC height=30><DIV align=right>��ѧ��ʽ��</DIV></TD>
    <TD align="left" bgColor=#F9F9EC>��<%= rs("fangshi") %></TD>
  </TR>
  <TR bgColor=#f9f9ec>
    <TD height=30 bgcolor="#F7F5DC"><DIV align=right>���޳�����</DIV></TD>
    <TD align="left" bgcolor="#F7F5DC">��<%= rs("chetie") %>����</TD>
  </TR>
  </TBODY>
              </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width=712 border=0>
                <TBODY>
                  <TR>
                    <TD colSpan=5 height=20>&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD width=133>&nbsp;</TD>
                    <TD width=2 height=45><IMG height=45 
                  src="images/button_big_l_o.gif" width=2></TD>
                  <TD width=364 
                background=images/button_big_bg_o.gif><DIV class="height20 px14" align=center><STRONG>
                
				<% if rs("zhaungtai")="�ѽᵥ" then %>
                 <% response.write("<font color='#ff0000'><b>�˶����Ѱ���,���ע��������</b></font>")%>
                  <% Else %> 
				 <A href="shenqing.asp?dw=<%= id %>" target="_blank"><%response.write("���� �� �� �� �� �� ����")%></A>
                  <% End If %></STRONG></DIV></TD>
                    <TD width=1 bgcolor="#FFDEB5"><IMG height=45 
                  src="images/button_big_r_o.gif" width=2></TD>
                    <TD class=orange width=207><DIV align=center>������<%= rs("cishu") %>�����롿</DIV></TD>
                  </TR>
                  <TR><% rs.Close
          set rs=nothing %>
                    <TD colSpan=5 height=20>&nbsp;</TD>
                  </TR>
                </TBODY>
              </TABLE></TD>
            <TD width=12></TD>
            <TD vAlign=top width=206><TABLE cellSpacing=0 cellPadding=0 width=206 border=0>
              <TBODY>
                <TR>
                  <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_8.gif" 
                width=6></TD>
                  <TD 
                style="BORDER-TOP: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
                vAlign=top align=middle><DIV align=center><IMG height=29 
                  src="images/t_info_6.gif" 
                  width=167></DIV>
                      <TABLE cellSpacing=0 cellPadding=0 width=167 align=center 
                  border=0>
                        <TBODY>
                          <TR>
                            <TD height=10></TD>
                          </TR>
                          <% 	 
dw2="Ѱ�Һ��ʵĽ�Ա"
set rs=server.CreateObject("adodb.recordset")
strsql="select top 6 * from news where type='"&dw2&"' order by id desc"
rs.open strsql,conn,1,1
do while not rs.eof
      %>
                          <TR onMouseOver="this.style.background='#C4F1FF'" 
                    onmouseout="this.style.background='#FfFfFf'">
                            <TD height=28 align="left"><IMG height=6 
                        src="images/t_info_7.gif" 
                        width=6>��<A class=a2 title=����鿴��ϸ
href="wenzhang_show.asp?id=<%= rs("id") %>" 
target=_blank><%= left(rs("title"),9) %>
                                  <% If len(rs("title"))>9 Then %>
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
                      </TABLE></TD>
                  <TD vAlign=bottom width=6><IMG height=198 
                  src="images/t_info_9.gif" 
                width=6></TD>
                </TR>
              </TBODY>
            </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width=203 border=0>
                <TBODY>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                  <TR>
                    <TD background=images/t_info_11.gif 
                height=74><DIV class=white_16 align=center><A class=white 
                  href="teacher_serch.asp">�����Ա<BR>
                      ����ѡ������</A></DIV></TD>
                  </TR>
                  <TR>
                    <TD><A 
                  href="teacher_serch.asp"><IMG 
                  src="images/t_info_12.gif" 
                  width=203 
                  height=71 border="0"></A></TD>
                  </TR>
                  <TR>
                    <TD height=12></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <TABLE 
            style="BORDER-RIGHT: #ebecee 1px solid; BORDER-TOP: #ebecee 1px solid; BORDER-LEFT: #ebecee 1px solid; BORDER-BOTTOM: #ebecee 1px solid" 
            cellSpacing=0 cellPadding=0 width=206>
                <TBODY>
                  <TR>
                    <TD><DIV align=center><IMG height=28 
                  src="images/t_info_13.gif" 
                  width=167></DIV></TD>
                  </TR>
                  <TR>
                    <TD height=10></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>��Сѧ�γ���</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>��<A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=��ѧ">��ѧ</A> <A 
                  href="teacher.asp?kemu=Ӣ��">Ӣ��</A> <A 
                  href="teacher.asp?kemu=��ѧ">��ѧ</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>����������</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>��<A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>����������</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=50>��<A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=С����">С����</A> <A 
                  href="teacher.asp?kemu=������">������</A> <A 
                  href="teacher.asp?kemu=����˹">����˹</A> <A 
                  href="teacher.asp?kemu=����">����</A><BR>
                      ��
                      <A 
                  href="teacher.asp?kemu=������">������</A> <A 
                  href="teacher.asp?kemu=�����">�����</A> <A 
                  href="teacher.asp?kemu=���ɹ�">���ɹ�</A> <A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=����">����</A> </TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>����������</SPAN></TD>
                  </TR>
                  <TR>
                    <TD height=30>��<A 
                  href="teacher.asp?kemu=����">����</A> <A 
                  href="teacher.asp?kemu=��ë��">��ë��</A> <A 
                  href="teacher.asp?kemu=ƹ��">ƹ��</A> <A 
                  href="teacher.asp?kemu=Χ��">Χ��</A> <A 
                  href="teacher.asp?kemu=��������">��������</A></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>�������µ���</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=50><P class=p_2>
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
                      <a href="teacher.asp"></a></div></TD>
                  </TR>
                  <TR>
                    <TD height=28 align="left">����<IMG height=15 
                  src="images/t_info_14.gif" 
                  width=15>��<SPAN class=cyan>������Уʦ��</SPAN></TD>
                  </TR>
                  <TR>
                    <TD class=height20 height=90><P class=p_2>
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
                      <a href="teacher.asp"></a></div></TD>
                  </TR>
                  <TR>
                    <TD height=20></TD>
                  </TR>
                </TBODY>
              </TABLE>
              <BR>
              <!--      
          <table width="206" style=" border:1px solid #EBECEE;" cellspacing="0" cellpadding="0">

            <tr>
              <td height="300"><div align="center" class="product_name">���λ 206*300</div></td>
            </tr>
          </table>
          --></TD>
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
<!--#include file = "foot.asp"--></BODY></HTML>
