<!--#include file = "conn.asp"-->
<% id=Trim(Request.QueryString("userid")) 

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>在线预约-<%= title %></title>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<TABLE cellSpacing=0 cellPadding=0 width=680 align=center bgColor=#ffffff 
      border=0>
  <TBODY>
    <TR>
      <TD width=16><IMG height=17 src="images/center_2_1.gif" 
            width=16></TD>
      <TD background=images/center_2_2.gif>&nbsp;</TD>
      <TD width=15><IMG height=17 src="images/center_2_3.gif" 
            width=15></TD>
    </TR>
    <TR>
      <TD background=images/center_3_1.gif>&nbsp;</TD>
      <TD height=400><FORM name=theForm onSubmit="return CheckValue(this)" action=yuyuedo.asp 
method=post>
        <TABLE cellSpacing=0 cellPadding=0 align=center bgColor=#ffffff border=0>
          <TBODY>
            
            <TR>
              <TD vAlign=top width=500><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                  <TBODY>
                    <TR>
                      <TD><DIV align=center> <SPAN 
            class=orange_><STRONG>在线预约</STRONG></SPAN></DIV></TD>
                    </TR>
                  </TBODY>
              </TABLE>
                  <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#cccccc 
        border=0>
                    <TBODY>
                      <TR>
                        <TD background=images/beijin1.gif bgColor=#f3f3f3 height=100><DIV class=asho_link_9 align=center>
                            <TABLE cellSpacing=0 cellPadding=0 width="95%" border=0>
                              <TBODY>
                                <TR>
                                  <TD><DIV align=left><SPAN 
                  class=buleo2_link_9>　　您可以在线提交表单预约您中意的教员，我们将在12小时内致电给您确认详情；您也可以致电<STRONG> <%= qrexian %> </STRONG>（8:30－18:00）由客户服务代表直接预约。<BR>
                                  </SPAN><SPAN 
                  class=red_link_9>【特别提醒】您预约的教员可能会因多种原因（如授课时间冲突）无法为您执教，我们会向您说明情况并及时推荐同等水平教员供您选择。建议您预约多个教员并记下编号！</SPAN></DIV></TD>
                                </TR>
                              </TBODY>
                            </TABLE>
                        </DIV></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD>&nbsp;</TD>
                      </TR>
                    </TBODY>
                </TABLE>
                <TABLE cellSpacing=1 cellPadding=0 width="100%" bgColor=#cccccc 
        border=0>
                  <TBODY>
                      <TR>
                        <TD><DIV class=asho_link_9 align=center>
                            <TABLE cellSpacing=1 cellPadding=0 width="96%" border=0>
                              <TBODY>
                                <TR></TR>
                                <TR>
                                  <TD background=images/hen1.gif colSpan=2 height=25><DIV class=white_link_9 align=center><STRONG>教员在线预约 </STRONG></DIV></TD>
                                </TR>
                                <TR>
                                  <TD width=120 height=25 bgcolor="#E3E3E3"><DIV align=right>教员编号：</DIV></TD>
                                  <TD width=356 bgcolor="#E3E3E3"><DIV align=left>
                                    <INPUT type=hidden value=<%= id %> name=teacher_id>
                                    &nbsp; T<%= id %> </DIV></TD>
                                </TR>
                                <TR>
                                  <TD colSpan=2 height=30><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                                      <TBODY>
                                        <TR bgColor=#eeeeee>
                                          <TD width="27%" height=35><DIV align=right>联系人：</DIV></TD>
                                          <TD width="73%" bgColor=#eeeeee><DIV align=left>
                                              <INPUT id=name3 maxLength=30 size=12 
                  name=name>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>电话：</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <INPUT maxLength=50 name=telephone_home>
                                            请注明(宅、办)</DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#eeeeee height=35><DIV align=right>移动电话：</DIV></TD>
                                          <TD bgColor=#eeeeee><DIV align=left>
                                              <INPUT maxLength=30 size=25 name=mobile>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>学员性别：</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <INPUT type=radio value=男 name=student_sex>
                                            男　
                                            <INPUT type=radio value=女 name=student_sex>
                                            女</DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>具体位置：</DIV></TD>
                                          <TD bgColor=#e3e3e3><INPUT size=30 name=road1>
                                            （例如：两路交叉口）</TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>学员年级：</DIV></TD>
                                          <TD><DIV align=left>
                                              <SELECT size=1 name=grade>
                                                <OPTION value="" 
                    selected>请选择</OPTION>
                                                <OPTION value=幼儿>幼儿</OPTION>
                                                <OPTION 
                    value=一年级>一年级</OPTION>
                                                <OPTION value=二年级>二年级</OPTION>
                                                <OPTION value=三年级>三年级</OPTION>
                                                <OPTION 
                    value=四年级>四年级</OPTION>
                                                <OPTION value=五年级>五年级</OPTION>
                                                <OPTION value=六年级>六年级</OPTION>
                                                <OPTION value=初一>初一</OPTION>
                                                <OPTION value=初二>初二</OPTION>
                                                <OPTION value=初三>初三</OPTION>
                                                <OPTION value=高一>高一</OPTION>
                                                <OPTION value=高二>高二</OPTION>
                                                <OPTION value=高三>高三</OPTION>
                                                <OPTION value=三校生>三校生</OPTION>
                                                <OPTION value=自考生>自考生</OPTION>
                                                <OPTION value=大一>大一</OPTION>
                                                <OPTION value=大二>大二</OPTION>
                                                <OPTION value=大三>大三</OPTION>
                                                <OPTION value=大四>大四</OPTION>
                                                <OPTION value=成人>成人</OPTION>
                                                <OPTION value=外国人>外国人</OPTION>
                                                <OPTION 
                  value=其它>其它情况</OPTION>
                                              </SELECT>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=35><DIV align=right>授课时间：</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA id=anpai name=anpai rows=5 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>求教学科：</DIV></TD>
                                          <TD><DIV align=left>
                                              <INPUT maxLength=100 size=21 name=subject>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=110><DIV align=right>学员情况描述：<BR>
                                            （学员的基础、<BR>
                                            学习状况、<BR>
                                            性格等。）</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA id=textarea2 name=explain rows=5 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>选择教员性别：</DIV></TD>
                                          <TD><DIV align=left>
                                              <INPUT type=radio value=女教员 name=teacher_sex>
                                            要女教员　
                                            <INPUT type=radio value=男教员 name=teacher_sex>
                                            要男教员　
                                            <INPUT 
                  type=radio CHECKED value=无所谓 name=teacher_sex>
                                            无所谓</DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=90><DIV align=right>对教员其它要求：</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA name=other rows=4 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">教学方式：</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><label>
                                            <input name="fangshi" type="text" id="fangshi">
                                          </label></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">有无车贴：</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><label>
                                            <input type="radio" name="chetie" value="有">
                                            </label>
                                            有
                                            <label>
                                              <input name="chetie" type="radio" value="无" checked>
                                              无</label></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">计时方式：</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><input name=price id="price" size=16 maxlength=30>
