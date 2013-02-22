<%@page pageEncoding="GBK"%>
<%@ include file="../tiles/include.jsp"%>

<%@ include file="/pages/common/messages.jsp"%>
<%@ include file="/pages/common/meta.jsp"%>
<html>
<head>
<title>上海复旦大学物料库存及仓储管理系统</title>
<meta http-equiv="Content-Type" content="text/html;">

<%@ include file="/pages/components/calendar/calendar.jsp"%>
<link href="<c:url value="/pages/styles/style.css"/>" type="text/css" rel=stylesheet>
<link href="<c:url value="/pages/styles/extremecomponents.css"/>" type="text/css" rel=stylesheet>
<script src="<c:url value="/pages/scripts/admin.js"/>" type="text/javascript"></script>
<script>
function back(){
	yhpsearchForm.action="<c:url value="/lf/untreadAction.do"/>?method=loadUntread4RegSearch";
	yhpsearchForm.submit();
}
</script>
</head>
<body  bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<br>
<html:form action="/lf/yhpAction" method="post">
<jodd:form bean="request">
            <input type="hidden" name="ec_i" />
            <input type="hidden" name="ec_p" />
            <input type="hidden" name="ec_crd" />
            <input type="hidden" name="search_untreadId" />
            <input type="hidden" name="search_rtnPName" />
            <input type="hidden" name="search_regTimeStart" />     
            <input type="hidden" name="search_regTimeEnd" />
