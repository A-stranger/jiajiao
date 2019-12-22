/*
*������������������������������������
*��                                                                  ��
*��                eWebEditor - eWebSoft�����ı��༭��               ��
*��                                                                  ��
*��  ��Ȩ����: eWebSoft.com                                          ��
*��                                                                  ��
*��  ��������: eWeb�����Ŷ�                                          ��
*��            email:webmaster@webasp.net                            ��
*��            QQ:589808                                             ��
*��                                                                  ��
*��  �����ַ: [��Ʒ����]http://www.eWebSoft.com/Product/eWebEditor/ ��
*��            [֧����̳]http://bbs.eWebSoft.com/                    ��
*��                                                                  ��
*��  ��ҳ��ַ: http://www.eWebSoft.com/   eWebSoft�ŶӼ���Ʒ         ��
*��            http://www.webasp.net/     WEB������Ӧ����Դ��վ      ��
*��            http://bbs.webasp.net/     WEB����������̳            ��
*��                                                                  ��
*������������������������������������
*/

// ������汾���
var BrowserInfo = new Object() ;
BrowserInfo.MajorVer = navigator.appVersion.match(/MSIE (.)/)[1] ;
BrowserInfo.MinorVer = navigator.appVersion.match(/MSIE .\.(.)/)[1] ;
BrowserInfo.IsIE55OrMore = BrowserInfo.MajorVer >= 6 || ( BrowserInfo.MajorVer >= 5 && BrowserInfo.MinorVer >= 5 ) ;

var yToolbars = new Array();  // ����������

// ���ĵ���ȫ����ʱ�����г�ʼ��
var bInitialized = false;
function document.onreadystatechange(){
	if (document.readyState!="complete") return;
	if (bInitialized) return;
	bInitialized = true;

	var i, s, curr;

	// ��ʼÿ��������
	for (i=0; i<document.body.all.length;i++){
		curr=document.body.all[i];
		if (curr.className == "yToolbar"){
			InitTB(curr);
			yToolbars[yToolbars.length] = curr;
		}
	}

	if (ContentFlag.value=="0") { 
		ContentEdit.value = objContent.value;
		ContentLoad.value = objContent.value;
		ContentFlag.value = "1";
	}

	eWebEditor.document.designMode="On";
	eWebEditor.document.open();
	eWebEditor.document.write(bodyTag+ContentEdit.value)
	eWebEditor.document.close();
	setLinkedField() ;
	eWebEditor.document.body.onpaste = onPaste ;
	eWebEditor.focus();
}

// ��ʼ��һ���������ϵİ�ť
function InitBtn(btn) {
	btn.onmouseover = BtnMouseOver;
	btn.onmouseout = BtnMouseOut;
	btn.onmousedown = BtnMouseDown;
	btn.onmouseup = BtnMouseUp;
	btn.ondragstart = YCancelEvent;
	btn.onselectstart = YCancelEvent;
	btn.onselect = YCancelEvent;
	btn.YUSERONCLICK = btn.onclick;
	btn.onclick = YCancelEvent;
	btn.YINITIALIZED = true;
	return true;
}

//Initialize a toolbar. 
function InitTB(y) {
	// Set initial size of toolbar to that of the handle
	y.TBWidth = 0;
		
	// Populate the toolbar with its contents
	if (! PopulateTB(y)) return false;
	
	// Set the toolbar width and put in the handle
	y.style.posWidth = y.TBWidth;
	
	return true;
}


// Hander that simply cancels an event
function YCancelEvent() {
	event.returnValue=false;
	event.cancelBubble=true;
	return false;
}

// Toolbar button onmouseover handler
function BtnMouseOver() {
	if (event.srcElement.tagName != "IMG") return false;
	var image = event.srcElement;
	var element = image.parentElement;
	
	// Change button look based on current state of image.
	if (image.className == "Ico") element.className = "BtnMouseOverUp";
	else if (image.className == "IcoDown") element.className = "BtnMouseOverDown";

	event.cancelBubble = true;
}

// Toolbar button onmouseout handler
function BtnMouseOut() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;
	yRaisedElement = null;
	
	element.className = "Btn";
	image.className = "Ico";

	event.cancelBubble = true;
}

// Toolbar button onmousedown handler
function BtnMouseDown() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		event.returnValue=false;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;

	element.className = "BtnMouseOverDown";
	image.className = "IcoDown";

	event.cancelBubble = true;
	event.returnValue=false;
	return false;
}

