<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <title>用电</title>
    <link rel="stylesheet" href="../lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/reset.css" />

</head>
<body>
<div class="ld_header clearfix">
    <div class="ld_Wrap">
        <ul class="pull-left clearfix">
            <li><a href="javascript:;"><span class="glyphicon glyphicon-earphone"></span>020-38488825</a></li>
            <li><a href="javascript:;"><span class="glyphicon glyphicon-envelope"></span>srkj@sunrizetech.com</a></li>
        </ul>
        <ul class="pull-right clearfix">
            <li><a href="javascript:;"><span class="glyphicon glyphicon-user"></span><input type="hidden" id="gkey" value="<%=request.getParameter("gkey")%>"/>
                <input type="hidden" id="skey" value="<%=request.getParameter("skey")%>"/>
            </a></li>
            <li><a href="../../index.jsp"><span class="glyphicon glyphicon-log-out"></span>注销</a></li>
        </ul>
    </div>

</div>
<div class="ld_logo">
    <div class="ld_Wrap">
        <a href=""><img src="../img/logo.png" alt="" /></a>
        <ul class="pull-right" role="tablist">
            <li role="presentation" class=" ld_active"><a href="#jiaoyi" aria-controls="home" role="tab" data-toggle="tab">交易平台</a></li>
            <li role="presentation"><a href="#count" aria-controls="home" role="tab" data-toggle="tab">账户设置</a></li>
            <li role="presentation"><a href="#personal" aria-controls="home" role="tab" data-toggle="tab">个人中心</a></li>
        </ul>
    </div>