</jodd:form>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="25" align="left" valign="top"><table width="150" height="20" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="10" bgcolor="#0066CA">&nbsp;</td>
            <td bgcolor="#0066CA" class="mediumwhite">易耗品信息</td>
            <td width="27"><img src="<c:url value="/pages/style/default/images/tabletitle.jpg"/>" width="27" height="20"></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td height="40" align="center" valign="top"><table 
        width=100% border=1 align=center 
      cellpadding=1 cellspacing=0 bordercolor=#FFFFFF       id=submenu1>
          <tbody><input type="hidden" name="querymode" value="<%=request.getAttribute("querymode")==null?"1":request.getAttribute("querymode")%>">
            <tr align="center" valign=center>
              <td width="15%" height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >易耗品批号</td>
              <td width="20%" align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_bh" styleClass="input_box" maxlength="32" /></td>                            
              <td width="15%" align="left" valign="middle" class="tableHeader2" >易耗品名称</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_wlmc" styleClass="input_box" maxlength="100" />
              </td>
            </tr>
            <tr align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >编号范围</td>
              <td align="left" valign="middle" class="tableHeader3" colspan="3" nowrap>
              <html:text property="search_bNo" styleClass="input_box" maxlength="50" />
              &nbsp;--&nbsp;
              <html:text property="search_eNo" styleClass="input_box" maxlength="50" /></td>
            </tr>
            <tr align="center" valign=center>              
              <td align="left" valign="middle" class="tableHeader2" >合同号</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_hth" styleClass="input_box" maxlength="100" /></td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >生产厂家</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_sccj" styleClass="select01">
                <html:option value="">请选择	</html:option>	
				  <html:options collection="sccjlist" labelProperty="companyName" property="id" />
               </html:select></td>
            </tr>
            <tr id="tr1" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >来源</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_ly" styleClass="select01">
                <html:option value="">请选择	</html:option>
				  <html:options collection="sourcelist" labelProperty="dictCaption" property="dictValue" />
              </html:select>
              </td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >到货号</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <html:text property="search_dhh" styleClass="input_box" maxlength="50" /></td>            
            </tr>
            <tr id="tr2" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >进货数量从</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_yhpNumc" styleClass="input_box" maxlength="50" /></td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >进货数量到</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_yhpNumd" styleClass="input_box" maxlength="50" /></td>              
           </tr>
           <tr id="tr3" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >当前数量从</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_curNumc" styleClass="input_box" maxlength="50" /></td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >当前数量到</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_curNumd" styleClass="input_box" maxlength="50" /></td>              
           </tr>
           <tr id="tr4" align="center" valign=center>              
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >供应商</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_gys" styleClass="select01">
                <html:option value="">请选择	</html:option>	
				  <html:options collection="gyslist" labelProperty="companyName" property="id" />
              </html:select>
              </td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >用途大类</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_ytdl" styleClass="select01">
                <html:option value="">请选择	</html:option>	
				  <html:options collection="uclist" labelProperty="usageCategoryName" property="id" />
              </html:select>
              </td>            
           </tr>
           <tr id="tr5" align="center" valign=center>              
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >到货日期从</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_dhrqc" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_dhrqc" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="开始日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>              
              <td align="left" valign="middle" class="tableHeader2" >到货日期到</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_dhrqd" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_dhrqd" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="结束日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>              
           </tr>
           <script type="text/javascript">
                new calendar("search_dhrqc", "select_dhrqc", "%Y-%m-%d");
                new calendar("search_dhrqd", "select_dhrqd", "%Y-%m-%d");
           </script>
           <tr id="tr6" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >采购日期从</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_cgrqc" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_cgrqc" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="开始日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >采购日期到</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_cgrqd" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_cgrqd" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="开始日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>
           </tr>
           <tr id="tr7" align="center" valign=center> 
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >入账日期从</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_rzrqc" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_rzrqc" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="结束日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>  
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >入账日期到</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_rzrqd" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_rzrqd" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="结束日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>       
            </tr>
            <tr id="tr8" align="center" valign=center>
              <td align="left" valign="middle" class="tableHeader2" >到发票日期从</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_dfprqc" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_dfprqc" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="结束日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>         
              <td align="left" valign="middle" class="tableHeader2" >到发票日期到</td>
              <td align="left" valign="middle" class="tableHeader3" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td width="130">
                    <html:text property="search_dfprqd" styleClass="input_box" maxlength="50" readonly="true"/> 
                    </td>
                    <td><img id="select_dfprqd" src="<c:url value="/pages/components/calendar/skins/aqua/cal.gif"/>" border="0" alt="结束日期" style="cursor:pointer"></td>
                 </tr>
                </table>
              </td>              
            </tr>
            <script type="text/javascript">                
			    new calendar("search_cgrqc", "select_cgrqc", "%Y-%m-%d");
                new calendar("search_cgrqd", "select_cgrqd", "%Y-%m-%d");
                new calendar("search_rzrqc", "select_rzrqc", "%Y-%m-%d");
                new calendar("search_rzrqd", "select_rzrqd", "%Y-%m-%d");
                new calendar("search_dfprqc", "select_dfprqc", "%Y-%m-%d");
                new calendar("search_dfprqd", "select_dfprqd", "%Y-%m-%d");				
            </script>
           <tr id="tr9" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >采购单价从</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_djc" styleClass="input_box" maxlength="50" />&nbsp;元</td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >采购单价到</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_djd" styleClass="input_box" maxlength="50" />&nbsp;元</td>              
           </tr> 
           <tr id="tr10" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >发票号码</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_fphm" styleClass="input_box" maxlength="50" /></td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >经费来源</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_jfly" styleClass="input_box" maxlength="50" /></td>
           </tr>
           <tr id="tr11" align="center" valign=center> 
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >采购经办人</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_cgjbr" styleClass="input_box" maxlength="50" /></td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >到货经办人</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:text property="search_dhjbr" styleClass="input_box" maxlength="50" /></td>
           </tr>
           <tr id="tr12" align="center" valign=center>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >派发对象</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_pfdx" styleClass="select01">
                <html:option value="">请选择</html:option>	
				  <html:options collection="pflist" labelProperty="dictCaption" property="dictValue" />
              </html:select>
              </td>
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >所处校区</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_xq" styleClass="select01" onchange="changeBd(this)">
                <html:option value="">请选择</html:option>	
				  <html:options collection="arealist" labelProperty="dictCaption" property="dictValue" />
              </html:select>
              </td>                          
           </tr>
           <tr id="tr13" align="center" valign=center>
              <td align="left" valign="middle" class="tableHeader2" >所在楼宇</td>
              <td align="left" valign="middle" class="tableHeader3" >
              <html:select property="search_louyu" styleClass="select01">
                <html:option value="">请选择</html:option>	
				  <html:options collection="buildinglist" labelProperty="lymc" property="id" />
              </html:select>
              </td> 
              <td height="26" align="right" valign="middle" bgcolor="#FFFFFF" class="tableHeader2" >机房/库房</td>
              <td align="left" valign="middle" class="tableHeader3" >              
              <html:text property="search_jfkf" styleClass="input_box" maxlength="100" /></td>
           </tr>              
          </tbody>
        </table>        </td>
      </tr>
      <tr>
        <td height="40" align="right" valign="middle" class="tdborder02">