// Toolbar button onmouseup handler
function BtnMouseUp() {
	if (event.srcElement.tagName != "IMG") {
		event.cancelBubble = true;
		return false;
	}

	var image = event.srcElement;
	var element = image.parentElement;

	if (element.YUSERONCLICK) eval(element.YUSERONCLICK + "anonymous()");

	element.className = "BtnMouseOverUp";
	image.className = "Ico";

	event.cancelBubble = true;
	return false;
}

// Populate a toolbar with the elements within it
function PopulateTB(y) {
	var i, elements, element;

	// Iterate through all the top-level elements in the toolbar
	elements = y.children;
	for (i=0; i<elements.length; i++) {
		element = elements[i];
		if (element.tagName == "SCRIPT" || element.tagName == "!") continue;
		
		switch (element.className) {
		case "Btn":
			if (element.YINITIALIZED == null) {
				if (! InitBtn(element)) {
					alert("Problem initializing:" + element.id);
					return false;
				}
			}
			
			element.style.posLeft = y.TBWidth;
			y.TBWidth += element.offsetWidth + 1;
			break;
			
		case "TBGen":
			element.style.posLeft = y.TBWidth;
			y.TBWidth += element.offsetWidth + 1;
			break;
			
		case "TBSep":
			element.style.posLeft = y.TBWidth + 2;
			y.TBWidth += 5;
			break;
			
		case "TBHandle":
			element.style.posLeft = 2;
			y.TBWidth += element.offsetWidth + 7;
			break;
			
		default:
			alert("Invalid class: " + element.className + " on Element: " + element.id + " <" + element.tagName + ">");
			return false;
		}
	}

	y.TBWidth += 1;
	return true;
}


// �������������ύ��reset�¼�
function setLinkedField() {
	if (! objContent) return ;
	var oForm = objContent.form ;
	if (!oForm) return ;
	// ����submit�¼�
	oForm.attachEvent("onsubmit", AttachSubmit) ;
	if (! oForm.submitEditor) oForm.submitEditor = new Array() ;
	oForm.submitEditor[oForm.submitEditor.length] = AttachSubmit ;
	if (! oForm.originalSubmit) {
		oForm.originalSubmit = oForm.submit ;
		oForm.submit = function() {
			if (this.submitEditor) {
				for (var i = 0 ; i < this.submitEditor.length ; i++) {
					this.submitEditor[i]() ;
				}
			}
			this.originalSubmit() ;
		}
	}
	// ����reset�¼�
	oForm.attachEvent("onreset", AttachReset) ;
	if (! oForm.resetEditor) oForm.resetEditor = new Array() ;
	oForm.resetEditor[oForm.resetEditor.length] = AttachReset ;
	if (! oForm.originalReset) {
		oForm.originalReset = oForm.reset ;
		oForm.reset = function() {
			if (this.resetEditor) {
				for (var i = 0 ; i < this.resetEditor.length ; i++) {
					this.resetEditor[i]() ;
				}
			}
			this.originalReset() ;
		}
	}
}

// ����submit�ύ�¼�,��������ύ,����eWebEditor�е�����
function AttachSubmit() { 
	ContentEdit.value = getHTML();
	objContent.value = ContentEdit.value;

	var oForm = objContent.form ;
	if (!oForm) return ;

	//������ֵ�趨������ֵ��102399�����ǵ�������Ϊһ��
	var FormLimit = 50000 ;

	//ȡ��ǰ����ֵ 
	var TempVar = new String ;
	TempVar = objContent.value ;

	// δ�ύ�ɹ��ٴδ���ʱ���ȸ���ֵ
	for (var i=1;i<parent.document.getElementsByName(sContentName).length;i++) {
		parent.document.getElementsByName(sContentName)[i].value = "";
	}

	//�����ֵ�������ƣ���ɶ������
	if (TempVar.length > FormLimit) { 
		objContent.value = TempVar.substr(0, FormLimit) ;
		TempVar = TempVar.substr(FormLimit) ;

		while (TempVar.length > 0) { 
			var objTEXTAREA = objContent.document.createElement("TEXTAREA") ;
			objTEXTAREA.name = sContentName ;
			objTEXTAREA.style.display = "none" ;
			objTEXTAREA.value = TempVar.substr(0, FormLimit) ;
			oForm.appendChild(objTEXTAREA) ;

			TempVar = TempVar.substr(FormLimit) ;
		} 
	} 
} 

// ����Reset�¼�
function AttachReset() {
	if(bEditMode){
		eWebEditor.document.body.innerHTML = ContentLoad.value;
	}else{
		eWebEditor.document.body.innerText = ContentLoad.value;
	}
}

