<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%!
	public static final int COUNT=10;//��ȡ������Ʒ��
	public static final int CATEGORY_ID=2;//�Ƽ���ƷID
%>

<%
	List<Product> latestProducts=ProductMgr.getInstance().getLatestProducts(COUNT);
	List<Product> recommendProducts=ProductMgr.getInstance().getRecommendProducts(CATEGORY_ID);
%>

<html><head><title>ShopXp�����̳�--��ҳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="images/css.css" rel="stylesheet" type="text/css">
<script language="javascript">
function url()
{

}
</script>
</head>
<body leftmargin="0" topmargin="0" onLoad="url()" marginheight="0" marginwidth="0">
<table align="center" border="0" cellpadding="0" cellspacing="0" height="66" width="985">
  <tbody><tr>
    <td rowspan="2" width="21%"><img src="images/logo.gif" alt="$weburl$" border="0"></td>
    <td colspan="2" height="33"><table align="center" border="0" cellpadding="0" cellspacing="0" height="25" width="630">
      <tbody><tr>
        <td width="72"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/index.html"><img src="images/shouye.gif" border="0" height="23" width="50"></a></td>
        <td width="104"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpbuy.asp?action=show"><img src="images/mycar.gif" border="0" height="23" width="90"></a></td>
        <td width="71"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xsearchp.asp"><img src="images/sousuo.gif" border="0" height="23" width="60"></a></td>
        <td width="88"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpuser.asp?action=myinfo"><img src="images/zhanghu.gif" border="0" height="23" width="80"></a></td>
        <td width="89"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/pay.asp"><img src="images/zhifu.gif" border="0" height="23" width="80"></a></td>
        <td width="95"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpa.asp"><img src="images/about.gif" border="0" height="23" width="75"></a></td>
        <td width="111">      <span style="LINE-HEIGHT: 200%"><font color="#ffffff"><a title="�c���Է��w���ķ�ʽ��[" href="javascript:StranBody()" name="StranLink" id="StranLink" style="color:red">���w����</a></font></span><script language="javascript" src="images/jfzh.js"></script></td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td height="33" width="39%"><table border="0" cellpadding="0" cellspacing="0" width="380">
      <tbody><tr>
        <td height="23" width="15"><img src="images/icon_speaker01.gif" height="13" width="14"></td>
        <td width="365"><marquee scrollamount="3" width="100%">��ӭ����shopxp���Ϲ���ϵͳ,�̳ǳ�������ѯ�ͷ�QQ:97003001�绰��010-58604522</marquee></td>
      </tr>
    </tbody></table></td>
    <td width="40%"><script language="javascript" src="images/shopxp_seach.asp"></script></td>
  </tr>
</tbody></table>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="990">
  <tbody><tr>
    <td height="5" width="5"><img src="images/new_top_li01.gif" height="5" width="5"></td>
    <td background="images/new_top_li01_1.gif" height="5" width="985"></td>
    <td width="5"><img src="images/new_top_li03.gif"></td>
  </tr>
  <tr>
    <td background="images/new_top_li01_2.gif" width="5"></td>
    <td valign="top"><table background="images/bgtop.gif" border="0" cellpadding="0" cellspacing="0" height="37" width="985">
      <tbody><tr>
        <td height="33" valign="middle" width="29%"><table align="center" border="0" cellpadding="0" cellspacing="0" width="280">
          <tbody><tr>
            <td><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/index.html"><img src="images/new_top_m06.gif" border="0" height="21" width="82"></a></div></td>
            <td><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpnewp.asp?action_key_order=tejia"><img src="images/new_top_m07.gif" border="0" height="21" width="82"></a></div></td>
            <td><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpnewp.asp?action_key_order=news"><img src="images/zuixinshangpin.gif" border="0" height="21" width="82"></a></div></td>
          </tr>
          
        </tbody></table></td>
        <td valign="middle" width="52%"><table class="9" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
              <tr>
                <td class="b" align="left" valign="top" width="96%"><div align="center"> 
				        <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpnewp.asp?action_key_order=hot"><font color="#ffffff">�Ƽ���Ʒ</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpmulu.asp"><font color="#ffffff">��������</font></a> 
				         | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpdongtai.asp"><font color="#ffffff">�̳Ƕ�̬</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpzhinan.asp"><font color="#ffffff">����ָ��</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpuser.asp"><font color="#ffffff">��Ա����</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/fankuixpliuyan.asp"><font color="#ffffff">��������</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/bbs" target="_blank"><font color="#ffffff">�̳�����</font></a> 
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxphelp.asp"><font color="#ffffff">���߰���</font></a></div></td>
              </tr>
            </tbody>
        </table></td>
        <td width="19%"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/login.asp"><img src="images/new_top_lo_01.gif" align="absmiddle" border="0" height="20" width="48"></a> &nbsp;<a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpreg.asp"> <img src="images/new_top_lo_03.gif" align="absmiddle" border="0" height="20"></a> </div></td>
      </tr>
      <tr>
        <td colspan="3" height="4" valign="middle"></td>
      </tr>
    </tbody></table></td>
    <td background="images/new_top_li01_3.gif" width="5"></td>
  </tr>
  <tr>
    <td background="images/new_top_li02.gif" height="5"></td>
    <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tbody><tr>
        <td background="images/new_top_li01-4.gif" height="5"></td>
      </tr>
    </tbody></table></td>
    <td><img src="images/new_top_li01_4.gif" height="5" width="5"></td>
  </tr>
