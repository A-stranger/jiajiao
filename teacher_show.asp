<!--#include file = "conn.asp"-->
<% 
 id=Trim(Request.QueryString("id"))  
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jiaoyuan where id="&id
 rs.open strsql,conn,1,3
  rs("cishu")=rs("cishu")+1
  rs.update
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title><%= rs("daxue") %><%= left(rs("kemu"),7) %>�ҽ�<%= left(rs("xingming"),1) %>��ʦ����-<%= title %></title>
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
                  <TD width=654 align="center" class="heiti px18 spacing1"><SPAN 
                  class=orange>
                    <% If rs("mingxing")="��" Then %><SPAN 
                  class=red_11>������</SPAN><% End If %><% If rs("renzheng")="��֤" Then %><SPAN 
                  class=red_11>������֤</SPAN><% End If %>��ԱT<%= rs("id") %><span class="asho_link_9"></span>��ϸ����</STRONG></SPAN><BR></TD>
                </TR>
              </TBODY>
            </TABLE>
              </TD>
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
            <TD style="COLOR: #333333" vAlign=top width=712><TABLE cellSpacing=0 cellPadding=0 width=712 border=0>
              <TBODY>
                <TR>
                  <TD width=6 height=155><IMG height=155 
                  src="images/t_info_4.gif" width=6></TD>
                  <TD 
                style="BORDER-TOP: #ebecee 1px solid; BACKGROUND: url(../../common/image_all/t_info_fly.gif) no-repeat right bottom; BORDER-BOTTOM: #ebecee 1px solid" 
                vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=650 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD height=15></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �������������<SPAN class=orange><%= rs("cishu") %></SPAN> ���ڱ�վ�ɹ��ļҽ̼�¼��
                            <% 	 
de="��"
set rs2=server.CreateObject("adodb.recordset")
 strsql2="select userid,chenggong from xjilu where userid='"&id&"'and chenggong='"&de&"' "
 rs2.open strsql2,conn,1,1
 i=0
if not(rs2.eof and rs2.bof) then 
    do while not rs2.eof  
	i=i+1
	%> 
                            <A class=sc_  href="<% 
response.write "http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name") 
%>?id=<%= id %>#order"><%= i %>��</A> ��
                            <%
             							'ÿҳ��ʾ������1
			rs2.movenext  									'ָ����һ����¼
			if rs2.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop  						
   %><% Else %><A class=sc_  href="<% 
