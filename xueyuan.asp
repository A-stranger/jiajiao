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
<title>ѧԱ��-<%= title %>-����Դ�����ѻ���Ʒ����www.souho.net</title>
<META content=ɽ���ҽ���-����Դ�����ѻ���Ʒ����www.souho.net name=author>
<META content="www.shandongjiajiao.net-����Դ�����ѻ���Ʒ����www.souho.net" name=copyright>
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
                  <TD width=130 height="54" bgColor=#f5e2bc><DIV align=right>�����ţ�S</DIV></TD>
                  <TD width=54 bgColor=#f5e2bc><DIV align=center>
                    <INPUT name=id id="id" size=6>
                  </DIV></TD>
                  <TD width=46 bgColor=#f5e2bc><DIV align=right>��Ŀ�� </DIV></TD>
                  <TD width=128 bgColor=#f5e2bc><DIV align=center>
                    <SELECT class=input_text name=subject>
                      <OPTION value="" 
                          selected>��ѡ��ҽ̿�Ŀ</OPTION>
                      <%	
					  dw1="ѧ��"				
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
                  <TD width=50 bgColor=#f5e2bc><DIV align=right>����</DIV></TD>
                  <TD width=86 bgColor=#f5e2bc><DIV align=center><font 
                        color=#ffffff>
                    <select  id=teach_place 
                        name=teach_place>
                      <option value="" 
                          selected>����</option>
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
                  <TD width=76 bgColor=#f5e2bc><DIV align=right>ѧԱ�Ա� </DIV></TD>
                  <TD width=75 bgColor=#f5e2bc><DIV align=center><SPAN class=0md120>
                    <SELECT class=input_text 
            id=select4 name=student_sex>
                        <OPTION value="" selected>����</OPTION>
                        <OPTION value=��>��</OPTION>
                        <OPTION value=Ů>Ů</OPTION>
                    </SELECT>
                  </SPAN></DIV></TD>
                  <TD width=75 bgColor=#f5e2bc><DIV align=right>��Ա�Ա�</DIV></TD>
                  <TD width=93 bgColor=#f5e2bc><DIV align=center><SPAN class=0md120>
                    <SELECT class=input_text 
            id=select3 name=teacher_sex>
                        <OPTION value="" 
              selected>��Ҫ��</OPTION>
                        <OPTION value=��>��</OPTION>
                        <OPTION 
              value=Ů>Ů</OPTION>
                    </SELECT>
                  </SPAN></DIV></TD>
                  <TD width=100 bgColor=#f5e2bc><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image height=23 alt=���� width=64 
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
                <TD width=57 height=37><DIV align=center>�������</DIV></TD>
                <TD width=87><DIV align=center>ѧԱ�꼶�Ա�</DIV></TD>
                <TD width=87><DIV align=center>��̿�Ŀ</DIV></TD>
                <TD width=310><DIV align=center>
                    <DIV align=center>�Խ�ԱҪ��(�Ա�)</DIV>
                </DIV></TD>
                <TD width=144><DIV align=center>
                    <DIV align=center>����</DIV>
                </DIV></TD>
                <TD width=79><DIV align=center>��ʱ��</DIV></TD>
                <TD width=81><DIV align=center>����ʱ��</DIV></TD>
                <TD width=76 bgColor=#f5e2bc><DIV align=center>�鿴����</DIV></TD>
              </TR>
			  <% 	 
dim counts
dw="��"
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
          <div align="center" class="black_12">�� �� �� Ϣ��</div>
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
		elseif Cint(page) >= allPages then  				'page ֵ������ҳ��
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
               <% if rs("zhaungtai")="�ѽᵥ" then %>
			    <% response.write("<font color='#ff0000'><b>���Ѱ��š�</b></font>")%>
				 <% Else %>
                 <% response.write("<font color='#00ff00'><b>����ԤԼ��</b></font>")%>
                   <% End If %></TD>
                <TD class=p10 width=144><%= rs("dizhi") %></TD>
                <TD width=79><DIV align=center><%= rs("baochou") %>Ԫ/Сʱ</DIV></TD>
                <TD width=81><DIV align=center><%= rs("intime") %></DIV>
                    <DIV></DIV></TD>
                <TD width=76 ><DIV align=center><A class=blue_ 
            href="xueyuan_show.asp?id=<%= rs("id") %>" 
            target=_blank>�鿴<BR>
                  ����</A></DIV></TD>
              </TR>
			  <%
            counts = counts - 1  							'ÿҳ��ʾ������1
			rs.movenext  									'ָ����һ����¼
			if rs.eof then exit do  						'�Ѿ��������һ����¼������
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
          href="javascript:location.reload()">ˢ��</A></DIV></TD>
                      <TD width="56%"><DIV align=left>
                          <table width="84%" border="0" align="center" cellpadding="0" cellspacing="0" >
                            <tr>
                              <td height="18" class="ziti03"><div align="right" class="top">
                                  <%  

response.write "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ����"&RS.RecordCount&"����¼ "  
if page = 1 then  											'�����һҳ
	response.write "<font color=darkgray>��ҳ ǰҳ</font>"  
else  														'���ǵ�һҳ
	response.write "<a href="&request.ServerVariables("script_name")&"?page=1&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&teacher_sex="&jsex&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&page-1&"&id="&id&"&subject="&kemu&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>ǰҳ</font></a>"  
end if  
if page = allpages then  									'�������һҳ
	response.write "<font color=darkgray> ��ҳ ĩҳ</font>"  
else  														'�������һҳ
	'������������
	response.write " <a href="&request.ServerVariables("script_name")&"?page="&page+1&"&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>��ҳ</font></a> <a href="&request.ServerVariables("script_name")&"?page="&allpages&"&id="&id&"&subject="&kemu&"&teach_place="&quyu&"&student_sex="&sex&"&teacher_sex="&jsex&" class='top'><font size=2>ĩҳ</font></a>"  
end if  

response.write " ��"&page&"ҳ ��"&allpages&"ҳ " 		 	'��ʾ��ǰҳ����Ϣ
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
