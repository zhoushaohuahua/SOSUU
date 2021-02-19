<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>七分学堂 &#8211; 七分爱TA，三分爱己</title>
    <meta name='robots' content='noindex,nofollow' />
    <link rel='stylesheet' id='begin-style-css' href='${APP_PATH}/static/css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='fonts-css' href='${APP_PATH}/static/css/fonts.css' type='text/css' media='all' />
    <link rel='stylesheet' id='iconfontd-css' href='${APP_PATH}/static/css/font_2000623_9ngkeyiefhg.css' type='text/css' media='all' />
    <script type='text/javascript' src='${APP_PATH}/static/js/jquery.min.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/lib/owl/owl.js'></script>
    <!-- <script type='text/javascript' src='${APP_PATH}/static/js/copyrightpro.js'></script> -->
    <style>
        #site-nav .down-menu>li>a:hover,
        #site-nav .down-menu>li.sfHover>a,
        #site-nav .down-menu>.current-menu-item>a,
        #site-nav .down-menu>.current-post-ancestor>a,
        .sf-arrows>li>.sf-with-ul:focus:after,
        .sf-arrows>li:hover>.sf-with-ul:after,
        .sf-arrows>.sfHover>.sf-with-ul:after,
        #site-nav .down-menu>.current-menu-item>.sf-with-ul:after,
        #site-nav .down-menu>.current-post-ancestor>.sf-with-ul:after {
            color: #000000
        }
    </style>
    <script src="/js/public.js"></script>
</head>