</div>
<div class="tab-content">
    <div class="ld_banner tab-pane fade in active"  role="tabpanel" id="make-Active">
        <!--<img src="../img/bg.jpg"></img>-->
        <!--激活账户-->
        <div id="makeActive">
            <div class="zhezhao"></div>
            <div class="text-center" hidden="true">
                <p class="count_makeActive">激活账户</p>
                <p class="count_makeActive_tips">尊敬的用户您好，您需要用支付宝支付xxx人民币进行激活</p>
                <input type="button" class="ld_btn yongdian_pay" value="支付" onclick="pay();"/>
            </div>
        </div>
    </div>
    <!--交易中心-->
    <div role="tabpanel" class="tab-pane fade ld_content  ld_Wrap tab-content-padding" id="jiaoyi">
        <div class="margin_top20">
            <h3 class="content_title clearfix">
                <div class="pull-left">
                    买电<span class="content_tips">(您最多可以买<%=request.getParameter("Limit")%>度电)</span>
                    <input type="hidden" id="maxnum" value="<%=request.getParameter("Limit")%>"/>
                </div>
                <div class="pull-right ld_content_monneyTitle">
                    总额：<span class="ld_content_monney"><%=request.getParameter("Balance")%></span>元
                </div>
            </h3>
            <div class="ld_content_list clearfix margin_top20">
                <div class="pull-left clearfix" id="maidian">
                    <div class="leixing pull-left">电类型：
                        <select id="type" >
                            <option value="PING" selected="selected">电平</option>
                            <option value="FENG">电峰</option>
                            <option value="GU">电谷</option>
                            <option value="DAIBI">代币</option>
                        </select>
                    </div>
                    <div class="pull-left dianliang">电量：
                        <div class="clearfix display_inlineBlock">
                            <input type="text" id="num" class="div_input" value="" />
                            <span class="setDanwei">度</span>
                            <!--<span class="pull-left">100000</span>
                            <span class="pull-right">度</span>	-->
                        </div>
                    </div>
                    <div class="pull-left danjia">单价：<div class="clearfix display_inlineBlock">
                        <input type="text" class="div_input" id="price" value="" />
                        <span class="setDanwei">元/度</span>
                    </div></div>
                </div>
                <div class="pull-right text-right margin_bottom18">
                    <input type="button" name="" id="" value="买入" class="ld_btn ld_btn_margin margin_top0" onclick="buy();"/>
                </div>
            </div>

        </div>

        <div class="margin_top20 clearfix dongtaiWrap">
            <div class="mairu pull-left">
                <h3 class="content_title">买入盘面
                    <span class="content_tips">(10秒自动更新)</span>
                    <select class="select pull-right">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </h3>
                <table class="table table-striped margin_top20 text-center">
                    <thead>
                    <tr>
                        <td>档位</td>
                        <td>买入价(CNY/KW·h)</td>
                        <td>买入量(KW·h)</td>
                        <td>总额(CNY)</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><span class="text-center">1</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">2</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">3</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">4</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">5</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">6</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">7</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">8</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">9</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">10</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    </tbody>

                </table>
            </div>
            <!--<div class="pull-left jiange"></div>-->
            <div class="maichu pull-right">
                <h3 class="content_title">卖出盘面
                    <span class="content_tips">(10秒自动更新)</span>
                    <select class="select pull-right">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </h3>
                <table class="table table-striped margin_top20 text-center">
                    <thead>
                    <tr>
                        <td>档位</td>
                        <td>卖出价(CNY/KW·h)</td>
                        <td>卖出量(Tee/KW·h)</td>
                        <td>总额(CNY)</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><span class="text-center">1</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">2</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">3</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">4</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">5</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">6</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">7</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">8</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">9</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    <tr>
                        <td><span class="text-center">10</span></td>
                        <td>1.5105</td>
                        <td>1888.850704</td>
                        <td>2853.11</td>
                    </tr>
                    </tbody>

                </table>

            </div>
        </div>

        <div class="padBottom"></div>
    </div>

    <!--账户设置-->
    <div role="tabpanel" class="tab-pane fade ld_content  ld_Wrap tab-content-padding" id="count">
        <h3 class="content_title">账户设置 <span class="content_tips">(钱包提现金额会在7个工作日内到账)</span></h3>
        <div class="ld_content_list margin_top20">
            <form>
                <div class="form-group" hidden="true">
                    <label for="faxingzhanghu">发行账户：</label>
                    <input type="text" class="form-control" id="faxingzhanghu" value="GCFMK4W6RPALDVQJWZBSWBOPETEK4ILK5TWWSXQOSY5X5PSGVDVNSNPO">
                </div>
                <div class="clearfix">
                    <label for="zichanzhonglei" class="pull-left labelHeight">资产种类：</label>
                    <div class="zhonglei_list pull-left">
                        <div class="form-group">
                            <input type="checkbox" id="1" checked="true"/>
                            <label for="dianfeng">电峰</label>
                            <input type="text" name="电峰" id="dianfeng" placeholder="请输入信任资产额度" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" id="2" checked="true"/>
                            <label for="diangu">电谷</label>
                            <input type="text" name="电谷" id="diangu" placeholder="请输入信任资产额度" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" id="3" checked="true"/>
                            <label for="dianping">电平</label>
                            <input type="text" name="电平" id="dianping" placeholder="请输入信任资产额度" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" id="4" checked="true"/>
                            <label for="daibi">代币</label>
                            <input type="text" name="代币" id="daibi" placeholder="请输入信任资产额度" class="form-control"/>
                        </div>
                        <input type="button" class="ld_btn" value="设置" onclick="setUp();"/>
                    </div>
                </div>
            </form>
        </div>

        <div class="padBottom"></div>
    </div>


    <!--个人中心-->
    <div role="tabpanel" class="tab-pane fade ld_content" id="personal">
        <img src="../img/personBanner.jpg" alt="" />
        <!--<div class="banner">
            <div class="banner_tip">
                <div class="welcom_zhezhao"></div>
                <div class="ld_content">
                    <p class="pull-left welcome">您好！欢迎使用链电网络</p>
                    <p class="pull-right per_txt">个人中心</p>
                </div>
            </div>
        </div>-->

        <div class="banner_tip ld_Wrap tab-content-padding">
            <!--<div class="welcom_zhezhao"></div>-->
            <div class="">
                <p class="pull-left welcome">您好！欢迎使用链能网络</p>
                <p class="pull-right per_txt">个人中心</p>
            </div>
        </div>

        <div class="ld_content  ld_Wrap tab-content-padding" id="qianbao">
            <h3 class="content_title">
                我的钱包  <span class="content_tips">(钱包提现金额会在7个工作日内到账)</span>
            </h3>
            <div class="ld_content_list clearfix margin_top20">
                <div class="pull-left">
                    余额：<span class="ld_content_monney">7458.00</span>元
                </div>
                <div class="pull-right">
                    <input type="button" class="ld_btn margin_top0 margin_bottom18 padding_l_r" value="充值"/>
                    <input type="button" id="" value="提现" class="ld_btn margin_top0 margin_bottom18 btn_default padding_l_r" />
                </div>
            </div>
        </div>

        <div class="ld_content  ld_Wrap tab-content-padding" id="dizhi" hidden="true">
            <h3 class="content_title">
                交易地址  <span class="content_tips">  (任何拥有该秘钥的人都可以取出你的钱。所以务必将它保管在安全的地方。)</span>
            </h3>
            <div class="ld_content_list clearfix margin_top20">
                <div class="pull-left dizhiWidth">
                    <span class="list_title1">你把密钥保存在安全的地方了吗？</span>
                    <span class="content_tips margin_top20">(秘钥文件不得外流，请妥善保存你的秘钥文件，建议多用几个专门的U盘备份钱包文件并分地方存放。)</span>
                    <input type="button" class="ld_btn" name="" id="" value="保存秘钥" />
                </div>
                <div class="pull-left dizhiWidth">
                    <span class="list_title1">秘钥:</span>
                    <span class="list_title2 display_inlineBlock">SA****************************************s</span>
                    <span class="content_tips">(请在确定安全的地方显示，防止泄露秘钥信息造成损失)</span>
                    <input type="button" class="ld_btn" name="" id="" value="显示密钥" />
                </div>
            </div>
        </div>

        <div class="ld_content  ld_Wrap  tab-content-padding" id="wodedian">
            <h3 class="content_title">
                我的电量   <span class="content_tips">   (了解您的用电情况)</span>
            </h3>
            <div class="ld_content_list clearfix margin_top20">
                <div class="wodedian_current">当前的可用电量：<span>500</span> W</div>
                <div class="clearfix">
                    <div class="pull-left">
                        <div class="pull-left clearfix" id="keyongdian">
                            <div class="pull-left beginTime">开始时间：
                                <div class="clearfix display_inlineBlock">
                                    <%--<input type="text">--%>
                                </div>
                            </div>
                            <div class="pull-left beginTime">开始时间：
                                <div class="clearfix display_inlineBlock">
                                    <%--<input type="text">--%>
                                </div>
                            </div>
                            <div class="leixing pull-left">所属电表：
                                <select name="" class="dianbiao">
                                    <option value="电表1" selected="selected">电表1</option>
                                    <option value="电表2">电表2</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="pull-right">
                        <input type="button" value="搜索" class="ld_btn margin_top0"/>
                    </div>
                </div>
            </div>
            <div class="jiange"></div>
            <table class="table bg_white text-center">
                <thead>
                <tr>
                    <th class="text-center">用电量（W）</th>
                    <th class="text-center">电费（元）</th>
                    <th class="text-center">所属电表</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>
                <tr>
                    <td>100</td>
                    <td>1000</td>
                    <td>电表1</td>
                </tr>

                </tbody>
            </table>
            <div class="padBottom"></div>
        </div>

    </div>