// ճ��ʱ�Զ�����Ƿ���Դ��Word��ʽ
function onPaste() {
	if (config.AutoDetectPasteFromWord && BrowserInfo.IsIE55OrMore) {
		var sHTML = GetClipboardHTML() ;
		var re = /<\w[^>]* class="?MsoNormal"?/gi ;
		if ( re.test( sHTML ) )
		{
			if ( confirm( "��Ҫճ�������ݺ����Ǵ�Word�п������ģ��Ƿ�Ҫ�����Word��ʽ��ճ����" ) )
			{
				cleanAndPaste( sHTML ) ;
				return false ;
			}
		}
	}
	else
		return true ;
}

function GetClipboardHTML() {
	var oDiv = document.getElementById("divTemp")
	oDiv.innerHTML = "" ;
	
	var oTextRange = document.body.createTextRange() ;
	oTextRange.moveToElementText(oDiv) ;
	oTextRange.execCommand("Paste") ;
	
	var sData = oDiv.innerHTML ;
	oDiv.innerHTML = "" ;
	
	return sData ;
}

function cleanAndPaste( html ) {
	// Remove all SPAN tags
	html = html.replace(/<\/?SPAN[^>]*>/gi, "" );
	// Remove Class attributes
	html = html.replace(/<(\w[^>]*) class=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove Style attributes
	html = html.replace(/<(\w[^>]*) style="([^"]*)"([^>]*)/gi, "<$1$3") ;
	// Remove Lang attributes
	html = html.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi, "<$1$3") ;
	// Remove XML elements and declarations
	html = html.replace(/<\\?\?xml[^>]*>/gi, "") ;
	// Remove Tags with XML namespace declarations: <o:p></o:p>
	html = html.replace(/<\/?\w+:[^>]*>/gi, "") ;
	// Replace the &nbsp;
	html = html.replace(/&nbsp;/, " " );
	// Transform <P> to <DIV>
	var re = new RegExp("(<P)([^>]*>.*?)(<\/P>)","gi") ;	// Different because of a IE 5.0 error
	html = html.replace( re, "<div$2</div>" ) ;
	
	insertHTML( html ) ;
}

// �ڵ�ǰ�ĵ�λ�ò���.
function insertHTML(html) {
	if (!validateMode()) return;
	if (eWebEditor.document.selection.type.toLowerCase() != "none")
		eWebEditor.document.selection.clear() ;
	eWebEditor.document.selection.createRange().pasteHTML(html) ; 
}

// ���ñ༭��������
function setHTML(html) {
	if (!validateMode()) return;
	ContentEdit.value = html;
	if(bEditMode){
		eWebEditor.document.body.innerHTML = html;
	}else{
		eWebEditor.document.body.innerText = html;
	}
}

// ȡ�༭��������
function getHTML() {
	if(bEditMode){
		return eWebEditor.document.body.innerHTML;
	}else{
		return eWebEditor.document.body.innerText;
	}
}

// ��β��׷������
function appendHTML(html) {
	if (!validateMode()) return;
	if(bEditMode){
		eWebEditor.document.body.innerHTML += html;
	}else{
		eWebEditor.document.body.innerText += html;
	}
}

// ��Word��ճ����ȥ����ʽ
function PasteWord(){
	if (!validateMode()) return;
	eWebEditor.focus();
	if (BrowserInfo.IsIE55OrMore)
		cleanAndPaste( GetClipboardHTML() ) ;
	else if ( confirm( "�˹���Ҫ��IE5.5�汾���ϣ��㵱ǰ���������֧�֣��Ƿ񰴳���ճ�����У�" ) )
		format("paste") ;
	eWebEditor.focus();
}

// ճ�����ı�
function PasteText(){
	if (!validateMode()) return;
	eWebEditor.focus();
	var sText = HTMLEncode( clipboardData.getData("Text") ) ;
	insertHTML(sText);
	eWebEditor.focus();
}

// ��⵱ǰ�Ƿ�����༭
function validateMode() {
	if (bEditMode) return true;
	alert("��ת��Ϊ�༭״̬�����ʹ�ñ༭���ܣ�");
	eWebEditor.focus();
	return false;
}

// ��ʽ���༭���е�����
function format(what,opt) {
	if (!validateMode()) return;
	eWebEditor.focus();
	if (opt=="RemoveFormat") {
		what=opt;
		opt=null;
	}

	if (opt==null) eWebEditor.document.execCommand(what);
	else eWebEditor.document.execCommand(what,"",opt);
	
	eWebEditor.focus();
}