</tbody></table> 


<table align="center" border="0" cellpadding="0" cellspacing="0" width="996">
  <tbody><tr>
   <td valign="top" width="188"><table align="center" border="0" cellpadding="0" cellspacing="0" height="5" width="10%">
  <tbody><tr>
    <td></td>
  </tr>
</tbody></table>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="184">
  <tbody><tr>
    <td><a href="http://www.china1122.com/" target="_blank"><img src="images/tt_login.gif" border="0" width="184"></a></td>
  </tr>
  <tr>
    <td><table align="center" background="images/bt.gif" border="0" cellpadding="0" cellspacing="0" width="184">
      <tbody><tr>
        <td align="center" background="images/bt.gif">
		<iframe src="images/user.htm" name="ifraComment" marginheight="0" marginwidth="0" style="border-style: none #ffffff solid" frameborder="0" scrolling="no" width="180"> </iframe>
         </td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td><img src="images/tt_login_bottom.gif" height="6" width="184"></td>
  </tr>
</tbody></table><table align="center" border="0" cellpadding="0" cellspacing="0" height="5" width="10%">
  <tbody><tr>
    <td></td>
  </tr>
</tbody></table>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="184">
  <tbody>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
      <td background="images/new_line_008.gif" height="4"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_005.gif" height="4" width="4"></td>
    </tr>
    <tr>
      <td rowspan="4" background="images/new_line_009.gif"></td>
      <td> 
	  
	  
<table id="table2" style="border-collapse: collapse" align="center" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" width="178">    <tbody><tr>    <td style="line-height: 150%">    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_54_1.html">����/���/����/�칫</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_568_1.html">�ʼǱ�</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_569_1.html">̨ʽ��</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_606_1.html">����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_570_1.html">���ϵ���</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_571_1.html">Ӧ�����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_589_1.html">�ʼǱ��������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_590_1.html">�칫�豸</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_591_1.html">������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_592_1.html">������</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_64_1.html">�ֻ�/ͨѶ�豸/��</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_604_1.html">ŵ����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_605_1.html">Ħ������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_607_1.html">������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_608_1.html">�ֻ������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_609_1.html">SD��/MMC��</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_56_1.html">�鱦����/������Ʒ</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_576_1.html">����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_577_1.html">��ָ</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_578_1.html">����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_579_1.html">��������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_593_1.html">��ʽ�ֱ�</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_594_1.html">Ůʿ�ֱ�</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_55_1.html">�������/��Ӱ����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_572_1.html">���</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_573_1.html">������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_574_1.html">�����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_575_1.html">�������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_587_1.html">��������</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_588_1.html">���濨</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_57_1.html">��ױƷ/��ˮ/����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_580_1.html">�۵�Һ</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_581_1.html">�۷�</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_582_1.html">����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_583_1.html">ϴ����</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_595_1.html">���߱�</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_596_1.html">���߱�</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_597_1.html">���憨��</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_598_1.html">��Ӱ</a></div> </div>    </td>  </tr></tbody></table>
	  </td>
      <td rowspan="4" background="images/new_line_010.gif"></td>
    </tr>
    <tr>
      <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" height="248" width="180">
        <tbody><tr>
          <td height="34"><div align="center"><img src="images/benqi.gif" usemap="#benqituijian" border="0" height="36" width="180"></div></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td width="175"><div align="center">
		  <a href="http://www.btoo.com.cn/" target="_blank"><img src="images/2007141504413935.gif" border="0">
            
          </a></div></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td><div align="center">
		  <a href="http://www.btoo.com.cn/" target="_blank"><img src="images/2006315154322378.gif" border="0">
          </a></div></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td><div align="center">
		
          </div></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td><div align="center">
        <a href="http://www.btoo.com.cn/" target="_blank"><img src="images/2006315154322378.gif" border="0">
          </a></div></td>
        </tr>
      </tbody></table>
      </td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td align="center" valign="top">&nbsp;</td>
    </tr>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
      <td background="images/new_line_011.gif"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
    </tr>
  </tbody>