<input name="bquerymode" type="button" class="button_nor" value="高级查询" onclick="ChangeQueryMode(this)">
&nbsp;
<input name="Submit" type="button" class="button_nor" value="查 询" onclick="DoFind()">
&nbsp;
<input name="Submit2" type="button" class="button_nor" value="重 置" onclick="DoClear()"></td>

      </tr>
      </html:form>
      
      <tr>
        <td height="35" align="center" valign="middle" class="mediumblack">易耗品列表</td>
      </tr>
      <jodd:form bean="request">      
      <tr>
        <td height="20" align="center" valign="middle">
         <ec:table items="yhplist" var="yhpInfo" rowsDisplayed="10" action="yhpAction.do?method=search4YHPList" >
			
				<ec:exportXls fileName="yhpList.xls" tooltip="导出 Excel" />
				<ec:row>
				    <ec:column property="checkbox" title="选择" sortable="false" viewsAllowed="html" width="30" headerStyle="text-align:center" style="text-align: left">
						<input type="checkbox" name="cbgroup" value="${yhpInfo.id}" style="border:0px" onClick="doSel(this)" />
					</ec:column>
					<ec:column property="id" title="易耗品批号" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="80" 
					>
					<a href="javascript:DoView('${yhpInfo.id}')">${yhpInfo.id}</a>
					</ec:column>					
					<ec:column property="wlmc" title="品名" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="90" 
					/>					
					<ec:column property="deptName" title="资产所属" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="110" 
					/>
					<ec:column property="yhpSource" title="来源" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="40" 
					/>
					<ec:column property="yhpNum" title="进货数量" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="60" 
					/>
					<ec:column property="beginNo" title="起始编号"  
						headerStyle="text-align:center" 
						style="text-align: left"
						width="60" 
					/>
					<ec:column property="endNo" title="结束编号"  
						headerStyle="text-align:center" 
						style="text-align: left"
						width="60" 
					/>		
	<%if(request.getAttribute("ifLimit").equals("0")){%>
					<ec:column property="curNum" title="当前数量" 
					    headerStyle="text-align:center" 
					    style="text-align: left"
					    width="60" />
	<% }%>	
										
				</ec:row>
			</ec:table>
        </td>
      </tr>
      <%if(((java.util.ArrayList)request.getAttribute("yhplist")).size()>0){%>
              <tr>
                 <td><table width=100% border="0">
        	<tr>
        		<td height="40" align="left" valign="middle">
          			<input name="selectall" type="button" class="button_nor" value="全 选" onClick="DoSelectall()" ><input name="notselectall" type="button" class="button_nor" value="全不选" onClick="DoNotselectall()" ><input name="reverseselect" type="button" class="button_nor" value="反 选" onClick="DoReverseselect()" >
        		</td>
        <td height="40" align="right" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;
          <input name="Submit33" type="button" class="button_nor" value="退货登记" onclick="add()"><input name="Submit31" type="button" class="button_nor" value=" 返 回" onclick="back()"></td>
                    	</tr>
		</table></td>
      </tr>
      <%}%>
      </jodd:form>
    </table></td>
  </tr>
</table>

</body>
</html>

<script>

    var datacount2=0;
    dataset2=new Array();
    
   <%
   int count2=0;
   String[][] resultset2=null;
   if(request.getAttribute("ablist")!=null)
       resultset2=(String[][])request.getAttribute("ablist");//读取校区、楼宇对应数据
   
   if(resultset2!=null){
     for(count2=0;count2<resultset2.length;count2++)
     {
     %>
      dataset2[<%=count2%>] = new Array("<%=resultset2[count2][0]%>","<%=resultset2[count2][1]%>","<%=resultset2[count2][2]%>");//产生javascript二维数组，对应楼宇id、楼宇名称、校区id
     <%
     }
   }
   %>
   datacount2=<%=count2%>;
   
</script>

<SCRIPT language=javascript>