<body class="home blog" ontouchstart="">
    <div id="page" class="hfeed site">
        <header id="masthead" class="site-header da site-header-s">
            <div id="header-main" class="header-main">
                <nav id="header-top" class="header-top da">
                    <div class="nav-top">
                        <div class="yanVX">
                            <div class="click_this"><img src="/wp-content/themes/begin/img/yanzhen.png"
                                    class="img1">验证官方微信<img src="/wp-content/themes/begin/img/xiajiantou.png"
                                    class="img2">
                            </div>
                            <div class="yanVX_box" style="display: none;">
                                <input type="text" placeholder="请输入要查询的官方微信号" id="text">
                                <label><button>验证</button></label>
                                <p>你验证的微信号：<span class="noV">填写微信号</span></p>
                                <!--是class名改为yesV-->
                            </div>
                        </div>
                        <div id="user-profile">
                            <span class="greet-top">
                                <div class="user-wel">欢迎光临！</div>
                            </span>


                            <div class="nav-set">
                                <div class="nav-login">
                                    <div class="show-layer" data-show-layer="login-layer" role="button"><i
                                            class="be be-timerauto"></i>登录</div>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </div>
                </nav><!-- #top-header -->
                <div id="menu-container" class="da">
                    <div id="navigation-top" class="bgt">
                        <span class="nav-search-room"></span>
                        <div class="logo-sites">
                            <h1 class="site-title">
                                <a href="https://qifenxuetang.com/"><img
                                        src="http://qifenxuetang.com/wp-content/uploads/2020/08/2ban-ksalogo.png"
                                        title="七分学堂" alt="七分学堂" rel="home" /><span class="site-name">七分学堂</span></a>
                            </h1>
                        </div><!-- .logo-site -->

                        <div id="site-nav-wrap" class="site-nav-wrap-right">
                            <div id="sidr-close">
                                <span class="toggle-sidr-close"><i class="be be-cross"></i></span>
                            </div>
                            <nav id="site-nav" class="main-nav">
                                <span id="navigation-toggle" class="bars"><i class="be be-menu"></i></span>
                                <div class="menu-%e4%b8%bb%e8%8f%9c%e5%8d%95-container">
                                    <ul id="menu-%e4%b8%bb%e8%8f%9c%e5%8d%95" class="down-menu nav-menu">
                                        <li id="menu-item-569" class="menu-item
                                                    menu-item-type-custom
                                                    menu-item-object-custom
                                                    current-menu-item
                                                    current_page_item menu-item-home
                                                    menu-item-569">
                                            <a href="http://qifenxuetang.com/" aria-current="page"><i
                                                    class="zm zm-home"></i><span class="font-text">首页</span></a>
                                        </li>
                                        <li id="menu-item-570" class="menu-item
                                                    menu-item-type-post_type
                                                    menu-item-object-page
                                                    menu-item-570">
                                            <a href="https://qifenxuetang.com/lianaikecheng.html"><i
                                                    class="zm zm-location"></i><span class="font-text">恋爱课程</span></a>
                                        </li>
                                        <li id="menu-item-298" class="menu-item
                                                    menu-item-type-taxonomy
                                                    menu-item-object-category
                                                    menu-item-298">
                                            <a href="https://qifenxuetang.com/ghfx/"><i
                                                    class="zm zm-lightbulb"></i><span class="font-text">干货分享</span></a>
                                        </li>
                                        <li id="menu-item-299" class="menu-item
                                                    menu-item-type-taxonomy
                                                    menu-item-object-category
                                                    menu-item-299">
                                            <a href="https://qifenxuetang.com/dsal/"><i class="zm zm-gem"></i><span
                                                    class="font-text">导师案例</span></a>
                                        </li>
                                        <li id="menu-item-300" class="menu-item
                                                    menu-item-type-taxonomy
                                                    menu-item-object-category
                                                    menu-item-300">
                                            <a href="https://qifenxuetang.com/xydt/"><i
                                                    class="zm zm-user-fill"></i><span class="font-text">学员案例</span></a>
                                        </li>
                                        <li id="menu-item-571" class="menu-item
                                                    menu-item-type-post_type
                                                    menu-item-object-page
                                                    menu-item-571">
                                            <a href="https://qifenxuetang.com/lianxiwomen2.html"><i
                                                    class="zm zm-phone"></i><span class="font-text">联系我们</span></a>
                                        </li>
                                    </ul>
                                </div>
                                <div id="overlay"></div>
                            </nav>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </header><!-- #masthead -->
        <nav class="bread">
            现在位置<i class="be be-arrowright"></i>首页 </nav>



        <div id="content" class="site-content">
            <style type="text/css">
                #content {
                    width: 100%;
                    margin: 0 auto;
                }

                #masthead {
                    background: #fff;
                }

                #primary {
                    width: 100%;
                    box-shadow: none;
                }

                #primary .page {
                    background: transparent !important;
                    padding: 0 !important;
                    border: none !important;
                    box-shadow: none !important;
                }

                .bread,
                .header-sub,
                .owl-buttons {
                    display: none;
                }

                #slideshow {
                    background: #fff;
                    margin: -1px auto 0;
                }

                #menu-box {
                    transition-duration: .0s;
                }

                .ad-site {
                    display: none;
                }
            </style>
            <div class="container">
                <div class="g-row">
                    <div id="slider-group" class="slider-group">
                        <div class="slider-group-main">
                            <div class="group-big-img">
                                <a href="https://qifenxuetang.com/%E4%B8%83%E5%88%86%E5%AD%A6%E5%A0%82-%E7%89%9B%E5%B9%B4%E6%98%A5%E8%8A%82%E7%A6%8F%E5%88%A9%EF%BC%8C%E8%B6%85%E5%80%BC%E6%B4%BB%E5%8A%A8%E9%92%9C%E6%83%A0.html"
                                    rel="bookmark"><img
                                        src="http://qifenxuetang.com/wp-content/uploads/2020/09/11banner.jpg"
                                        alt="公司幻灯片二" /></a>
                            </div>
                            <div class="slider-group-main-box bgt">
                                <div class="group-slider-main-body bgt">
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="slider-group-main">
                            <div class="group-big-img">
                                <a href="https://qifenxuetang.com/%E4%B8%83%E5%88%86%E5%AD%A6%E5%A0%82-%E7%89%9B%E5%B9%B4%E6%98%A5%E8%8A%82%E7%A6%8F%E5%88%A9%EF%BC%8C%E8%B6%85%E5%80%BC%E6%B4%BB%E5%8A%A8%E9%92%9C%E6%83%A0.html"
                                    rel="bookmark"><img
                                        src="http://qifenxuetang.com/wp-content/uploads/2021/01/1111banner.jpg"
                                        alt="公司幻灯篇一" /></a>
                            </div>
                            <div class="slider-group-main-box bgt">
                                <div class="group-slider-main-body bgt">
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="group-section" class="bgt">
                    <div class="g-row g-line sort" name="4">
                        <div class="g-col">
                            <div class="deanm">
                                <div class="group-title wow fadeInDown">
                                    <h3>恋爱课程</h3>
                                    <div class="group-des"></div>
                                    <div class="clear"></div>
                                </div>
                                <div class="deanm-main wow fadeInUp">
                                    <div class="deanm sup deanmove da bkh">
                                        <div class="de-t wow fadeIn"><a href="http://qifenxuetang.com/tao/480.html"
                                                rel="bookmark">恋爱核武器</a></div>
                                        <div class="clear"></div>
                                        <div class="de-a wow fadeIn">恋爱核武器</div>
                                        <div class="deanquan sup">
                                            <a href="http://qifenxuetang.com/tao/480.html" target="_blank">
                                                <div class="de-back">
                                                    <img src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/2020082417044303.jpg&w=200&h=200&zc=1"
                                                        alt="恋爱核武器">
                                                    <div class="de-b wow
                                                            fadeIn bgt">恋爱核武器</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="de-c wow fadeIn">了解男女思维的本质，成就完美恋爱</div>
                                        <div class="de-button wow fadeIn">
                                            <a class="da" href="http://qifenxuetang.com/tao/480.html" target="_blank"><i
                                                    class='zm zm-location'></i>3880元</a>
                                        </div>
                                    </div>
                                    <div class="deanm sup deanmove da bkh">
                                        <div class="de-t wow fadeIn"><a href="http://qifenxuetang.com/tao/478.html"
                                                rel="bookmark">我知女人心</a></div>
                                        <div class="clear"></div>
                                        <div class="de-a wow fadeIn">我知女人心</div>
                                        <div class="deanquan sup">
                                            <a href="http://qifenxuetang.com/tao/478.html" target="_blank">
                                                <div class="de-back">
                                                    <img src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/5b49ba9302ab39097ff5503def908e2_01.jpg&w=200&h=200&zc=1"
                                                        alt="我知女人心">
                                                    <div class="de-b wow
                                                            fadeIn bgt">我知女人心</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="de-c wow fadeIn">带你走进女生的内心</div>
                                        <div class="de-button wow fadeIn">
                                            <a class="da" href="http://qifenxuetang.com/tao/478.html"
                                                target="_blank">1299元</a>
                                        </div>
                                    </div>
                                    <div class="deanm sup deanmove da bkh">
                                        <div class="de-t wow fadeIn"><a href="http://qifenxuetang.com/tao/474.html"
                                                rel="bookmark">私人定制</a></div>
                                        <div class="clear"></div>
                                        <div class="de-a wow fadeIn">私人定制</div>
                                        <div class="deanquan sup">
                                            <a href="http://qifenxuetang.com/tao/474.html" target="_blank">
                                                <div class="de-back">
                                                    <img src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/2020082417044301.png&w=200&h=200&zc=1"
                                                        alt="私人定制">
                                                    <div class="de-b wow
                                                            fadeIn bgt">私人定制</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="de-c wow fadeIn">全天候服务，真爱狙击</div>
                                        <div class="de-button wow fadeIn">
                                            <a class="da" href="http://qifenxuetang.com/tao/474.html" target="_blank"><i
                                                    class='zm
                                                        zm-collection'></i>6880元</a>
                                        </div>
                                    </div>
                                    <div class="deanm sup deanmove da bkh">
                                        <div class="de-t wow fadeIn"><a href="http://qifenxuetang.com/tao/662.html"
                                                rel="bookmark">约会指南针</a></div>
                                        <div class="clear"></div>
                                        <div class="de-a wow fadeIn">约会指南针</div>
                                        <div class="deanquan sup">
                                            <a href="http://qifenxuetang.com/tao/662.html" target="_blank">
                                                <div class="de-back">
                                                    <img src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/12/df177d1d8a6a65143696e250ccba746_01.jpg&w=200&h=200&zc=1"
                                                        alt="约会指南针">
                                                    <div class="de-b wow
                                                            fadeIn bgt">约会指南针</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="de-c wow fadeIn">约会不知道去哪？见面就没有下文？</div>
                                        <div class="de-button wow fadeIn">
                                            <a class="da" href="http://qifenxuetang.com/tao/662.html"
                                                target="_blank">1299元</a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="g-row sort" name="9">
                        <div class="g-col">
                            <div class="group-features">
                                <div class="group-title wow fadeInDown">
                                    <h3>公司环境</h3>
                                    <div class="group-des"></div>
                                    <div class="clear"></div>
                                </div>
                                <div class="section-box">
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="picture-cms-img">
                                                <a href="https://qifenxuetang.com/show/129.html"><img
                                                        src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/82e587fb36d1c004127bc08f7182a33-scaled.jpg&w=280&h=210&a=&zc=1"
                                                        alt="公司环境" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a
                                                    href="https://qifenxuetang.com/show/129.html"
                                                    rel="bookmark">公司环境</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="picture-cms-img">
                                                <a href="https://qifenxuetang.com/show/127.html"><img
                                                        src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/8c12c2ada63d867f3b34b66873129e8.jpg&w=280&h=210&a=&zc=1"
                                                        alt="办公环境" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a
                                                    href="https://qifenxuetang.com/show/127.html"
                                                    rel="bookmark">办公环境</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="picture-cms-img">
                                                <a href="https://qifenxuetang.com/show/125.html"><img
                                                        src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/cd221f0c1a47728169b9d7734484e83.jpg&w=280&h=210&a=&zc=1"
                                                        alt="行政部门" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a
                                                    href="https://qifenxuetang.com/show/125.html"
                                                    rel="bookmark">行政部门</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="picture-cms-img">
                                                <a href="https://qifenxuetang.com/show/123.html"><img
                                                        src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/1f1ed7f140f34da8992177bff43c7f5.jpg&w=280&h=210&a=&zc=1"
                                                        alt="导师动态" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a
                                                    href="https://qifenxuetang.com/show/123.html"
                                                    rel="bookmark">导师动态</a></h3>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="g-row sort" name="5">
                        <div class="g-col">
                            <div class="grid-md">
                                <div class="group-title wow fadeInDown">
                                    <h3>课程优势</h3>
                                    <div class="separator"></div>
                                    <div class="group-des"></div>
                                    <div class="clear"></div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-love1"></i></div>
                                            <h3 class="gw-title">被爱能力</h3>
                                            <div class="gw-content">你学会的不仅仅是技巧，还有被爱的能力</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-user-group-fill"></i></div>
                                            <h3 class="gw-title">微信群</h3>
                                            <div class="gw-content">专属学员群
                                                老师在线指导 共同进步成长</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-training"></i></div>
                                            <h3 class="gw-title">视频录像</h3>
                                            <div class="gw-content">视频录像，一次直播指导，循环听</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-compass"></i></div>
                                            <h3 class="gw-title">快速蜕变</h3>
                                            <div class="gw-content">入学一天就有变化
                                                3个月成为恋爱大神</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-location"></i></div>
                                            <h3 class="gw-title">最新课程</h3>
                                            <div class="gw-content">课程实时更新，让你学习最新的恋爱知识</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gw-box">
                                    <div class="gw-main sup bkh gw-main-">
                                        <div class="gw-area">
                                            <div class="gw-ico"><i class="zm
                                                        zm-icon-test2"></i></div>
                                            <h3 class="gw-title">突破圈子小</h3>
                                            <div class="gw-content">教你众多认识异性的方式，解决不自信</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="g-row sort" name="2">
                        <div class="g-col">
                            <div class="group-post-box">
                                <article id="post-112" class="group-post-list grl wow
                                        fadeInUp">
                                    <div class="group-post-img sup">
                                        <a href="https://qifenxuetang.com/112.html"><img
                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/111-scaled.jpg&w=700&h=380&a=&zc=1"
                                                alt="公司介绍" /></a>
                                    </div>

                                    <div class="group-post-content">
                                        <h3 class="group-post-title"><a href="https://qifenxuetang.com/112.html"
                                                rel="bookmark">公司介绍</a></h3>
                                        <div class="group-post-excerpt">
                                            河南七分学堂教育咨询有限公司旗下品牌-七分学堂
                                            致力于解决中国8000万单身男青年脱单，提升个人魅力，成就幸福婚姻
                                            。
                                            服务客户高达10余万，10000+付费学员！
                                            帮助用户解决情感，心理，婚姻与家庭层面的问题，提升用户生活品质，实现情感自由。
                                            团队成员是由情感咨询师，互联网、教育、心理咨询行业专业人士构成。
                                            &nbsp; </div>
                                        <div class="group-post-more bk da"><a href="https://qifenxuetang.com/112.html"
                                                rel="bookmark">详细查看</a></div>
                                    </div>
                                    <div class="clear"></div>
                                </article>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="g-row g-line sort" name="3">
                        <div class="g-col">
                            <div class="group-features">
                                <div class="group-title wow fadeInDown">
                                    <h3>导师介绍</h3>
                                    <div class="group-des"></div>
                                    <div class="clear"></div>
                                </div>
                                <div class="section-box">
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="section-thumbnail">
                                                <a href="https://qifenxuetang.com/306.html"><img
                                                        src="http://qifenxuetang.com/wp-content/uploads/2020/08/prune-1.jpg"
                                                        alt="西语" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a href="https://qifenxuetang.com/306.html"
                                                    rel="bookmark">西语</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="section-thumbnail">
                                                <a href="https://qifenxuetang.com/65.html"><img
                                                        src="http://qifenxuetang.com/wp-content/uploads/2020/08/prune-11.jpg"
                                                        alt="林导" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a href="https://qifenxuetang.com/65.html"
                                                    rel="bookmark">林导</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="section-thumbnail">
                                                <a href="https://qifenxuetang.com/63.html"><img
                                                        src="http://qifenxuetang.com/wp-content/uploads/2020/08/prune-31.jpg"
                                                        alt="冰度" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a href="https://qifenxuetang.com/63.html"
                                                    rel="bookmark">冰度</a></h3>
                                        </div>
                                    </div>
                                    <div class="g4">
                                        <div class="box-4 wow fadeInUp">
                                            <figure class="section-thumbnail">
                                                <a href="https://qifenxuetang.com/58.html"><img
                                                        src="http://qifenxuetang.com/wp-content/uploads/2020/08/prune-112.jpg"
                                                        alt="熊导" /></a>
                                            </figure>
                                            <h3 class="g4-title wow fadeIn"><a href="https://qifenxuetang.com/58.html"
                                                    rel="bookmark">熊导</a></h3>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="g-row g-line sort" name="7">
                        <div class="g-col">
                            <div id="group-widget-three" class="group-widget
                                    dy fadeInUp">
                                <div class="xl3">
                                    <aside id="new_cat-4" class="widget
                                            new_cat wow fadeInUp ms bk">
                                        <h3 class="widget-title bkx da">学员案例</h3>
                                        <div class="new_cat">
                                            <ul>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/752.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2021/02/f9550a291041bc1ad509cf4a8fb8c54.jpg&w=280&h=210&a=&zc=1"
                                                                alt="【学员喜讯】—又一位学员兄弟，和女朋友领证结婚" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/752.html"
                                                            rel="bookmark">【学员喜讯】—又一位学员兄弟，和女朋友领证结婚</a></span>
                                                    <span class="date">02/02</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/744.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2021/01/2dac1c06eb29c8e8f4e9051495aba70.jpg&w=280&h=210&a=&zc=1"
                                                                alt="️学员感恩回馈-送来了一箱结婚喜糖，真心祝福他" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/744.html"
                                                            rel="bookmark">️学员感恩回馈-送来了一箱结婚喜糖，真心祝福他</a></span>
                                                    <span class="date">01/25</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/669.html"><img
                                                                src="http://qifenxuetang.com/wp-content/uploads/2021/01/prune-01171426.png"
                                                                alt="学员修成正果" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/669.html"
                                                            rel="bookmark">学员修成正果</a></span>
                                                    <span class="date">01/21</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/104.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/53f58f401ad69c3b21c38da2adc875c-1.jpg&w=280&h=210&a=&zc=1"
                                                                alt="学员走向婚姻" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/104.html"
                                                            rel="bookmark">学员走向婚姻</a></span>
                                                    <span class="date">01/20</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/701.html"><img
                                                                src="http://qifenxuetang.com/wp-content/uploads/2021/01/prune-011714.png"
                                                                alt="学员脱单,只学了一部分，就抱得美人归" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/701.html"
                                                            rel="bookmark">学员脱单,只学了一部分，就抱得美人归</a></span>
                                                    <span class="date">01/17</span>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="clear"></div>
                                    </aside>
                                </div>
                                <div class="xl3">
                                    <aside id="new_cat-5" class="widget
                                            new_cat wow fadeInUp ms bk">
                                        <h3 class="widget-title bkx da">导师案例</h3>
                                        <div class="new_cat">
                                            <ul>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/710.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2021/01/7-1611213135.jpg&w=280&h=210&a=&zc=1"
                                                                alt="亿万单身兄弟要明白的聊天潜规则！" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/710.html"
                                                            rel="bookmark">亿万单身兄弟要明白的聊天潜规则！</a></span>
                                                    <span class="date">01/21</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/150.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/E5BEAEE4BFA1E59BBEE78987_20190701171553.jpg&w=280&h=210&a=&zc=1"
                                                                alt="100%追到高分妹的七大秘籍" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/150.html"
                                                            rel="bookmark">100%追到高分妹的七大秘籍</a></span>
                                                    <span class="date">08/17</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/158.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/2-8-1.jpg&w=280&h=210&a=&zc=1"
                                                                alt="蘑菇大叔的型男蜕变史" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/158.html"
                                                            rel="bookmark">蘑菇大叔的型男蜕变史</a></span>
                                                    <span class="date">08/16</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/152.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/微信图片_20200714142628.jpg&w=280&h=210&a=&zc=1"
                                                                alt="一个八年理工男的蜕变史" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/152.html"
                                                            rel="bookmark">一个八年理工男的蜕变史</a></span>
                                                    <span class="date">08/16</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/154.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/微信图片_20190701171553.jpg&w=280&h=210&a=&zc=1"
                                                                alt="经常吵架怎么办，分分合合，林导十年爱情故事" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/154.html"
                                                            rel="bookmark">经常吵架怎么办，分分合合，林导十年爱情故事</a></span>
                                                    <span class="date">08/16</span>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="clear"></div>
                                    </aside>
                                </div>
                                <div class="xl3">
                                    <aside id="new_cat-6" class="widget
                                            new_cat wow fadeInUp ms bk">
                                        <h3 class="widget-title bkx da">干货分享</h3>
                                        <div class="new_cat">
                                            <ul>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/205.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/E5A4A9E5A4A9E88194E7B3BB.jpg&w=280&h=210&a=&zc=1"
                                                                alt="滴滴撩妹，学会这几点不是问题" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/205.html"
                                                            rel="bookmark">滴滴撩妹，学会这几点不是问题</a></span>
                                                    <span class="date">08/22</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/270.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/E8BFBDE5A5B3E7949FE6ADA5E9AAA4.jpg&w=280&h=210&a=&zc=1"
                                                                alt="怎么和妹子网上聊天，注意这3点，不愁聊天死" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/270.html"
                                                            rel="bookmark">怎么和妹子网上聊天，注意这3点，不愁聊天死</a></span>
                                                    <span class="date">06/05</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/289.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/222-1.jpg&w=280&h=210&a=&zc=1"
                                                                alt="你之所以追女生失败屡屡受挫,就是不明白这些道理(学员感悟)" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/289.html"
                                                            rel="bookmark">你之所以追女生失败屡屡受挫,就是不明白这些道理(学员感悟)</a></span>
                                                    <span class="date">04/08</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/280.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/hshsi.jpg&w=280&h=210&a=&zc=1"
                                                                alt="有车有房有存款了，女生却说她完全不看中这些" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/280.html"
                                                            rel="bookmark">有车有房有存款了，女生却说她完全不看中这些</a></span>
                                                    <span class="date">03/09</span>
                                                </li>
                                                <li>
                                                    <span class="thumbnail">
                                                        <a href="https://qifenxuetang.com/256.html"><img
                                                                src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/zzser.jpg&w=280&h=210&a=&zc=1"
                                                                alt="聊天怎么引导女生，今日份干货" /></a>
                                                    </span>
                                                    <span class="new-title"><a href="https://qifenxuetang.com/256.html"
                                                            rel="bookmark">聊天怎么引导女生，今日份干货</a></span>
                                                    <span class="date">12/11</span>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="clear"></div>
                                    </aside>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div id="section-gtg" class="g-row sort" name="11">
                        <div class="g-col bgt">
                            <div class="hot-box bgt">
                                <div class="group-title wow fadeInDown bgt">
                                    <h3 class="bgt">公司证书</h3>
                                    <div class="group-des bgt"></div>
                                    <div class="clear"></div>
                                </div>

                                <div id="slider-hot" class="slider-hot wow
                                        fadeIn bgt">
                                    <div id="post-539" class="post bk post-539 type-post
                                            status-publish format-standard
                                            hentry category-gongsizhengshu zrw">
                                        <a href="https://qifenxuetang.com/539.html"><img class="owl-lazy"
                                                data-src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/e1122e6c68be22960968534bd9be67f-scaled.jpg&w=280&h=210&a=&zc=1"
                                                alt="高级心理咨询师-林导" /></a>
                                        <div class="clear"></div>
                                        <h2 class="carousel-title bgt"><a class="bgt"
                                                href="https://qifenxuetang.com/539.html" rel="bookmark">高级心理咨询师-林导</a>
                                        </h2>
                                    </div>
                                    <div id="post-551" class="post bk post-551 type-post
                                            status-publish format-standard
                                            hentry category-gongsizhengshu zrw">
                                        <a href="https://qifenxuetang.com/551.html"><img class="owl-lazy"
                                                data-src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/e095514566c6ec30eaa6315e1e1daee-scaled.jpg&w=280&h=210&a=&zc=1"
                                                alt="高级心理咨询师-熊导" /></a>
                                        <div class="clear"></div>
                                        <h2 class="carousel-title bgt"><a class="bgt"
                                                href="https://qifenxuetang.com/551.html" rel="bookmark">高级心理咨询师-熊导</a>
                                        </h2>
                                    </div>
                                    <div id="post-552" class="post bk post-552 type-post
                                            status-publish format-standard
                                            hentry category-gongsizhengshu zrw">
                                        <a href="https://qifenxuetang.com/552.html"><img class="owl-lazy"
                                                data-src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/ec9d096acefdbfafd4f8d2d591a12c8.jpg&w=280&h=210&a=&zc=1"
                                                alt="营业执照" /></a>
                                        <div class="clear"></div>
                                        <h2 class="carousel-title bgt"><a class="bgt"
                                                href="https://qifenxuetang.com/552.html" rel="bookmark">营业执照</a></h2>
                                    </div>
                                    <div id="post-553" class="post bk post-553 type-post
                                            status-publish format-standard
                                            hentry category-gongsizhengshu zrw">
                                        <a href="https://qifenxuetang.com/553.html"><img class="owl-lazy"
                                                data-src="https://qifenxuetang.com/wp-content/themes/begin/prune.php?src=http://qifenxuetang.com/wp-content/uploads/2020/08/3cf0f3044b63e8f50b09df7d21fd785-scaled.jpg&w=280&h=210&a=&zc=1"
                                                alt="国际信息化人才培训证书" /></a>
                                        <div class="clear"></div>
                                        <h2 class="carousel-title bgt"><a class="bgt"
                                                href="https://qifenxuetang.com/553.html" rel="bookmark">国际信息化人才培训证书</a>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div><!-- container end -->
        </div><!-- .site-content -->
        <div class="clear"></div>
        <div class="links-group">
            <div id="links">
                <div class="clear"></div>
            </div>
        </div>
        <div id="footer-widget-box" class="site-footer bgt">
            <div class="footer-widget bgt">
                <aside id="custom_html-2" class="widget_text widget
                        widget_custom_html wow fadeInUp">
                    <h3 class="widget-title bkx da"><span class="s-icon"></span>联系我们：</h3>
                    <div class="textwidget custom-html-widget">
                        <p>
                            郑州市金水区农业路东16号省汇中心A座27层05号
                        </p>
                        <p>
                            客服电话：0371-65050773</p>
                    </div>
                    <div class="clear"></div>
                </aside>
                <aside id="custom_html-5" class="widget_text widget
                        widget_custom_html wow fadeInUp">
                    <div class="textwidget custom-html-widget">
                        <ul class="about-me-img clearfix">
                            <li>
                                <img src="http://qifenxuetang.com/wp-content/uploads/2020/08/微信图片_20200827152119.jpg"
                                    title="公众号" alt="微信">
                                <p>公众号</p>
                            </li>

                            <li>
                                <img src="http://qifenxuetang.com/wp-content/uploads/2020/08/微信图片_20200827152119.jpg"
                                    title="导师微信" alt="QQ交流群">
                                <p>导师微信</p>
                            </li>
                            <li>
                                <img src="http://qifenxuetang.com/wp-content/uploads/2020/08/微信图片_20200827152119.jpg"
                                    title="抖音二维码" alt="QQ交流群">
                                <p>抖音</p>
                            </li>

                        </ul>

                        <style type="text/css">
                            .about-me-img li {
                                float: left;
                                padding: 5px;
                                width: 33.333333333333333333% !important;
                            }

                            .about-me-img p {
                                text-align: center;
                            }
                        </style>
                    </div>
                    <div class="clear"></div>
                </aside>
                <aside id="custom_html-6" class="widget_text widget
                        widget_custom_html wow fadeInUp">
                    <h3 class="widget-title bkx da"><span class="s-icon"></span>公司简介</h3>
                    <div class="textwidget custom-html-widget">七分学堂致力于解决中国8000万单身男青年脱单，提升个人魅力，解决情感、心理，婚姻与家庭层面的问题，成就幸福婚姻。
                    </div>
                    <div class="clear"></div>
                </aside>
                <div class="clear"></div>
            </div>
        </div>
        <footer id="colophon" class="site-footer bgt" role="contentinfo">
            <div class="site-info">
                Copyright © 七分学堂 版权所有. <div class="add-info">
                    <a style="font-size: 11px;" href="http://www.beian.miit.gov.cn/" target="_blank"
                        rel="external nofollow noopener"><img style="vertical-align: middle;"
                            src="http://qifenxuetang.com/wp-content/uploads/2020/08/ba.png"
                            width="19px;" />豫ICP备20018733号</a>
                    <div class="clear"></div>
                </div>

            </div><!-- .site-info -->
        </footer><!-- .site-footer -->
        <div class="login-overlay" id="login-layer">
            <div id="login">
                <div id="login-tab" class="fadeInDown animated da bk">
                    <div class="login-tab-product da">
                        <div class="login-tab-bd login-dom-display">
                            <div class="login-tab-bd-con login-current">
                                <div id="tab1_login" class="tab_content_login">
                                    <form class="zml-form" action="" method="post">
                                        <div class="zml-status"></div>
                                        <div class="zml-username">
                                            <div class="zml-username-label">
                                                <label>用户名</label>
                                            </div>
                                            <div class="zml-username-input">
                                                <input class="input-control
                                                        da bk" type="text" name="log" />
                                            </div>
                                        </div>
                                        <div class="zml-password">
                                            <div class="zml-password-label
                                                    pass-input">
                                                <label>密码</label>
                                                <div class="togglepass"><i class="be be-eye"></i></div>
                                            </div>
                                            <div class="zml-password-input">
                                                <input class="login-pass
                                                        input-control da bk" type="password" name="pwd" />
                                            </div>
                                        </div>
                                        <div class="login-form">
                                            <div id="beginlogin-box" class="beginlogin-box">
                                                <div class="beginlogin-main"><a
                                                        href="https://qifenxuetang.com/wp-content/themes/begin/inc/social/qq.php?beginloginurl=http://qifenxuetang.com/"
                                                        title="QQ快速登录" rel="external
                                                            nofollow" target="_blank" class="beginlogin-qq-a
                                                            ms da"><i class="be
                                                                be-qq"></i></a><a
                                                        href="https://qifenxuetang.com/wp-content/themes/begin/inc/social/sina.php?beginloginurl=http://qifenxuetang.com/"
                                                        title="微博快速登录" rel="external
                                                            nofollow" target="_blank" class="beginlogin-weibo-a
                                                            ms da"><i class="be
                                                                be-stsina"></i></a><a
                                                        href="https://open.weixin.qq.com/connect/qrconnect?appid=123&redirect_uri=https://qifenxuetang.com/wp-content/themes/begin/inc/social/weixin.php&response_type=code&scope=snsapi_login&state=beginlogin_weixin#wechat_redirect"
                                                        title="微信快速登录" rel="external
                                                            nofollow" target="_blank" class="beginlogin-weixin-a
                                                            ms da"><i class="be
                                                                be-weixin"></i></a></div>
                                            </div>
                                        </div>
                                        <div class="zml-submit">
                                            <div class="zml-submit-button">
                                                <input type="submit" name="wp-submit" class="button-primary" value="登录"
                                                    tabindex="100" />
                                                <input type="hidden" name="login-ajax" value="login" />
                                                <input type="hidden" name="security" value="9d61ef0eda">
                                                <input type="hidden" name="redirect_to" value="/" />
                                            </div>
                                            <div class="rememberme pretty
                                                    success">
                                                <input type="checkbox" name="rememberme" value="forever"
                                                    checked="checked" checked />
                                                <label for="rememberme" type="checkbox" />
                                                <i class="mdi" data-icon=""></i>
                                                <em>记住我的登录信息</em>
                                                </label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>


                        </div>
                    </div>


                </div>
            </div>
        </div>
        <style>
            .single-content p {
                text-indent: 2em;
            }
        </style>
        <ul id="scroll" class="bgt">
            <li class="log log-no"><a class="log-button" title="文章目录"><i class="be be-menu"></i></a>
                <div class="log-prompt">
                    <div class="log-arrow">文章目录<i class="be be-playarrow"></i></div>
                </div>
            </li>
            <li><a class="scroll-h ms" title="返回顶部"><i class="be
                            be-arrowup"></i></a></li>
            <li><a class="scroll-b ms" title="转到底部"><i class="be
                            be-arrowdown"></i></a></li>
            <ul class="night-day">
                <li><span class="night-main"><a class="m-night" onclick="switchMode()" title="夜间模式"><span
                                class="m-moon"><span></span></span></a></span></li>
                <li><a class="m-day" onclick="switchMode()" title="白天模式"><i class="be be-loader"></i></a></li>
            </ul>
        </ul>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $('#content a').attr({ target: "_blank" });
            });
        </script>
    </div><!-- .site -->
    <script>document.body.oncopy = function () { alert("复制成功！转载请务必保留原文链接，申明来源，谢谢合作！"); }</script>
    <style>
        #section-gtg {
            background: url() no-repeat;
            background-position: center center;
            background-size: cover;
            width: 100%;
            background-attachment: fixed;
        }
    </style>
    <script type='text/javascript' src='${APP_PATH}/static/js/superfish.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/begin-script.js'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var ajax_content = { "ajax_url": "https:\/\/qifenxuetang.com\/wp-admin\/admin-ajax.php" };
/* ]]> */
    </script>
    <script type='text/javascript' src='${APP_PATH}/static/js/ajax-content.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/sticky.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/ias.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/jquery.lazyload.js'></script>
    <script type='text/javascript' src='${APP_PATH}/static/js/letter.js'></script>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var ajax_tab = { "ajax_url": "https:\/\/qifenxuetang.com\/wp-admin\/admin-ajax.php" };
/* ]]> */
    </script>
    <script type='text/javascript' src='${APP_PATH}/static/js/begin-tab.js'></script>
</body>

</html>
