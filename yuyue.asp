<!--#include file = "conn.asp"-->
<% id=Trim(Request.QueryString("userid")) 

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name="keywords" content="<%= ci %>" />
<meta name="description" content="<%= miaoshu %>" />
<title>����ԤԼ-<%= title %></title>
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
            class=orange_><STRONG>����ԤԼ</STRONG></SPAN></DIV></TD>
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
                  class=buleo2_link_9>���������������ύ��ԤԼ������Ľ�Ա�����ǽ���12Сʱ���µ����ȷ�����飻��Ҳ�����µ�<STRONG> <%= qrexian %> </STRONG>��8:30��18:00���ɿͻ��������ֱ��ԤԼ��<BR>
                                  </SPAN><SPAN 
                  class=red_link_9>���ر����ѡ���ԤԼ�Ľ�Ա���ܻ������ԭ�����ڿ�ʱ���ͻ���޷�Ϊ��ִ�̣����ǻ�����˵���������ʱ�Ƽ�ͬ��ˮƽ��Ա����ѡ�񡣽�����ԤԼ�����Ա�����±�ţ�</SPAN></DIV></TD>
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
                                  <TD background=images/hen1.gif colSpan=2 height=25><DIV class=white_link_9 align=center><STRONG>��Ա����ԤԼ </STRONG></DIV></TD>
                                </TR>
                                <TR>
                                  <TD width=120 height=25 bgcolor="#E3E3E3"><DIV align=right>��Ա��ţ�</DIV></TD>
                                  <TD width=356 bgcolor="#E3E3E3"><DIV align=left>
                                    <INPUT type=hidden value=<%= id %> name=teacher_id>
                                    &nbsp; T<%= id %> </DIV></TD>
                                </TR>
                                <TR>
                                  <TD colSpan=2 height=30><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                                      <TBODY>
                                        <TR bgColor=#eeeeee>
                                          <TD width="27%" height=35><DIV align=right>��ϵ�ˣ�</DIV></TD>
                                          <TD width="73%" bgColor=#eeeeee><DIV align=left>
                                              <INPUT id=name3 maxLength=30 size=12 
                  name=name>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>�绰��</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <INPUT maxLength=50 name=telephone_home>
                                            ��ע��(լ����)</DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#eeeeee height=35><DIV align=right>�ƶ��绰��</DIV></TD>
                                          <TD bgColor=#eeeeee><DIV align=left>
                                              <INPUT maxLength=30 size=25 name=mobile>
                                          </DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>ѧԱ�Ա�</DIV></TD>
                                          <TD bgColor=#e3e3e3><DIV align=left>
                                              <INPUT type=radio value=�� name=student_sex>
                                            �С�
                                            <INPUT type=radio value=Ů name=student_sex>
                                            Ů</DIV></TD>
                                        </TR>
                                        <TR>
                                          <TD bgColor=#e3e3e3 height=35><DIV align=right>����λ�ã�</DIV></TD>
                                          <TD bgColor=#e3e3e3><INPUT size=30 name=road1>
                                            �����磺��·����ڣ�</TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>ѧԱ�꼶��</DIV></TD>
                                          <TD><DIV align=left>
                                              <SELECT size=1 name=grade>
                                                <OPTION value="" 
                    selected>��ѡ��</OPTION>
                                                <OPTION value=�׶�>�׶�</OPTION>
                                                <OPTION 
                    value=һ�꼶>һ�꼶</OPTION>
                                                <OPTION value=���꼶>���꼶</OPTION>
                                                <OPTION value=���꼶>���꼶</OPTION>
                                                <OPTION 
                    value=���꼶>���꼶</OPTION>
                                                <OPTION value=���꼶>���꼶</OPTION>
                                                <OPTION value=���꼶>���꼶</OPTION>
                                                <OPTION value=��һ>��һ</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=��һ>��һ</OPTION>
                                                <OPTION value=�߶�>�߶�</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=��У��>��У��</OPTION>
                                                <OPTION value=�Կ���>�Կ���</OPTION>
                                                <OPTION value=��һ>��һ</OPTION>
                                                <OPTION value=���>���</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=����>����</OPTION>
                                                <OPTION value=�����>�����</OPTION>
                                                <OPTION 
                  value=����>�������</OPTION>
                                              </SELECT>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=35><DIV align=right>�ڿ�ʱ�䣺</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA id=anpai name=anpai rows=5 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>���ѧ�ƣ�</DIV></TD>
                                          <TD><DIV align=left>
                                              <INPUT maxLength=100 size=21 name=subject>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=110><DIV align=right>ѧԱ���������<BR>
                                            ��ѧԱ�Ļ�����<BR>
                                            ѧϰ״����<BR>
                                            �Ը�ȡ���</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA id=textarea2 name=explain rows=5 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>ѡ���Ա�Ա�</DIV></TD>
                                          <TD><DIV align=left>
                                              <INPUT type=radio value=Ů��Ա name=teacher_sex>
                                            ҪŮ��Ա��
                                            <INPUT type=radio value=�н�Ա name=teacher_sex>
                                            Ҫ�н�Ա��
                                            <INPUT 
                  type=radio CHECKED value=����ν name=teacher_sex>
                                            ����ν</DIV></TD>
                                        </TR>
                                        <TR bgColor=#e3e3e3>
                                          <TD height=90><DIV align=right>�Խ�Ա����Ҫ��</DIV></TD>
                                          <TD><DIV align=left>
                                              <TEXTAREA name=other rows=4 cols=35></TEXTAREA>
                                          </DIV></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">��ѧ��ʽ��</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><label>
                                            <input name="fangshi" type="text" id="fangshi">
                                          </label></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">���޳�����</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><label>
                                            <input type="radio" name="chetie" value="��">
                                            </label>
                                            ��
                                            <label>
                                              <input name="chetie" type="radio" value="��" checked>
                                              ��</label></TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><div align="right">��ʱ��ʽ��</div></TD>
                                          <TD align="left" bgColor=#e3e3e3><input name=price id="price" size=16 maxlength=30>
��Ԫ/Сʱ</TD>
                                        </TR>
                                        <TR bgColor=#eeeeee>
                                          <TD height=35><DIV align=right>���·�ʽ��</DIV></TD>
                                          <TD align="left" bgColor=#e3e3e3><DIV align=left>
                                              <INPUT name=price2 id="price2" size=16 maxLength=30>
                                            ��Ԫ/��</DIV></TD>
                                        </TR>
                                      </TABLE>
                                      <DIV align=center>
                                        <INPUT type=submit value=���ύ�� name=Submit2>
                                        ��<A href="javascript:window.close()">�رմ���</A>��</DIV></TD>
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