</div>

<div class="ld_footer text-center">
    Copyright ©2013-2017  链能网络  粤ICP备10011451号-6
</div>

<script src="../lib/jquery.min.js"></script>
<script src="../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="../js/common.js"></script>
<script src="../js/md5.js"></script>
<script>

    var banner = $(".ld_banner");
    //	$(".ld_banner").height(bannerHeight);
    setEleHeight(banner,contentHeight);

    //		    setminHeight($(".tab-content"),contentHeight);

    $(".tab-pane").each(function(i,ele){
        setminHeight($(ele),contentHeight);
    });
    
    function pay() {
        alert(0000000);
        var request = require('request');
        request.get({
            url: 'https://horizon-testnet.stellar.org/friendbot',
            qs: { addr: pair.publicKey() },
            json: true
        }, function(error, response, body) {
            if (error || response.statusCode !== 200) {
                console.error('ERROR!', error || body);
            }
            else {
                console.log('SUCCESS! You have a new account :)\n', body);
            }
        });
    }

    function setUp() {
        var dianfeng="";
        var diangu="";
        var dianping="";
        var daibi="";
        var gkey = document.getElementById("gkey").value;
        var skey = document.getElementById("skey").value;
        var faxingzhanghu = document.getElementById("faxingzhanghu").value;
        if(document.getElementById("1").checked){
            dianfeng = document.getElementById("dianfeng").value;
        }
        if(document.getElementById("2").checked){
            diangu = document.getElementById("diangu").value;
        }
        if(document.getElementById("3").checked){
            dianping = document.getElementById("dianping").value;
        }
        if(document.getElementById("4").checked){
            daibi = document.getElementById("daibi").value;
        }
        if(dianfeng=="" || dianfeng==null){
            alert("电峰的信任资产额度不可为空！");return false;
        }
        if(diangu=="" || diangu==null){
            alert("电谷的信任资产额度不可为空！");return false;
        }
        if(dianping=="" || dianping==null){
            alert("电平的信任资产额度不可为空！");return false;
        }
        if(daibi=="" || daibi==null){
            alert("代币的信任资产额度不可为空！");return false;
        }

        $.ajax({
            type: "POST",
            timeout: 3000,
            async: false,
            cache: false,
            data:{dianfeng:dianfeng,diangu:diangu,dianping:dianping,daibi:daibi,gkey:gkey,faxingzhanghu:faxingzhanghu,skey:skey},//参数
            url: "../../operation/ydsetUp.action",
            success: function (data){
                if(data=="NO"){
                    alert("设置失败!");
                }else{
                    alert("设置成功！");
                }
            }
        });

    }
    
    function buy() {
        var type = document.getElementById("type").value;
        var price = document.getElementById("price").value;
        var num = document.getElementById("num").value;
        var faxingzhanghu = document.getElementById("faxingzhanghu").value;
        var skey = document.getElementById("skey").value;
        var gkey = document.getElementById("gkey").value;
        var maxnum = document.getElementById("maxnum").value;
        var num1 = parseFloat(num);
        var maxnum1 = parseFloat(maxnum);
        if(num1>maxnum1){
                alert("不能超过最大购买数");return false;
        }
        $.ajax({
            type: "POST",
            timeout: 3000,
            async: false,
            cache: false,
            data:{type:type,price:price,num:num,faxingzhanghu:faxingzhanghu,skey:skey,gkey:gkey},//参数
            url: "../../transaction/buy.action",
            success: function (data){
                if(data=="OK"){
                    alert("挂单成功!");
                    document.getElementById("maxnum").value=maxnum1-num1;
                }else if(data=="NO"){
                    alert("挂单失败！");
                }else if(data=="NOTR"){
                    alert("请先进行账户设置在进行交易！");
                }
            }
        });
    }



</script>
</body>
</html>
