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
    <TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
      <TBODY>
        
        <TR>
          <TD vAlign=top align=middle width=780>
            <TABLE width="98%" height=60 
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
                                    <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>提示一</STRONG></DIV></TD>
                                    <TD align=middle width=43><TABLE height=120 cellSpacing=0 cellPadding=0 width=1 border=0>
                                        <TBODY>
                                          <TR>
                                            <TD bgColor=#3399ff></TD>
                                          </TR>
                                        </TBODY>
                                    </TABLE></TD>
                                    <TD class=buleo2_link_9 align=left width=414>本站教员列表的排名中，通过<A 
            class=bule_link_9 
            href="guanli_renzheng.asp" 
            target=_blank>身份验证</A>且经常登陆的教员排在最前，所以为了您能优先被挑选而获得更多的家教机会，<SPAN 
            class=red_link_9>请您尽快备齐证件（如身份证、学生证、毕业证或教师资格证等身份证明及英语等级证书、才艺等级证书等能力证明）到<A class=bule_link_9 
            href="daili.asp" 
            target=_blank>高校代理点</A>或</SPAN><SPAN class=buleo_link_9><A 
            class=bule_link_9 
            href="guanli_renzheng.asp">网上认证</A></SPAN><SPAN 
            class=red_link_9>进行身份验证，优先获取一年免费家教短信通知。</SPAN>若办理费用预存<A 
            class=bule_link_9 
            href="jwenzhang.asp?w=教员手册" 
            target=_blank>手续</A>后，更可快捷接单，省去车马之劳。<BR></TD>
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
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>提示二</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left width=414>通过<A class=bule_link_9 
            href="guanli_renzheng.asp">验证</A>后，经常用您的用户名和密码登陆本站，您的排名会自动到最前，这样您可以比别人获得更多家教机会。</TD>
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
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>提示三</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left 
            width=414>尽量将您的资料填写详细，并突出您的特长和家教相关经验，以方便家长以及山东家教网工作人员的选择。</TD>
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
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>提示四</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=60 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=red_link_9 align=left 
            width=414>良好的信誉记录和家教记录，将为您获得更多的推荐；连续两次因教员自身原因造成家教失败记录以及不良好的信誉记录本站将不再推荐家教。</TD>
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
                                      <TD width=79><DIV align=center><IMG height=14 src="images/te5.gif" width=15> <STRONG>提示五</STRONG></DIV></TD>
                                      <TD align=middle width=43><TABLE height=80 cellSpacing=0 cellPadding=0 width=1 border=0>
                                          <TBODY>
                                            <TR>
                                              <TD bgColor=#3399ff></TD>
                                            </TR>
                                          </TBODY>
                                      </TABLE></TD>
                                      <TD class=buleo2_link_9 align=left 
            width=414>如果您已经在本站成功接过3份以上家教且失败录在10%以下；没有任何不良记录并且是名校教员或者一级以上专业教师，可以致电本站申请成为“明星教员”，经本站综合讨论认可后将为您显示“<SPAN 
            class=red_link_10>★</SPAN>”标记。</TD>
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