// ȷ�������� eWebEditor ��
function VerifyFocus() {
	if ( eWebEditor )
		eWebEditor.focus();
}

// �ı�ģʽ�����롢�༭��Ԥ��
function setMode(NewMode){
	if (NewMode!=sCurrMode){
		// ��ͼƬ
		document.all["eWebEditor_CODE"].style.display = "none";
		document.all["eWebEditor_EDIT"].style.display = "none";
		document.all["eWebEditor_VIEW"].style.display = "none";
		document.all["eWebEditor_"+NewMode].style.display = "block";
		// ������
		switch (NewMode){
		case "CODE":
			if (eWebEditor.document.designMode=="On") {
				eWebEditor.document.body.innerText=eWebEditor.document.body.innerHTML;
			}else {
				var temp=eWebEditor.document.body.innerHTML;
				eWebEditor.document.designMode="On";
				eWebEditor.document.open();
				eWebEditor.document.write(bodyTag);
				eWebEditor.document.body.innerText=temp;
				eWebEditor.document.close();
				temp=null;
			}
			bEditMode=false;
			break;
		case "EDIT":
			eWebEditor.document.body.disabled=false;
			if (eWebEditor.document.designMode=="On") {
				eWebEditor.document.body.innerHTML=eWebEditor.document.body.innerText;
			}else {
				var temp=eWebEditor.document.body.innerHTML;
				eWebEditor.document.designMode="On";
				eWebEditor.document.open();
				eWebEditor.document.write(bodyTag);
				eWebEditor.document.body.innerHTML=temp;
				eWebEditor.document.close();
				temp=null;
			}
			bEditMode=true;
			break;
		case "VIEW":
			var temp;
			if(bEditMode){
				temp = eWebEditor.document.body.innerHTML;
			}else{
				temp = eWebEditor.document.body.innerText;
			}
			eWebEditor.document.designMode="off";
			eWebEditor.document.open();
			eWebEditor.document.write(bodyTag+temp);
			eWebEditor.document.close();
			bEditMode=false;
			break;
		}
		sCurrMode=NewMode;
		for (var i=0;i<eWebEditor_Tool.children.length;i++){
			eWebEditor_Tool.children[i].disabled=(!bEditMode);
		}
	}
	eWebEditor.focus();
}

// ��ʾ��ģʽ�Ի���
function ShowDialog(url, width, height, optValidate) {
	if (optValidate) {
		if (!validateMode()) return;
	}
	eWebEditor.focus();
	var arr = showModalDialog(url, window, "dialogWidth:" + width + "px;dialogHeight:" + height + "px;help:no;scroll:no;status:no");
	eWebEditor.focus();
}

// ȫ���༭
function Maximize() {
    window.open("dialog/fullscreen.htm?style="+config.StyleName, 'FullScreen'+sContentName, 'toolbar=no,location=no,directories=no,status=yes,menubar=no,scrollbars=yes,resizable=yes,fullscreen==yes');
}