setTimeout('init()',10);
function init(){
    
  var area=document.yhpsearchForm.elements["search_xq"].value;
  var building=document.yhpsearchForm.elements["search_louyu"].value;
  
  if(area!='')
      changeBd(document.yhpsearchForm.elements["search_xq"]);
  for(var j=0;j<document.yhpsearchForm.elements["search_louyu"].length;j++){
      if(document.yhpsearchForm.elements["search_louyu"][j].value==building)
	     document.yhpsearchForm.elements["search_louyu"][j].selected=true;
					
  }
  
  if(document.yhpsearchForm.querymode.value=='1'){
      document.yhpsearchForm.bquerymode.value="高级查询";
      tr1.style.display='none';
      tr2.style.display='none';
      tr3.style.display='none';       
      tr4.style.display='none';
      tr5.style.display='none';
      tr6.style.display='none';
      tr7.style.display='none';
      tr8.style.display='none';
      tr9.style.display='none';
      tr10.style.display='none';
      tr11.style.display='none';
      tr12.style.display='none';
      tr13.style.display='none';
  }
  else if(document.yhpsearchForm.querymode.value=='2'){
      document.yhpsearchForm.bquerymode.value="简单查询";
      tr1.style.display='';
      tr2.style.display='';
      tr3.style.display=''; 
      tr4.style.display='';
      tr5.style.display='';
      tr6.style.display='';
      tr7.style.display='';
      tr8.style.display='';
      tr9.style.display='';
      tr10.style.display='';
      tr11.style.display='';
      tr12.style.display='';
      tr13.style.display='';
  }
  
}  
function DoFind(){

    yhpsearchForm.action="equipmentAction.do?method=search4YHPList";
    yhpsearchForm.submit();

}
function add(){
	  var sflag = 0;
  if(document.all.cbgroup.checked==true){
    ec.action = "<c:url value="/lf/untreadAction.do"/>?method=addUntread";
	ec.submit();
  }else{
          for(var i=0;i<document.all.cbgroup.length;i++){
              if(document.all.cbgroup[i].checked){
                   sflag=sflag+1;                                                   
              }
          }           
         if(sflag>1){
    ec.action = "<c:url value="/lf/untreadAction.do"/>?method=addUntread";
	ec.submit();
          }else if(sflag<1){
          	  alert("请选择易耗品信息！");
          }else{
    ec.action = "<c:url value="/lf/untreadAction.do"/>?method=addUntread";
	ec.submit();
          } 
  }
}

function changeBd(sel){

   var id;        
   var i;        

   id=sel.options[sel.selectedIndex].value;
        
   document.yhpsearchForm.elements["search_louyu"].length=1; //清空原楼宇列表        
   
   if(id!="")
      for (i=0;i < datacount2; i++)
      {
         if (dataset2[i][2] == id)
          {   
             document.yhpsearchForm.elements["search_louyu"].options[document.yhpsearchForm.elements["search_louyu"].length]=new Option(dataset2[i][1], dataset2[i][0]);              
                
          }
      }
    else{
       for (i=0;i < datacount2; i++)
      {
          document.yhpsearchForm.elements["search_louyu"].options[document.yhpsearchForm.elements["search_louyu"].length]=new Option(dataset2[i][1], dataset2[i][0]);
        
      }
     
    }
   

}

function doSel(sel){
//alert(sel.value);
}

function DoSelectall(){

  if(document.all.cbgroup!=null&&document.all.cbgroup.length>1){   
       for(var i=0;i<document.all.cbgroup.length;i++){
              document.all.cbgroup[i].checked=true;
       }
       
  }
  else if(document.all.cbgroup!=null){
       document.all.cbgroup.checked=true;       
  }
  else{
       alert("当前无记录！");
  }
  

}

function DoNotselectall(){
  
  if(document.all.cbgroup!=null&&document.all.cbgroup.length>1){   
       for(var i=0;i<document.all.cbgroup.length;i++){
              document.all.cbgroup[i].checked=false;
       }
       
  }
  else if(document.all.cbgroup!=null){
       document.all.cbgroup.checked=false;       
  }
  else{
       alert("当前无记录！");
  }

}

function DoReverseselect(){
   
   if(document.all.cbgroup!=null&&document.all.cbgroup.length>1){   
       for(var i=0;i<document.all.cbgroup.length;i++){
           if(document.all.cbgroup[i].checked)
              document.all.cbgroup[i].checked=false;
           else if(!document.all.cbgroup[i].checked)
              document.all.cbgroup[i].checked=true;
       }
       
  }
  else if(document.all.cbgroup!=null){
      if(document.all.cbgroup.checked)
          document.all.cbgroup.checked=false; 
      else if(!document.all.cbgroup.checked)
          document.all.cbgroup.checked=true;    
  }
  else{
       alert("当前无记录！");
  }
  

}