×元/小时</TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>包月方式：</DIV></TD>
                                          <TD align="left" bgColor=#e3e3e3><DIV align=left>
                                              <INPUT name=price2 id="price2" size=16 maxLength=30>
                                            ×元/月</DIV></TD>
                                        </TR>
                                      </TABLE>
                                      <DIV align=center>
                                        <INPUT type=submit value=　提交　 name=Submit2>
                                        【<A href="javascript:window.close()">关闭窗口</A>】</DIV></TD>
                                </TR>
                                <TR>
                                  <TD colSpan=2><DIV 
        align=center></DIV></TD>
                                </TR>
                              </TBODY>
                            </TABLE>
                        </DIV></TD>
                      </TR>
                  </TBODY>
                </TABLE></TD>
              </TR>
            <TR>
              <TD><DIV align=center> </SPAN></DIV></TD>
              </TR>
          </TBODY>
        </TABLE>
      </FORM></TD>
      <TD background=images/center_3_2.gif>&nbsp;</TD>
    </TR>
    <TR>
      <TD><IMG height=15 src="images/center_1_1.gif" 
width=16></TD>
      <TD background=images/center_1_2.gif>&nbsp;</TD>
      <TD><IMG height=15 src="images/center_1_3.gif" 
        width=15></TD>
    </TR>
  </TBODY>
</TABLE>
</BODY></HTML>
