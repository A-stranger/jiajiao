<!--#include file="conn.asp"-->
<%
if session("username")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='logoin.asp';</script>"
response.End
end if
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>��Ա����-<%= title %></title>
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
<TABLE height=95 cellSpacing=0 cellPadding=0 width=980 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 
background=images/top_2_1.gif></TD>
    <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
      <TBODY>
        
        <TR>
          <TD vAlign=top align=middle width=780>
            <TABLE width="98%" height=60 
      border=0 align="center" cellPadding=0 cellSpacing=1 bgColor=#cccccc>
              <TBODY>
                <TR>
                  <TD vAlign=center background=images/beijin1.gif 
          bgColor=#f3f3f3><DIV align=center><SPAN class=buleo2_link_9>��ӭ��</SPAN><SPAN 
            class=red_10><%= session("username") %></SPAN>��<SPAN 
            class=buleo2_link_9>���Ľ�Ա�����</SPAN><SPAN 
            class=red_10>T<%= session("id") %></SPAN><SPAN 
            class=buleo2_link_9>,���ļ����ѱ������</SPAN><SPAN 
            class=red_link_10><%= session("cishu") %></SPAN><SPAN 
            class=buleo2_link_9>�Σ�</SPAN><BR>
                          <SPAN 
            class=buleo2_link_9>Ϊ�˱�֤���ĸ������ϲ��������޸Ļ���ȡ����������뿪ǰ�˳����ر���������ڣ�</SPAN> <BR>
                  </DIV></TD>
                </TR>
              </TBODY>
            </TABLE>
            <BR>
            <BR>
              <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                <TBODY>
                  <TR>
                    <TD vAlign=top width=125><!--#include file="left.asp"-->                    </TD>
                    <TD vAlign=top width=13><TABLE width=10 height="650" border=0 align=center cellPadding=0 cellSpacing=0 
            bgColor=#3366cc>
                        <TBODY>
                          <TR>
                            <TD width="10" height=400></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                    <TD width=642><TABLE height=180 cellSpacing=1 cellPadding=0 width=560 bgColor=#cccccc 
border=0>
                        <TBODY>
                          <TR>
                            <TD align=middle background=images/beijin1.gif bgColor=#ffffff><TABLE height=100 cellSpacing=0 cellPadding=0 width="96%" border=0>
                                <TBODY>
                                  <TR>
                                    <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>��ʾһ</STRONG></DIV></TD>
                                    <TD align=middle width=43><TABLE height=120 cellSpacing=0 cellPadding=0 width=1 border=0>
                                        <TBODY>
                                          <TR>
                                            <TD bgColor=#3399ff></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                    <TD class=buleo2_link_9 align=left width=414>��վ��Ա�б�������У�ͨ��<A 
            class=bule_link_9 
            href="guanli_renzheng.asp" 
            target=_blank>�����֤</A>�Ҿ�����½�Ľ�Ա������ǰ������Ϊ���������ȱ���ѡ����ø���ļҽ̻��ᣬ<SPAN 
            class=red_link_9>�������챸��֤���������֤��ѧ��֤����ҵ֤���ʦ�ʸ�֤�����֤����Ӣ��ȼ�֤�顢���յȼ�֤�������֤������<A class=bule_link_9 
            href="daili.asp" 
            target=_blank>��У�����</A>��</SPAN><SPAN class=buleo_link_9><A 
            class=bule_link_9 
            href="guanli_renzheng.asp">������֤</A></SPAN><SPAN 
            class=red_link_9>���������֤�����Ȼ�ȡһ����Ѽҽ̶���֪ͨ��</SPAN>���������Ԥ��<A 
            class=bule_link_9 
            href="jwenzhang.asp?w=��Ա�ֲ�" 
            target=_blank>����</A>�󣬸��ɿ�ݽӵ���ʡȥ����֮�͡�<BR></TD>
                                  </TR>
                                </TBODY>
                            </TABLE></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                        <BR>
                        <TABLE height=100 cellSpacing=1 cellPadding=0 width=560 bgColor=#cccccc 
border=0>
                          <TBODY>
                            <TR>
                              <TD align=middle background=images/beijin1.gif bgColor=#ffffff><TABLE height=80 cellSpacing=0 cellPadding=0 width="96%" border=0>
                                  <TBODY>
                                    <TR>
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>��ʾ��</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left width=414>ͨ��<A class=bule_link_9 
            href="guanli_renzheng.asp">��֤</A>�󣬾����������û����������½��վ�������������Զ�����ǰ�����������Աȱ��˻�ø���ҽ̻��ᡣ</TD>
                                    </TR>
                                  </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                      <BR>
                        <TABLE height=100 cellSpacing=1 cellPadding=0 width=560 bgColor=#cccccc 
border=0>
                          <TBODY>
                            <TR>
                              <TD align=middle background=images/beijin1.gif bgColor=#ffffff><TABLE height=80 cellSpacing=0 cellPadding=0 width="96%" border=0>
                                  <TBODY>
                                    <TR>
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>��ʾ��</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left 
            width=414>����������������д��ϸ����ͻ�������س��ͼҽ���ؾ��飬�Է���ҳ��Լ�ɽ���ҽ���������Ա��ѡ��</TD>
                                    </TR>
                                  </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                      <BR>
                        <TABLE height=100 cellSpacing=1 cellPadding=0 width=560 bgColor=#cccccc 
border=0>
                          <TBODY>
                            <TR>
                              <TD align=middle background=images/beijin1.gif bgColor=#ffffff><TABLE height=80 cellSpacing=0 cellPadding=0 width="96%" border=0>
                                  <TBODY>
                                    <TR>
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>��ʾ��</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=red_link_9 align=left 
            width=414>���õ�������¼�ͼҽ̼�¼����Ϊ����ø�����Ƽ��������������Ա����ԭ����ɼҽ�ʧ�ܼ�¼�Լ������õ�������¼��վ�������Ƽ��ҽ̡�</TD>
                                    </TR>
                                  </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                      <BR>
                        <TABLE height=120 cellSpacing=1 cellPadding=0 width=560 bgColor=#cccccc 
border=0>
                          <TBODY>
                            <TR>
                              <TD align=middle background=images/beijin1.gif bgColor=#ffffff><TABLE height=100 cellSpacing=0 cellPadding=0 width="96%" border=0>
                                  <TBODY>
                                    <TR>
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>��ʾ��</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=80 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left 
            width=414>������Ѿ��ڱ�վ�ɹ��ӹ�3�����ϼҽ���ʧ��¼��10%���£�û���κβ�����¼��������У��Ա����һ������רҵ��ʦ�������µ籾վ�����Ϊ�����ǽ�Ա��������վ�ۺ������Ͽɺ�Ϊ����ʾ��<SPAN 
            class=red_link_10>��</SPAN>����ǡ�</TD>
                                    </TR>
                                  </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                      </TABLE></TD>
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