response.write "http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name") 
%>?id=<%= id %>#order">0��</A>
                            <%  end if %>
                             </TD>
                        </TR>
                        <TR>
                          <TD 
                      height=1 align="left" background=images/broken_line_2.gif></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">�����������½ʱ�䣺<SPAN class=orange><%= rs("logotime") %></SPAN>���� ��¼������<span class="orange"><%= rs("logocishu") %></span></TD>
                        </TR>
                        <TR>
                          <TD 
                      height=1 align="left" background=images/broken_line_2.gif></TD>
                        </TR>
                        <TR>
                          <TD height=30 align="left">��������֤�����
                              <% If rs("renzheng")="��֤" Then %>
                            <SPAN 
                        class=orange>��վ�Ѿ���˹��˽�Ա����ʵ֤��</SPAN>���ϴ���֤ʱ�䣺<span class="orange"><%= rs("renzhengtime") %></span>
                              <% Else %>
                              <span class="orange">δͨ����֤</span>
                              <% End If %></TD>
                        </TR>
                        <TR>
                          <TD background=images/broken_line_2.gif 
                      height=1></TD>
                        </TR>
                        <TR>
                          <TD height=40><DIV class="orange px13" align=right>[ <A class=orange_ 
                        href="yuyue.asp?userid=<%= rs("id") %>" 
                        target=_blank><STRONG>����ԤԼ�ý�Ա</STRONG></A> ]����ҽ����ߣ�<STRONG><%= qrexian %></STRONG>����</DIV></TD>
                        </TR>
                      </TBODY>
                  </TABLE></TD>
                  <TD width=6><IMG height=155 
                  src="images/t_info_5.gif" 
              width=6></TD>
                </TR>
              </TBODY>
            </TABLE>
            <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                    <TBODY>
                      
                      <TR>
                        <TD background=images/t_info_10.gif 
                colSpan=4 height=34><DIV class="white px13" align=center><STRONG>�� Ա �� �� �� 
                          Ϣ</STRONG></DIV></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD width=89 height=30><DIV align=right>��Ա��ţ�</DIV></TD>
                        <TD width=122 align="left" bgColor=#f9f9ec><DIV align=left>��T<%= rs("id") %></DIV></TD>
                        <TD width=121><DIV align=right>������</DIV></TD>
                        <TD width=375 align="left">��<%= left(rs("xingming"),1) %>��Ա <SPAN 
                  class=ash->(Ϊ������Ա��˽��������̸ʱ�������ṩȫ��������֤��)</SPAN></TD>
                      </TR>
                      <TR bgColor=#f7f5dc>
                        <TD height=30><DIV align=right>�Ա� </DIV></TD>
                        <TD align="left"><DIV align=left>��<%= rs("sex") %></DIV></TD>
                        <TD><DIV align=right>ʡ��/���ң�</DIV></TD>
                        <TD align="left">��<%= rs("shengfen") %></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD height=30><DIV align=right>�������£�</DIV></TD>
                        <TD align="left">��<%= rs("shengr") %></TD>
                        <TD><DIV align=right>�Ͷ�/��ҵ/��ְ��У��</DIV></TD>
                        <TD align="left">��<%= rs("daxue") %></TD>
                      </TR>
                      <TR bgColor=#f7f5dc>
                        <TD height=30><DIV align=right>���ѧ����</DIV></TD>
                        <TD align="left">��<%= rs("xueli") %></TD>
                        <TD><DIV align=right>רҵ��</DIV></TD>
                        <TD align="left">��<%= rs("zhuanye") %></TD>
                      </TR>
                      <TR bgColor=#f9f9ec>
                        <TD height=30><DIV align=right>Ŀǰ��ݣ�</DIV></TD>
                        <TD align="left">��<%= rs("gongzuo") %></TD>
                        <TD><DIV align=right>����ĸУ��</DIV></TD>
                        <TD align="left">��<%= rs("gaozhong") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f7f5dc height=30><DIV align=right>����ס����</DIV></TD>
                        <TD align="left" bgColor=#f7f5dc>��<%= rs("shenghuo") %></TD>
                        <TD bgColor=#f7f5dc><DIV align=right>��ͥλ�ã�</DIV></TD>
                        <TD align="left" bgColor=#f7f5dc>��<%= rs("jiating") %></TD>
                      </TR>
                      <TR>
                        <TD height=10></TD>
                        <TD></TD>
                        <TD></TD>
                        <TD align="left"></TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                    <TBODY>
                      <TR>
                        <TD background=images/t_info_10.gif 
                colSpan=2 height=34><DIV class="white px13" align=center><STRONG>�� Ա �� �� �� 
                          Ϣ</STRONG></DIV></TD>
                      </TR>
                      <TR>
                        <TD width=116 bgColor=#f9f9ec height=30><DIV align=right>�ɽ��ڿ�Ŀ��</DIV></TD>
                        <TD 
                width=593 align="left" 
                  bgColor=#f9f9ec class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("kemu") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f7f5dc height=30><DIV align=right>����������<BR>
                          �س�չʾ��</DIV></TD>
                        <TD align="left" 
                bgColor=#f7f5dc class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("miaoshu") %></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f9f9ec height=30><DIV align=right>�ҽ̳ɹ���</DIV></TD>
                        <TD align="left" 
                bgColor=#f9f9ec class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("chengguo") %></TD>
                      </TR>
                      <TR>
                        <TD class=height20 bgColor=#f7f5dc><DIV align=right>���ڿ�����<BR>
                          ����ϸ������</DIV></TD>
                        <TD align="left" 
                bgColor=#f7f5dc class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><%= rs("quyu") %><BR></TD>
                      </TR>
                      <TR>
                        <TD bgColor=#f9f9ec height=30><DIV align=right>�ɸ�����ʽ��</DIV></TD>
                        <TD align="left" bgColor=#f9f9ec>���������� ѧ������</TD>
                      </TR>
                      
                      <TR>
                        <TD bgColor=#F7F5DC height=30><DIV align=right>нˮҪ��</DIV></TD>
                        <TD align="left" 
                bgColor=#F7F5DC class=height20 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px">ִ��ɽ���ҽ���нˮ��׼�� <A class=orange_
                  href="biaozhun.asp" 
                  target=_blank>�鿴нˮ��׼</A></TD>
                      </TR>
                      <TR>
                        <TD height=5></TD>
                        <TD></TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=0 cellPadding=0 width=712 border=0>
                    <TBODY>
                      <TR>
                        <TD width=74>&nbsp;</TD>
                        <TD class=height30 colSpan=2 height=70><DIV align=center><STRONG class="px13 orange">ԤԼ���ĵ绰��</STRONG><STRONG><%= qrexian %></STRONG><BR>
                          ������ʱ�䣺9:00��21:00����ԤԼʱ�����ṩ�˽�Ա�ı�ţ�<STRONG>T<%= rs("id") %> </STRONG>�� </DIV></TD>
                        <TD width=123>&nbsp;</TD>
                      </TR>
                      <TR>
                        <TD>&nbsp;</TD>
                        <TD width=230 height=80><DIV align=left><A 
                  href="yuyue.asp?userid=<%= rs("id") %>" 
                  target=_blank><IMG 
                  src="images/t_info_15.gif" 
                  width=195 height=46 border="0"></A></DIV></TD>
				  <% ur=Request.ServerVariables("SERVER_NAME") %>
                        <TD width=285><DIV align=center><A 
                  onmouseout="window.status='<%= title %>';return true;" onclick='window.external.AddFavorite("http://<%= Request.ServerVariables("server_name") %><%= Request.ServerVariables("script_name") %>?id=<%= rs("id") %>","��Ա�ղ�")'
                  href="#"><IMG 
                  src="images/t_info_16.gif" 
                  width=195 
                  height=46 border="0"></A></DIV></TD>
                        <TD <% rs.close
		set rs=nothing %>
              class=orange>&nbsp;</TD>
                      </TR>
                    </TBODY>
              </TABLE>
              <TABLE cellSpacing=1 cellPadding=0 width=712 border=0>
                <TBODY>
                  <TR>
                    <TD colSpan=4 height=12></TD>
                  </TR>
                  <TR>
                    <TD bgColor=#f5ddb3 colSpan=4 height=35><DIV class="px13 spacing1" align=center><STRONG><A 
                        id=order2 
                      name=order></A>�ý�Ա�ĳɹ��ҽ̼�¼</STRONG></DIV></TD>
                  </TR>
                  <TR bgColor=#f7f5dc>
                    <TD width=193 height=30><DIV align=center><STRONG>������</STRONG></DIV></TD>
                    <TD width=139><DIV align=center><STRONG>�꼶</STRONG></DIV></TD>
                    <TD width=176><DIV align=center><STRONG>��Ŀ</STRONG></DIV></TD>
                    <TD width=204><DIV align=center><STRONG>�ӵ�����</STRONG></DIV></TD>
                  </TR>
				  <% 	 
de="��"
set rs2=server.CreateObject("adodb.recordset")
 strsql2="select * from xjilu where userid='"&id&"'and chenggong='"&de&"' "
 rs2.open strsql2,conn,1,1
 i=0
if not(rs2.eof and rs2.bof) then 
    do while not rs2.eof  
	i=i+1
	%>
                  <TR bgColor=<% If (i mod 2) =0 Then %>
			  #f7f5dc
			  <% Else %>
			  #f9f9ec
			  <% End If %>>
                    <TD height=30><DIV align=center><a href="xueyuan_show.asp?id=<%= rs2("dingdan") %>" >S<%= rs2("dingdan") %></a> </DIV></TD>
                    <TD><DIV align=center><%= rs2("nianji") %> </DIV></TD>
                    <TD><DIV align=center><%= rs2("kemu") %> </DIV></TD>
                    <TD><DIV align=center><%= rs2("shijian") %> </DIV></TD>
                  </TR>
				  <%
             							'ÿҳ��ʾ������1
			rs2.movenext  									'ָ����һ����¼
			if rs2.eof then exit do  						'�Ѿ��������һ����¼������
	  	loop  						
   %>
        <%  end if %>
				  
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