function DoUpdate(){
 
   var sflag=0;
   
   if(document.all.cbgroup.length>1){
          for(var i=0;i<document.all.cbgroup.length;i++){
              if(document.all.cbgroup[i].checked){
                   sflag=sflag+1;                                                   
              }
          }           
         if(sflag==0){
              alert("请选择要修改的易耗品记录！");
              return;
          } 
   }
   else{
        if(!document.all.cbgroup.checked){
              alert("请选择要修改的易耗品记录！");
              return;        
        }
   }
   
   document.forms.ec.action="yhpAction.do?method=load4update";       
   document.forms.ec.submit();
   
  
  
}

function DoView(eno){

    window.open("../gyf/yhpAction.do?method=load4view&yhpNo="+eno,"detailInfo","height=600,width=800,top=0,left=0,toolbar=no,menubar=no,scrollbars=yes, resizable=yes,location=no, status=yes");
   
}

function ChangeQueryMode(btn){

    if(btn.value=='高级查询'){
       document.yhpsearchForm.querymode.value="2";
       btn.value='简单查询';
       tr1.style.display='';
       tr2.style.display='';
       tr3.style.display='';   
       tr4.style.display='';
       tr5.style.display='';
       tr6.style.display='';
       tr7.style.display='';
       tr8.style.display='';
       tr9.style.display='';
       tr10.style.display='';
       tr11.style.display='';
       tr12.style.display='';
       tr13.style.display='';
    }
    else if(btn.value=='简单查询'){
       document.yhpsearchForm.querymode.value="1";
       btn.value='高级查询';
       tr1.style.display='none';
       tr2.style.display='none';
       tr3.style.display='none'; 
       tr4.style.display='none';
       tr5.style.display='none';
       tr6.style.display='none';
       tr7.style.display='none';
       tr8.style.display='none';
       tr9.style.display='none';
       tr10.style.display='none';
       tr11.style.display='none';
       tr12.style.display='none';
       tr13.style.display='none';
    }

}

function DoClear(){

    document.yhpsearchForm.elements["search_bh"].value="";    
    document.yhpsearchForm.elements["search_wlmc"].value="";
    document.yhpsearchForm.elements["search_bNo"].value="";
    document.yhpsearchForm.elements["search_eNo"].value="";
    document.yhpsearchForm.elements["search_hth"].value="";
    document.yhpsearchForm.elements["search_sccj"].value="";
    document.yhpsearchForm.elements["search_sccj"].options[0].selected=true;
    
    document.yhpsearchForm.elements["search_ly"].value="";
    document.yhpsearchForm.elements["search_ly"].options[0].selected=true;    
    document.yhpsearchForm.elements["search_gys"].value="";
    document.yhpsearchForm.elements["search_gys"].options[0].selected=true;     
    document.yhpsearchForm.elements["search_dhh"].value="";
    document.yhpsearchForm.elements["search_ytdl"].value="";
    document.yhpsearchForm.elements["search_ytdl"].options[0].selected=true; 
    document.yhpsearchForm.elements["search_yhpNumc"].value="";
    document.yhpsearchForm.elements["search_yhpNumd"].value="";
    document.yhpsearchForm.elements["search_curNumc"].value="";
    document.yhpsearchForm.elements["search_curNumd"].value="";
    document.yhpsearchForm.elements["search_dhrqc"].value="";
    document.yhpsearchForm.elements["search_dhrqd"].value="";
    document.yhpsearchForm.elements["search_cgrqc"].value="";
    document.yhpsearchForm.elements["search_rzrqc"].value="";
    document.yhpsearchForm.elements["search_dfprqc"].value="";
    document.yhpsearchForm.elements["search_cgrqd"].value="";
    document.yhpsearchForm.elements["search_rzrqd"].value="";
    document.yhpsearchForm.elements["search_dfprqd"].value="";
    document.yhpsearchForm.elements["search_djc"].value="";
    document.yhpsearchForm.elements["search_djd"].value="";
    document.yhpsearchForm.elements["search_fphm"].value="";
    document.yhpsearchForm.elements["search_jfly"].value="";
    document.yhpsearchForm.elements["search_cgjbr"].value="";
    document.yhpsearchForm.elements["search_dhjbr"].value="";
    document.yhpsearchForm.elements["search_pfdx"].value="";
    document.yhpsearchForm.elements["search_pfdx"].options[0].selected=true;
    document.yhpsearchForm.elements["search_xq"].value="";
    document.yhpsearchForm.elements["search_xq"].options[0].selected=true;
    document.yhpsearchForm.elements["search_louyu"].value="";
    document.yhpsearchForm.elements["search_louyu"].options[0].selected=true;
    document.yhpsearchForm.elements["search_jfkf"].value="";
    
}

</SCRIPT>