</table>

<map name="beiqiruijian" id="beiqiruijian">
<area shape="rect" coords="127,5,176,28" href="#">
</map>
<map name="benqituijian" id="benqituijian">
<area shape="rect" coords="120,5,174,27" href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpnewp.asp?action_key_order=hot">
</map> 

</td>
    <td valign="top" width="780"><table border="0" cellpadding="0" cellspacing="0" height="5" width="91%">
  <tbody><tr>
    <td height="5"></td>
  </tr>
</tbody></table>
      
		  
          <a href="http://www.btoo.com.cn/" target="_blank"><img src="images/20072913355232568.jpg" border="0">
        <table border="0" cellpadding="0" cellspacing="0" width="710">
  <tbody><tr>
    <td width="245"><table align="center" border="0" cellpadding="0" cellspacing="0" height="220" width="238">
      <tbody>
        <tr>
          <td height="4" valign="top" width="7"><img src="images/new_line_004.gif" height="4" width="4"></td>
          <td background="images/new_line_008.gif" height="4" width="724"></td>
          <td height="4" valign="top" width="10"><img src="images/new_line_005.gif" height="4" width="4"></td>
        </tr>
        <tr>
          <td background="images/new_line_009.gif" width="7"></td>
          <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr>
                <td height="23" width="82%"><img src="images/infonews.gif" height="25" width="160"></td>
                <td width="18%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpdongtai.asp"><img src="images/btn_all01.gif" border="0" height="20" width="38"></a></td>
              </tr>
            </tbody></table>
              <table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
                <tbody><tr>
				                  <td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=71">SHOPXP����ϵͳ���ʹ��</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=69">SHOPXP����ϵͳ�����ص�</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=68">���ǵĵĹ���ʱ�����ϵ��ʽ</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=67">���Ų���ȥ</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=72" title="2011&#196;��9&#212;&#194;12&#200;&#213;��&#162;&#178;&#188;">x3333333333333333.</a><br></td> </tr>
                  
            </tbody></table></td>
          <td background="images/new_line_010.gif">&nbsp;</td>
        </tr>
        <tr>
          <td height="4" valign="top" width="7"><img src="images/new_line_006.gif" height="4" width="4"></td>
          <td background="images/new_line_011.gif"></td>
          <td height="4" valign="top" width="10"><img src="images/new_line_007.gif" height="4" width="4"></td>
        </tr>
      </tbody>
    </table></td>
    <td width="242"><table align="center" border="0" cellpadding="0" cellspacing="0" height="220" width="238">
      <tbody>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
          <td background="images/new_line_008.gif" height="4"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_005.gif" height="4" width="4"></td>
        </tr>
        <tr>
          <td background="images/new_line_009.gif" width="1"></td>
          <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr>
                <td height="23" width="82%"><img src="images/infozhuanti.gif" height="25" width="160"></td>
                <td width="18%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpzhinan.asp"><img src="images/btn_all01.gif" border="0" height="20" width="38"></a></td>
              </tr>
            </tbody></table>
              
