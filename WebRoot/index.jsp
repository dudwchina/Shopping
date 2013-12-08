<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="com.bjsxt.shopping.*"%>

<%!
	public static final int COUNT=10;//获取最新商品数
	public static final int CATEGORY_ID=2;//推荐商品ID
%>

<%
	List<Product> latestProducts=ProductMgr.getInstance().getLatestProducts(COUNT);
	List<Product> recommendProducts=ProductMgr.getInstance().getRecommendProducts(CATEGORY_ID);
%>

<html><head><title>ShopXp购物商城--首页</title>
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
        <td width="111">      <span style="LINE-HEIGHT: 200%"><font color="#ffffff"><a title="點擊以繁體中文方式浏覽" href="javascript:StranBody()" name="StranLink" id="StranLink" style="color:red">繁體中文</a></font></span><script language="javascript" src="images/jfzh.js"></script></td>
      </tr>
    </tbody></table></td>
  </tr>
  <tr>
    <td height="33" width="39%"><table border="0" cellpadding="0" cellspacing="0" width="380">
      <tbody><tr>
        <td height="23" width="15"><img src="images/icon_speaker01.gif" height="13" width="14"></td>
        <td width="365"><marquee scrollamount="3" width="100%">欢迎访问shopxp网上购物系统,商城程序购买咨询客服QQ:97003001电话：010-58604522</marquee></td>
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
				        <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpnewp.asp?action_key_order=hot"><font color="#ffffff">推荐商品</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpmulu.asp"><font color="#ffffff">导航分类</font></a> 
				         | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpdongtai.asp"><font color="#ffffff">商城动态</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpzhinan.asp"><font color="#ffffff">购物指南</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/xpuser.asp"><font color="#ffffff">会员中心</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/fankuixpliuyan.asp"><font color="#ffffff">在线留言</font></a>
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/bbs" target="_blank"><font color="#ffffff">商城社区</font></a> 
						 | <a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxphelp.asp"><font color="#ffffff">在线帮助</font></a></div></td>
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
	  
	  
<table id="table2" style="border-collapse: collapse" align="center" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" width="178">    <tbody><tr>    <td style="line-height: 150%">    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_54_1.html">电脑/软件/网络/办公</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_568_1.html">笔记本</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_569_1.html">台式机</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_606_1.html">三星</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_570_1.html">掌上电脑</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_571_1.html">应用软件</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_589_1.html">笔记本电脑配件</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_590_1.html">办公设备</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_591_1.html">服务器</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_592_1.html">交换机</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_64_1.html">手机/通讯设备/卡</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_604_1.html">诺基亚</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_605_1.html">摩托罗拉</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_607_1.html">西门子</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_608_1.html">手机充电器</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_609_1.html">SD卡/MMC卡</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_56_1.html">珠宝首饰/银饰礼品</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_576_1.html">项链</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_577_1.html">戒指</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_578_1.html">手链</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_579_1.html">脚链耳环</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_593_1.html">男式手表</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_594_1.html">女士手表</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_55_1.html">数码相机/摄影摄像</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_572_1.html">相机</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_573_1.html">相机配件</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_574_1.html">摄像机</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_575_1.html">摄像配件</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_587_1.html">照相器材</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_588_1.html">闪存卡</a></div> </div>    <div style="width:178px;">        <div style="height:24px;font-weight:bold;line-height:24px;padding-left:16px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classbig_57_1.html">化妆品/香水/护肤</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_580_1.html">粉底液</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_581_1.html">蜜粉</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_582_1.html">唇膏</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_583_1.html">洗面奶</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_595_1.html">眼线笔</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_596_1.html">唇线笔</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_597_1.html">洁面啫哩</a></div><div style="height:24px;padding-left:24px;"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/classsm_598_1.html">眼影</a></div> </div>    </td>  </tr></tbody></table>
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
				                  <td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=71">SHOPXP购物系统免费使用</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=69">SHOPXP购物系统功能特点</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=68">我们的的工作时间和联系方式</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=67">新闻测试去</a><br></td> </tr>                  <tr><td height="22" valign="middle" width="100%"><font color="#FFFFFF">&nbsp;</font> <img src="images/blackspot.gif" height="5" width="5"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/shopxp_news.asp?id=72" title="2011&#196;ê9&#212;&#194;12&#200;&#213;·&#162;&#178;&#188;">x3333333333333333.</a><br></td> </tr>
                  
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
                    <td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1304">青春无限好--联想最新五款概念手机.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1303">折叠旋转屏幕设计--联想ET560.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1302">领略滑盖的风采--联想G800手机.</a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1301">真钻石与“苏联钻”如何区别？ </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1299">珍珠的辨别方法 </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1298">世界三大珠宝展览会 </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1297">越来越多的人迷恋网上购物 </a><br></td></tr>            <tr><td height="22" width="7%">&nbsp;&nbsp;<img src="images/blackspot.gif" height="5" width="5">&nbsp; </td><td width="93%"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/listztxp.asp?id=1296">欧若拉—缔造生活的美丽 </a><br>	       
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
        
  <!--最新商品开始-->
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
                    <div align="center"> <font color="#999999"><s>市场价：<%=p.getNormalPrice() %> 元</s></font>
                    <br><span class="style4">会员价：<%=p.getMemberPrice() %> 元</span> 
                	</div></td>
                    </tr>
                    </tbody>
                 </table>
               </td>
             </tr></tbody>
  		</table>
     </td>   
   <!--最新商品结束-->     
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
  
  <!--推荐商品up开始-->
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
            	<tbody><tr><td height="37"><div align="center"> <font color="#999999"><s>市场价：<%=p.getNormalPrice() %> 元</s></font>
            	<br><span class="style4">会员价：<%=p.getMemberPrice() %> 元</span> </div>
                </td></tr></tbody>
             </table></td></tr>
           </tbody></table>
        </td>    
  <!--推荐商品up结束-->
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
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product462.html" title="此商品已成功销售10000次">nete78</a><font color="#DC143C">↑<font color="#DC143C">￥23580</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html" title="此商品已成功销售10000次">nete78</a><font color="#DC143C">↑<font color="#DC143C">￥23580</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product472.html" title="此商品已成功销售1007次">蓝色925纯银项链</a><font color="#DC143C">↑<font color="#DC143C">￥480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" title="此商品已成功销售1004次">蓝色925纯银项链</a><font color="#DC143C">↑<font color="#DC143C">￥480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" title="此商品已成功销售19次">冰凌水晶手链</a><font color="#DC143C">↑<font color="#DC143C">￥186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product469.html" title="此商品已成功销售19次">冰凌水晶手链</a><font color="#DC143C">↑<font color="#DC143C">￥186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
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
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" title="此商品已成功销售9次">索尼爱立信 W31S</a><font color="#DC143C">↑<font color="#DC143C">￥1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product464.html" title="此商品已成功销售9次">索尼爱立信 W31S</a><font color="#DC143C">↑<font color="#DC143C">￥1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product472.html" title="此商品已成功销售1007次">蓝色925纯银项链</a><font color="#DC143C">↑<font color="#DC143C">￥480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" title="此商品已成功销售1004次">蓝色925纯银项链</a><font color="#DC143C">↑<font color="#DC143C">￥480</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html" title="此商品已成功销售10次">婵真新调理霜</a><font color="#DC143C">↑<font color="#DC143C">￥210</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product471.html" title="此商品已成功销售10次">婵真新调理霜</a><font color="#DC143C">↑<font color="#DC143C">￥210</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
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
	 <tbody><tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html" title="此商品已成功销售6次">诺基亚2100</a><font color="#DC143C">↑<font color="#DC143C">￥420</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product463.html" title="此商品已成功销售6次">诺基亚2100</a><font color="#DC143C">↑<font color="#DC143C">￥420</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product475.html" title="此商品已成功销售1002次">珍珠红纹石戒指</a><font color="#DC143C">↑<font color="#DC143C">￥100</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" title="此商品已成功销售9次">索尼爱立信 W31S</a><font color="#DC143C">↑<font color="#DC143C">￥1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product464.html" title="此商品已成功销售9次">索尼爱立信 W31S</a><font color="#DC143C">↑<font color="#DC143C">￥1050</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product466.html" title="此商品已成功销售120次">摩托罗拉E680i</a><font color="#DC143C">↑<font color="#DC143C">￥462</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" title="此商品已成功销售19次">冰凌水晶手链</a><font color="#DC143C">↑<font color="#DC143C">￥186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr> <tr><td height="24" valign="middle" width="1%">&nbsp; </td><td valign="middle" width="99%">&nbsp;<img src="images/008.gif" height="9" width="7"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product469.html" title="此商品已成功销售19次">冰凌水晶手链</a><font color="#DC143C">↑<font color="#DC143C">￥186</font></font>                <table background="images/lineDotGray.gif" border="0" cellpadding="0" cellspacing="0" height="1" width="100%"><tbody><tr><td background="images/blank.gif" height="1"></td></tr></tbody></table></td></tr>
	
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
  <!--首页的特价商品-->
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
			                  <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product495.html" target="_blank"><img src="images/alt3423" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product495.html%27" target="_blank"><font color="#FF0000">3423</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：1522 元</s></font><br><span class="style4">会员价：1200 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product494.html" target="_blank"><img src="images/20104116274086520.jpg" alt="320" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product494.html%27" target="_blank"><font color="#FF0000">320</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：2000 元</s></font><br><span class="style4">会员价：1980 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html" target="_blank"><img src="images/2005829123549194.gif" alt="珍珠红纹石戒指" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product491.html%27" target="_blank"><font color="#FF0000">珍珠红纹石戒指</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：256 元</s></font><br><span class="style4">会员价：100 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html" target="_blank"><img src="images/20058291175330086.gif" alt="蓝色925纯银项链" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product490.html%27" target="_blank"><font color="#FF0000">蓝色925纯银项链</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：560 元</s></font><br><span class="style4">会员价：480 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html" target="_blank"><img src="images/2005829195651445.jpg" alt="婵真新调理霜" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product489.html%27" target="_blank"><font color="#FF0000">婵真新调理霜</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：256 元</s></font><br><span class="style4">会员价：210 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product488.html" target="_blank"><img src="images/2005829164039044.jpg" alt="抗晒美白精华胶囊" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product488.html%27" target="_blank"><font color="#FF0000">抗晒美白精华胶囊</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：650 元</s></font><br><span class="style4">会员价：460 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html" target="_blank"><img src="images/20058290452497251.gif" alt="冰凌水晶手链" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product487.html%27" target="_blank"><font color="#FF0000">冰凌水晶手链</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：254 元</s></font><br><span class="style4">会员价：186 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>              </tr>                <tr><td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product486.html" target="_blank"><img src="images/20058290402120265.gif" alt="暧昧925银耳钉" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product486.html%27" target="_blank"><font color="#FF0000">暧昧925银耳钉</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：250 元</s></font><br><span class="style4">会员价：160 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product485.html" target="_blank"><img src="images/2005829032297394.gif" alt="18K金红宝石吊坠" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product485.html%27" target="_blank"><font color="#FF0000">18K金红宝石吊坠</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：356 元</s></font><br><span class="style4">会员价：300 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html" target="_blank"><img src="images/20058290151410201.gif" alt="摩托罗拉E680i" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product484.html%27" target="_blank"><font color="#FF0000">摩托罗拉E680i</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：568 元</s></font><br><span class="style4">会员价：462 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product483.html" target="_blank"><img src="images/2005829081135049.gif" alt="索尼爱立信" j300c="" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product483.html%27" target="_blank"><font color="#FF0000">索尼爱立信 J300c</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：1500 元</s></font><br><span class="style4">会员价：1360 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html" target="_blank"><img src="images/200582823593589697.gif" alt="索尼爱立信" w31s="" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product482.html%27" target="_blank"><font color="#FF0000">索尼爱立信 W31S</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：1200 元</s></font><br><span class="style4">会员价：1050 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html" target="_blank"><img src="images/200582823433512678.jpg" alt="诺基亚2100" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product481.html%27" target="_blank"><font color="#FF0000">诺基亚2100</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：680 元</s></font><br><span class="style4">会员价：420 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>                <td height="154" valign="top" width="565"><table border="0" cellpadding="0" cellspacing="0" height="130" width="110"><tbody><tr><td height="95" width="110"><div align="center"><table align="center" bgcolor="#e1e1e1" border="0" cellpadding="2" cellspacing="1" height="90" width="90"><tbody><tr>                              <td align="center" bgcolor="#ffffff" height="90" width="90"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html" target="_blank"><img src="images/200582823271444691.gif" alt="nete78" border="0" height="98" width="98"></a></td></tr></tbody></table></div></td></tr><tr><td height="23" valign="middle"><div align="center"><a href="file:///E:/TDDOWNLOAD/%E7%BD%91%E4%B8%8A%E5%95%86%E5%9F%8E/src/%E6%96%B0shopping/resource/shopxphtml_v12.01/shopxphtml/ShopxpHtml/product480.html%27" target="_blank"><font color="#FF0000">nete78</font></a></div></td></tr><tr><td height="13" valign="bottom"><table border="0" cellpadding="0" cellspacing="0" width="98%"><tbody><tr>                            <td height="37"><div align="center"> <font color="#999999"><s>市场价：24080 元</s></font><br><span class="style4">会员价：23580 元</span> </div></td></tr></tbody></table></td></tr></tbody></table></td>              </tr>
                
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
    <td align="center" background="images/main53.gif" height="31" valign="middle" width="88%"><div align="center">合作伙伴 : 
	   
        </div></td>
    <td align="center" background="images/main53.gif" valign="middle" width="12%">&nbsp;</td>
  </tr>
</tbody></table>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="996">
  <tbody><tr>
   <form name="youjian" method="post" action="dysend.asp"></form>
                                      <td style="padding-left:1px" width="225"><div align="center">
                                        <input name="useremail" id="useremail" style="ime-mode:disabled" onFocus="this.value=''" value="填写您的email订阅本站会刊" size="23" type="text">
                                  <input name="Submit3" value="订阅" onClick="return checkmail();" type="submit">
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
公司地址:山东烟台芝罘区润隆大厦 &nbsp; 邮政编码:100000<br>
客服信箱:<a href="mailto:china1122@live.cn">china1122@live.cn</a> &nbsp;客服QQ: 97003001&nbsp;客服电话:400-883-1122<br>
copyright &#169; 2002-2006 风渡网络科技有限公司 <a href="http://www.010net.cn/" target="_blank">技术支持：北京易通</a></td></tr></tbody></table></td></tr><tr><td><div id="china1122"></div>


    <img src="images/logo.gif" alt="ShopXp购物商城&nbsp; www.shopxp.cn" border="0"> </td>
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