<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<% 
acction=Trim(Request.Form("acction"))

if acction<>"" Then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from dingdan where id="&acction,conn,1,3
rs("xianshi")=trim(request.form("xianshi"))
rs("username")=trim(request.form("name"))
rs("tel")=trim(request.form("telephone_home"))
rs("shouji")=trim(request.form("mobile"))
rs("sex")=trim(request.form("student_sex"))
rs("dizhi")=trim(request.form("dizhi1"))
rs("dizhi1")=trim(request.form("dizhi"))
rs("nianji")=trim(request.form("grade"))
rs("anpai")=trim(request.form("anpai"))
rs("xueke")=trim(request.form("xueke"))
rs("qingkuang")=trim(request.form("explain"))
rs("jsex")=trim(request.form("teacher_sex"))
rs("jqingkuang")=trim(request.form("other"))
rs("fangshi")=trim(request.form("fangshi"))
rs("baochou")=trim(request.form("price"))
rs("baochou2")=trim(request.form("price2"))
rs("chetie")=trim(request.form("chetie"))
rs("zhaungtai")=trim(request.form("zhaungtai"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     操作成功 ！');history.go(-1);</script>"
response.End
end if
%>
<%
id=Trim(Request.QueryString("id"))
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from dingdan where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<form id="form1" name="form1" method="post" action="dingdanshow.asp"><table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        订单详细 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">是否显示：</div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><label>
              <input type="radio" name="xianshi" value="是" <% If rs("xianshi")="是" Then %>checked <% End If %> />
              是
              <input type="radio" name="xianshi" value="否"  <% If rs("xianshi")="否" Then %>checked <% End If %>/>
            否</label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" align="right" bgcolor="#EEEEEE" class="ziti03">定单状态：</td>
            <td bgcolor="#EEEEEE" class="ziti03"><label>
              <select name="zhaungtai" id="zhaungtai">
                <option value="<%= rs("zhaungtai") %>" selected="selected"><%= rs("zhaungtai") %></option>
                <option value="未处理">未处理</option>
                <option value="已结单">已结单</option>
              </select>
            </label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">订单编号：</div></td>
            <td bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;S<%= rs("id") %></span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" class="ziti03"><div align="right">联系人：</div></td>
            <td width="73%" bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input 
                  name="name" id="name3" value="<%= rs("username") %>" size="12" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">电话：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="telephone_home" value="<%= rs("tel") %>" maxlength="50" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#eeeeee" class="ziti03"><div align="right">移动电话：</div></td>
            <td bgcolor="#eeeeee" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="mobile" value="<%= rs("shouji") %>" size="25" maxlength="30" />
            </div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">学员性别：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;
              <input type="radio" value="男" name="student_sex"  <% If rs("sex")="男" Then %>checked <% End If %>/>
男　 
<input type="radio" value="女" name="student_sex" <% If rs("sex")="女" Then %>checked <% End If %> />
女</span></div></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#EEEEEE" class="ziti03"><div align="right">预约教员： </div></td>
            <td bgcolor="#EEEEEE" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("yuyue") %></span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">所在区域：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt">
              <input name="dizhi1" id="dizhi1" value="<%= rs("dizhi") %>" size="21" maxlength="100" />
            </span></td>
          </tr>
          <tr>
            <td height="35" bgcolor="#e3e3e3" class="ziti03"><div align="right">具体位置：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span style="font-size: 10pt"> &nbsp;
              <input name="dizhi" id="dizhi" value="<%= rs("dizhi1") %>" size="21" maxlength="100" />
            </span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">学员年级：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <select size="1" name="grade">
                <option value="<%= rs("nianji") %>" 
                    selected="selected"><%= rs("nianji") %></option>
                <option value="幼儿">幼儿</option>
                <option 
                    value="一年级">一年级</option>
                <option value="二年级">二年级</option>
                <option value="三年级">三年级</option>
                <option 
                    value="四年级">四年级</option>
                <option value="五年级">五年级</option>
                <option value="六年级">六年级</option>
                <option value="初一">初一</option>
                <option value="初二">初二</option>
                <option value="初三">初三</option>
                <option value="高一">高一</option>
                <option value="高二">高二</option>
                <option value="高三">高三</option>
                <option value="三校生">三校生</option>
                <option value="自考生">自考生</option>
                <option value="大一">大一</option>
                <option value="大二">大二</option>
                <option value="大三">大三</option>
                <option value="大四">大四</option>
                <option value="成人">成人</option>
                <option value="外国人">外国人</option>
                <option 
                  value="其它">其它情况</option>
              </select>
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="35" class="ziti03"><div align="right">授课安排：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea id="anpai" name="anpai" rows="5" cols="35"><%= rs("anpai") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">求教学科：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <input name="xueke" id="xueke" value="<%= rs("xueke") %>" size="21" maxlength="100" />
            </div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="110" class="ziti03"><div align="right">学员情况描述：<br />
              （学员的基础、<br />
              学习状况、<br />
              性格等。）</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea id="textarea2" name="explain" rows="5" cols="35"><%= rs("qingkuang") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">教员性别：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;<%= rs("jsex") %></span>
              <input type="radio" value="女教员" name="teacher_sex"  <% If rs("jsex")="女教员" Then %>checked <% End If %>/>
要女教员　
<input type="radio" value="男教员" name="teacher_sex" <% If rs("jsex")="男教员" Then %>checked <% End If %>/>
要男教员　
<input 
                  type="radio" value="无所谓" name="teacher_sex" <% If rs("jsex")="无所谓" Then %>checked <% End If %>/>
无所谓</div></td>
          </tr>
          <tr bgcolor="#e3e3e3">
            <td height="90" class="ziti03"><div align="right">对教员其它要求(或 接单 情况 )：</div></td>
            <td class="ziti03"><div align="left"><span style="font-size: 10pt"> &nbsp;</span>
              <textarea name="other" rows="4" cols="35"><%= rs("jqingkuang") %></textarea>
            </div></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">教学方式：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><label><span style="font-size: 10pt">&nbsp;
              <input name="fangshi" type="text" id="fangshi" value="<%= rs("fangshi") %>" />
            </span></label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">有无车贴：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><label></label>
              <label>
              <input type="radio" name="chetie" value="有" <% If rs("chetie")="有" Then %>checked <% End If %>/>
</label>
有
<label>
<input name="chetie" type="radio" value="无" checked="checked" <% If rs("chetie")="无" Then %>checked <% End If %> />
无</label></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">报酬：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><span 
                  class="asho_link_9"><span style="font-size: 10pt">
               &nbsp;
               <input name="price" id="price"  value="<%= rs("baochou") %>" size="16" maxlength="30"/>
            </span>元/小时</span></td>
          </tr>
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">报酬：</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp;
              <input name="price2" id="price2"  value="<%= rs("baochou2") %>" size="16" maxlength="30"/>
            </span>元/月</span></div></td>
          </tr>
        </tbody>
    </table>
      <div align="center"><br />
      
        <input type="submit" name="Submit" value="提交" />
        <input type="hidden" name="acction" value="<%= rs("id") %>" />
      </div>
      
       <label></label>       </td></tr>
</table> 
</form>   <%
	      rs.Close
          set rs=nothing
		 %> 
</body>
</html>

 