<table border="0" cellpadding="0" cellspacing="0" height="22" width="100%">
 
  <tbody><tr> 
                    <td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1304">�ഺ���޺�--���������������ֻ�.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1303">�۵���ת��Ļ���--����ET560.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1302">���Ի��ǵķ��--����G800�ֻ�.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1301">����ʯ�롰�����ꡱ������� </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1299">����ı�𷽷� </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1298">���������鱦չ���� </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1297">Խ��Խ������������Ϲ��� </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1296">ŷ������������������� </a><br>	       
</td></tr></tbody></table>  
			  
			  </td>
          <td background="images/new_line_010.gif">&nbsp;</td>
        </tr>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
          <td background="images/new_line_011.gif"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
        </tr>
      </tbody>
    </table></td>
    <td valign="top" width="231"><table align="center" border="0" cellpadding="0" cellspacing="0" height="220" width="220">
      <tbody>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
          <td background="images/new_line_008.gif" height="4"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_005.gif" height="4" width="4"></td>
        </tr>
        <tr>
          <td background="images/new_line_009.gif" width="1"></td>
          <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><div align="center">
              <a href="http://www.btoo.com.cn/" target="_blank"><img src="images/2007141583665760.gif" border="0">
          </a></div></td>
          <td background="images/new_line_010.gif">&nbsp;</td>
        </tr>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
          <td background="images/new_line_011.gif"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</tbody></table>
 

<table border="0" cellpadding="0" cellspacing="0" width="716">
  <tbody><tr>
    <td height="10"></td>
  </tr>
  <tr>
    <td><img src="images/c_stitle_410.gif" height="27" width="716"></td>
  </tr>
  <tr>
    <td background="images/c_box_bg01.gif" valign="top">
	