// �滻�����ַ�
function HTMLEncode(text){
	text = text.replace(/&/g, "&amp;") ;
	text = text.replace(/"/g, "&quot;") ;
	text = text.replace(/</g, "&lt;") ;
	text = text.replace(/>/g, "&gt;") ;
	text = text.replace(/'/g, "&#146;") ;
	text = text.replace(/\ /g,"&nbsp;");
	text = text.replace(/\n/g,"<br>");
	text = text.replace(/\t/g,"&nbsp;&nbsp;&nbsp;&nbsp;");
	return text;
}

// �����������
function insert(what) {
	if (!validateMode()) return;
	eWebEditor.focus();
	var sel = eWebEditor.document.selection.createRange();

	switch(what){
	case "excel":		// ����EXCEL���
		insertHTML("<object classid='clsid:0002E510-0000-0000-C000-000000000046' id='Spreadsheet1' codebase='file:\\Bob\software\office2000\msowc.cab' width='100%' height='250'><param name='HTMLURL' value><param name='HTMLData' value='&lt;html xmlns:x=&quot;urn:schemas-microsoft-com:office:excel&quot;xmlns=&quot;http://www.w3.org/TR/REC-html40&quot;&gt;&lt;head&gt;&lt;style type=&quot;text/css&quot;&gt;&lt;!--tr{mso-height-source:auto;}td{black-space:nowrap;}.wc4590F88{black-space:nowrap;font-family:����;mso-number-format:General;font-size:auto;font-weight:auto;font-style:auto;text-decoration:auto;mso-background-source:auto;mso-pattern:auto;mso-color-source:auto;text-align:general;vertical-align:bottom;border-top:none;border-left:none;border-right:none;border-bottom:none;mso-protection:locked;}--&gt;&lt;/style&gt;&lt;/head&gt;&lt;body&gt;&lt;!--[if gte mso 9]&gt;&lt;xml&gt;&lt;x:ExcelWorkbook&gt;&lt;x:ExcelWorksheets&gt;&lt;x:ExcelWorksheet&gt;&lt;x:OWCVersion&gt;9.0.0.2710&lt;/x:OWCVersion&gt;&lt;x:Label Style='border-top:solid .5pt silver;border-left:solid .5pt silver;border-right:solid .5pt silver;border-bottom:solid .5pt silver'&gt;&lt;x:Caption&gt;Microsoft Office Spreadsheet&lt;/x:Caption&gt; &lt;/x:Label&gt;&lt;x:Name&gt;Sheet1&lt;/x:Name&gt;&lt;x:WorksheetOptions&gt;&lt;x:Selected/&gt;&lt;x:Height&gt;7620&lt;/x:Height&gt;&lt;x:Width&gt;15240&lt;/x:Width&gt;&lt;x:TopRowVisible&gt;0&lt;/x:TopRowVisible&gt;&lt;x:LeftColumnVisible&gt;0&lt;/x:LeftColumnVisible&gt; &lt;x:ProtectContents&gt;False&lt;/x:ProtectContents&gt; &lt;x:DefaultRowHeight&gt;210&lt;/x:DefaultRowHeight&gt; &lt;x:StandardWidth&gt;2389&lt;/x:StandardWidth&gt; &lt;/x:WorksheetOptions&gt; &lt;/x:ExcelWorksheet&gt;&lt;/x:ExcelWorksheets&gt; &lt;x:MaxHeight&gt;80%&lt;/x:MaxHeight&gt;&lt;x:MaxWidth&gt;80%&lt;/x:MaxWidth&gt;&lt;/x:ExcelWorkbook&gt;&lt;/xml&gt;&lt;![endif]--&gt;&lt;table class=wc4590F88 x:str&gt;&lt;col width=&quot;56&quot;&gt;&lt;tr height=&quot;14&quot;&gt;&lt;td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/body&gt;&lt;/html&gt;'> <param name='DataType' value='HTMLDATA'> <param name='AutoFit' value='0'><param name='DisplayColHeaders' value='-1'><param name='DisplayGridlines' value='-1'><param name='DisplayHorizontalScrollBar' value='-1'><param name='DisplayRowHeaders' value='-1'><param name='DisplayTitleBar' value='-1'><param name='DisplayToolbar' value='-1'><param name='DisplayVerticalScrollBar' value='-1'> <param name='EnableAutoCalculate' value='-1'> <param name='EnableEvents' value='-1'><param name='MoveAfterReturn' value='-1'><param name='MoveAfterReturnDirection' value='0'><param name='RightToLeft' value='0'><param name='ViewableRange' value='1:65536'></object>");
		break;
	case "nowdate":		//���뵱ǰϵͳ����
		var d = new Date();
		insertHTML(d.toLocaleDateString());
		break;
	case "nowtime":		//���뵱ǰϵͳʱ��
		var d = new Date();
		insertHTML(d.toLocaleTimeString());
		break;
	case "br":			//���뻻�з�
		insertHTML("<br>")
		break;
	case "code":		//����Ƭ����ʽ
		insertHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #6595d6; TABLE-LAYOUT: fixed"><tr><td bgcolor=#e8f4ff style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">�����Ǵ���Ƭ�Σ�</font><br>'+HTMLEncode(sel.text)+'</td></tr></table>');
		break;
	case "quote":		//����Ƭ����ʽ
		insertHTML('<table width=95% border="0" align="Center" cellpadding="6" cellspacing="0" style="border: 1px Dotted #6595d6; TABLE-LAYOUT: fixed"><tr><td bgcolor=#e8f4ff style="WORD-WRAP: break-word"><font style="color: #990000;font-weight:bold">����������Ƭ�Σ�</font><br>'+HTMLEncode(sel.text)+'</td></tr></table>');
		break;
	case "big":
		insertHTML("<big>" + sel.text + "</big>");
		break;
	case "small":
		insertHTML("<small>" + sel.text + "</small>");
		break;
	default:
		alert("����������ã�");
		break;
	}
	sel=null;
}