<style type="text/css">
<!--
.style4 {color: #FF0000}
-->
</style>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">
  <tbody><tr>
    <td height="10" valign="top"></td>
  </tr>
  <tr>   

    <td align="center">
<marquee scrolldelay="150" direction="left" behavior="alternate" align="middle" onMouseOver="this.stop();" onMouseOut="this.start();" width="100%">


<table align="center" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" height="50" width="100%">
      <tbody>
      	<tr><td>&nbsp;</td>
        
  <!--������Ʒ��ʼ-->
  	<%
  		for(Iterator<Product> it=latestProducts.iterator();it.hasNext();){
  			Product p=it.next();
  	%>
      <td>
       <table align="center" border="0" cellpadding="0" cellspacing="0" height="130" width="110">
            	<tbody><tr><td height="95" width="110">
                	<div align="center">
                	<table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90">
                    	<tbody>
                        <tr><td align="center" bgcolor="#ffffff" height="90" width="90"><a href="#" target="_blank"><img src="images/20104116274086520.jpg" alt="<%=p.getName() %>" border="0" height="98" width="98"></a></td>
                        </tr>
                        </tbody>
                     </table>
                     </div>
              </td>
          </tr>
          <tr><td height="23" valign="middle"><div align="center"><a href="#" target="_blank"><font color="#FF0000"><%=p.getName() %></font></a></div></td></tr>
          <tr><td height="13" valign="bottom">
          		<table border="0" cellpadding="0" cellspacing="0" width="98%">
                	<tbody>
                    <tr><td height="37">
                    <div align="center"> <font color="#999999"><s>�г��ۣ�<%=p.getNormalPrice() %> Ԫ</s></font>
                    <br><span class="style4">��Ա�ۣ�<%=p.getMemberPrice() %> Ԫ</span> 
                	</div></td>
                    </tr>
                    </tbody>
                 </table>
               </td>
             </tr></tbody>
  		</table>
     </td>   
   <!--������Ʒ����-->     
      <%
      }
      %>     
 		<td>&nbsp;</td>
		</tr>
      </tbody>
</table>
			
	  </marquee>
	</td>
 
  </tr>
</tbody></table> 	
	
	</td>
  </tr>
  <tr>
    <td><img src="images/c_bbox01.gif" height="4" width="716"></td>
  </tr>
    <tr>
    <td height="7"></td>
  </tr>
  <tr>
    <td height="10"><img src="images/c_stitle_450.gif" height="27" width="716"></td>
  </tr>
  <tr>
    <td background="images/c_box_bg01.gif" height="280" valign="top">
	
	<style type="text/css">
<!--
.style4 {color: #FF0000}
-->
</style>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">
  <tbody><tr>
    <td height="10" valign="top"></td>
  </tr>
  <tr>
  
  <!--�Ƽ���Ʒup��ʼ-->
  	<%
  		for(int i=0;i<recommendProducts.size();i++){
  			Product p=recommendProducts.get(i);
  	%>
        <td height="110" valign="top">
        <table align="center" border="0" cellpadding="0" cellspacing="0" height="130" width="110">
        <tbody><tr><td height="95" width="110">
        	<div align="center">
        		<table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90">
                <tbody>
                <tr><td align="center" bgcolor="#ffffff" height="90" width="90"><a href="#" target="_blank"><img src="images/20058291175330086.gif" alt="<%=p.getName() %>" border="0" height="98" width="98"></a></td></tr>
                </tbody>
                </table>
             </div>
            </td></tr>
           <tr> <td height="23" valign="middle"><div align="center"><a href="#" target="_blank"><font color="#FF0000"><%=p.getName() %></font></a></div></td></tr>
           <tr><td height="13" valign="bottom">
           	<table border="0" cellpadding="0" cellspacing="0" width="98%">
            	<tbody><tr><td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�<%=p.getNormalPrice() %> Ԫ</s></font>
            	<br><span class="style4">��Ա�ۣ�<%=p.getMemberPrice() %> Ԫ</span> </div>
                </td></tr></tbody>
             </table></td></tr>
           </tbody></table>
        </td>    
  <!--�Ƽ���Ʒup����-->
  	<%
  		if((i+1)%5==0)
  			out.println("</TR><TR>");
  		%>
  <%
  }
  %>
        

    
    <td height="110" valign="top">&nbsp;</td>
  </tr>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</tbody></table>
 

	
	
	</td>
  </tr>
  <tr>
    <td><img src="images/c_bbox01.gif" height="4" width="716"></td>
  </tr>
  <tr>
    <td height="7"></td>
  </tr>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="0" width="724">
  <tbody><tr>
    <td valign="top" width="32%">
	<style type="text/css">
<!--
.style4 {color: #FF5C99}
-->
</style>

<table border="0" cellpadding="0" cellspacing="0" height="312" width="234">
  <tbody>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
      <td background="images/new_line_008.gif" height="4"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_005.gif" height="4" width="4"></td>
    </tr>
    <tr>
      <td background="images/new_line_009.gif"></td>
      <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
          <td><div align="center"><img src="images/new_line_012.gif" height="62" width="212"></div></td>
        </tr>
      </tbody></table>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product462.html" title="����Ʒ�ѳɹ�����10000��">nete78</a><font color="#DC143C">��<font color="#DC143C">��23580</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html" title="����Ʒ�ѳɹ�����10000��">nete78</a><font color="#DC143C">��<font color="#DC143C">��23580</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product472.html" title="����Ʒ�ѳɹ�����1007��">��ɫ925��������</a><font color="#DC143C">��<font color="#DC143C">��480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" title="����Ʒ�ѳɹ�����1004��">��ɫ925��������</a><font color="#DC143C">��<font color="#DC143C">��480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" title="����Ʒ�ѳɹ�����19��">����ˮ������</a><font color="#DC143C">��<font color="#DC143C">��186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product469.html" title="����Ʒ�ѳɹ�����19��">����ˮ������</a><font color="#DC143C">��<font color="#DC143C">��186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
      </tbody></table>      </td>
      <td background="images/new_line_010.gif">&nbsp;</td>
    </tr>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
      <td background="images/new_line_011.gif"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
    </tr>
  </tbody>
</table>
 

	
	
	</td>
    <td valign="top" width="35%">
	<table border="0" cellpadding="0" cellspacing="0" height="312" width="234">
  <tbody>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
      <td background="images/new_line_008.gif" height="4" width="328"></td>
      <td height="4" valign="top" width="10"><img src="images/new_line_005.gif" height="4" width="4"></td>
    </tr>
    <tr>
      <td background="images/new_line_009.gif"></td>
      <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
          <td><div align="center"><img src="images/new_line_015.gif" height="63" width="228"></div></td>
        </tr>
      </tbody></table>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" title="����Ʒ�ѳɹ�����9��">���ᰮ���� W31S</a><font color="#DC143C">��<font color="#DC143C">��1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product464.html" title="����Ʒ�ѳɹ�����9��">���ᰮ���� W31S</a><font color="#DC143C">��<font color="#DC143C">��1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product472.html" title="����Ʒ�ѳɹ�����1007��">��ɫ925��������</a><font color="#DC143C">��<font color="#DC143C">��480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" title="����Ʒ�ѳɹ�����1004��">��ɫ925��������</a><font color="#DC143C">��<font color="#DC143C">��480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html" title="����Ʒ�ѳɹ�����10��">����µ���˪</a><font color="#DC143C">��<font color="#DC143C">��210</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product471.html" title="����Ʒ�ѳɹ�����10��">����µ���˪</a><font color="#DC143C">��<font color="#DC143C">��210</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
      </tbody></table>      </td>
      <td background="images/new_line_010.gif">&nbsp;</td>
    </tr>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
      <td background="images/new_line_011.gif"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
    </tr>
  </tbody>
</table>
	
	</td>
    <td valign="top" width="33%">
	<table border="0" cellpadding="0" cellspacing="0" height="312" width="234">
  <tbody>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
      <td background="images/new_line_008.gif" height="4" width="328"></td>
      <td height="4" valign="top" width="10"><img src="images/new_line_005.gif" height="4" width="4"></td>
    </tr>
    <tr>
      <td background="images/new_line_009.gif"></td>
      <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
          <td><div align="center"><img src="images/new_line_014.gif" height="62" width="212"></div></td>
        </tr>
      </tbody></table>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html" title="����Ʒ�ѳɹ�����6��">ŵ����2100</a><font color="#DC143C">��<font color="#DC143C">��420</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product463.html" title="����Ʒ�ѳɹ�����6��">ŵ����2100</a><font color="#DC143C">��<font color="#DC143C">��420</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="����Ʒ�ѳɹ�����1002��">�������ʯ��ָ</a><font color="#DC143C">��<font color="#DC143C">��100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" title="����Ʒ�ѳɹ�����9��">���ᰮ���� W31S</a><font color="#DC143C">��<font color="#DC143C">��1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product464.html" title="����Ʒ�ѳɹ�����9��">���ᰮ���� W31S</a><font color="#DC143C">��<font color="#DC143C">��1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="����Ʒ�ѳɹ�����120��">Ħ������E680i</a><font color="#DC143C">��<font color="#DC143C">��462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" title="����Ʒ�ѳɹ�����19��">����ˮ������</a><font color="#DC143C">��<font color="#DC143C">��186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product469.html" title="����Ʒ�ѳɹ�����19��">����ˮ������</a><font color="#DC143C">��<font color="#DC143C">��186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
      </tbody></table>      </td>
      <td background="images/new_line_010.gif">&nbsp;</td>
    </tr>
    <tr>
      <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
      <td background="images/new_line_011.gif"></td>
      <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
    </tr>
  </tbody>
</table>
	
	</td>
  </tr>
</tbody></table></a></td>
  </tr>
</tbody></table>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="996">
  <tbody><tr>
    <td valign="top">
  <!--��ҳ���ؼ���Ʒ-->
<style type="text/css">
<!--
.style4 {color: #FF0000}
-->
</style>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">
  <tbody><tr>
    <td><img src="images/new_title_002.gif" height="36"></td>
  </tr>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="0" width="200">
  <tbody><tr>
    <td width="20">&nbsp;</td>
    <td width="190"><table align="center" border="0" cellpadding="0" cellspacing="0" width="905">
      <tbody>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_004.gif" height="4" width="4"></td>
          <td background="images/new_line_008.gif" height="4"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_005.gif" height="4" width="4"></td>
        </tr>
        <tr>
          <td background="images/new_line_009.gif" width="1"></td>
          <td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 0px" align="center"><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr>
			                  <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product495.html" target="_blank"><img src="images/alt3423" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product495.html%27" target="_blank"><font color="#FF0000">3423</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�1522 Ԫ</s></font><br><span class="style4">��Ա�ۣ�1200 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product494.html" target="_blank"><img src="images/20104116274086520.jpg" alt="320" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product494.html%27" target="_blank"><font color="#FF0000">320</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�2000 Ԫ</s></font><br><span class="style4">��Ա�ۣ�1980 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" target="_blank"><img src="images/2005829123549194.gif" alt="�������ʯ��ָ" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html%27" target="_blank"><font color="#FF0000">�������ʯ��ָ</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�256 Ԫ</s></font><br><span class="style4">��Ա�ۣ�100 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" target="_blank"><img src="images/20058291175330086.gif" alt="��ɫ925��������" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html%27" target="_blank"><font color="#FF0000">��ɫ925��������</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�560 Ԫ</s></font><br><span class="style4">��Ա�ۣ�480 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html" target="_blank"><img src="images/2005829195651445.jpg" alt="����µ���˪" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html%27" target="_blank"><font color="#FF0000">����µ���˪</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�256 Ԫ</s></font><br><span class="style4">��Ա�ۣ�210 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product488.html" target="_blank"><img src="images/2005829164039044.jpg" alt="��ɹ���׾�������" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product488.html%27" target="_blank"><font color="#FF0000">��ɹ���׾�������</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�650 Ԫ</s></font><br><span class="style4">��Ա�ۣ�460 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" target="_blank"><img src="images/20058290452497251.gif" alt="����ˮ������" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html%27" target="_blank"><font color="#FF0000">����ˮ������</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�254 Ԫ</s></font><br><span class="style4">��Ա�ۣ�186 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>              </tr>                <tr><td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product486.html" target="_blank"><img src="images/20058290402120265.gif" alt="����925������" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product486.html%27" target="_blank"><font color="#FF0000">����925������</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�250 Ԫ</s></font><br><span class="style4">��Ա�ۣ�160 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product485.html" target="_blank"><img src="images/2005829032297394.gif" alt="18K��챦ʯ��׹" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product485.html%27" target="_blank"><font color="#FF0000">18K��챦ʯ��׹</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�356 Ԫ</s></font><br><span class="style4">��Ա�ۣ�300 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" target="_blank"><img src="images/20058290151410201.gif" alt="Ħ������E680i" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html%27" target="_blank"><font color="#FF0000">Ħ������E680i</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�568 Ԫ</s></font><br><span class="style4">��Ա�ۣ�462 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product483.html" target="_blank"><img src="images/2005829081135049.gif" alt="���ᰮ����" j300c="" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product483.html%27" target="_blank"><font color="#FF0000">���ᰮ���� J300c</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�1500 Ԫ</s></font><br><span class="style4">��Ա�ۣ�1360 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" target="_blank"><img src="images/200582823593589697.gif" alt="���ᰮ����" w31s="" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html%27" target="_blank"><font color="#FF0000">���ᰮ���� W31S</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�1200 Ԫ</s></font><br><span class="style4">��Ա�ۣ�1050 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html" target="_blank"><img src="images/200582823433512678.jpg" alt="ŵ����2100" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html%27" target="_blank"><font color="#FF0000">ŵ����2100</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�680 Ԫ</s></font><br><span class="style4">��Ա�ۣ�420 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html" target="_blank"><img src="images/200582823271444691.gif" alt="nete78" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html%27" target="_blank"><font color="#FF0000">nete78</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>�г��ۣ�24080 Ԫ</s></font><br><span class="style4">��Ա�ۣ�23580 Ԫ</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>              </tr>
                
          </tbody></table></td>
          <td background="images/new_line_010.gif" width="1"></td>
        </tr>
        <tr>
          <td height="4" valign="top" width="4"><img src="images/new_line_006.gif" height="4" width="4"></td>
          <td background="images/new_line_011.gif"></td>
          <td height="4" valign="top" width="4"><img src="images/new_line_007.gif" height="4" width="4"></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</tbody></table>
 


</td>
	</tr>
		</tbody></table>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="996">
  <tbody><tr>
    <td colspan="2" background="images/bgbg.gif"></td>
  </tr>
  <tr>
    <td align="center" background="images/main53.gif" height="31" valign="middle" width="88%"><div align="center">������� : 
	   
        </div></td>
    <td align="center" background="images/main53.gif" valign="middle" width="12%">&nbsp;</td>
  </tr>
</tbody></table>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="996">
  <tbody><tr>
   <form name="youjian" method="post" action="dysend.asp"></form>
                                      <td style="padding-left:1px" width="225"><div align="center">
                                        <input name="useremail" id="useremail" style="ime-mode:disabled" onFocus="this.value=''" value="��д����email���ı�վ�`" size="23" type="text">
                                  <input name="Submit3" value="����" onClick="return checkmail();" type="submit">
                                      </div></td>
    
      <td rowspan="2" width="12"><img src="images/xian.gif" height="115" width="12"></td>
    <td rowspan="2" valign="top" width="759"><table border="0" cellpadding="0" cellspacing="0" width="86%">
      <tbody><tr>
        <td height="35"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/index.html"><img src="images/gwsy.gif" alt="112211" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpa.asp"><img src="images/gywm.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/pay.asp"><img src="images/zxzf.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpa.asp?action=shiyongfalv"><img src="images/bqsm.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpa.asp?action=lxwm"><img src="images/ywlx.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxphelp.asp?action=fukuan"><img src="images/fkfs.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/fankuixpliuyan.asp"><img src="images/yjfk.gif" border="0" height="38" width="85"></a></td>
        <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxphelp.asp"><img src="images/help.gif" border="0" height="38" width="85"></a></td>
      </tr>
    </tbody></table>
      <table border="0" cellpadding="0" cellspacing="0" height="65" width="83%">
        <tbody><tr>
          <td height="34">
��˾��ַ:ɽ����̨֥�����¡���� &nbsp; ��������:100000<br>
�ͷ�����:<a href="mailto:china1122@live.cn">china1122@live.cn</a> &nbsp;�ͷ�QQ: 97003001&nbsp;�ͷ��绰:400-883-1122<br>
copyright &#169; 2002-2006 �������Ƽ����޹�˾ <a href="http://www.010net.cn/" target="_blank">����֧�֣�������ͨ</a></td></tr></tbody></table></td></tr><tr><td><div id="china1122"></div>


    <img src="images/logo.gif" alt="ShopXp�����̳�&nbsp; www.shopxp.cn" border="0"> </td>
</tr></tbody></table>
<div id="floater" style="RIGHT: 0px; OVERFLOW: visible; POSITION: absolute; TOP: 125px; right: 0px;">

<table border="0" cellpadding="0" cellspacing="0" width="72">
  <tbody><tr>
    <td width="72"><img src="images/quick01.gif" height="33" width="72"></td>
  </tr>
</tbody></table>
<table border="0" cellpadding="0" cellspacing="0" width="72">
  <tbody><tr>
    <td width="72"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpbuy.asp?action=show"><img src="images/quick03_h.gif" border="0" height="50" width="72"></a></td>
  </tr>
    <tr>
    <td width="72"><a class="b" target="blank" href="http://wpa.qq.com/msgrd?V=1&amp;Uin=97003001&amp;Site=www.shopxp.cn&amp;Menu=no"><img src="images/QQON.gif" border="0" height="50" width="72"></a></td>
  </tr>
  <tr>
    <td><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpuser.asp?action=myinfo"><img src="images/quick04_h.gif" border="0" height="55" width="72"></a></td>
  </tr>
  <tr>
    <td><a href="#top"><img src="images/new_top.gif" border="0" height="29" width="36"></a></td>
  </tr>
</tbody></table> 

</div> 
  <script language="javascript" src="images/floater.js"></script> 



 

</body></html>