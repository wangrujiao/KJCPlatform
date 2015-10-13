<%@ page language="java"  pageEncoding="UTF-8"%>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>湖北省国防科学技术工业办公室软件平台</title>
    <link href="<%=basePath%>/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/script/easyui/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/script/easyui/themes/icon.css" />
    <script type="text/javascript" src="<%=basePath%>/script/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/script/index.js"> </script>

<script type="text/javascript">
	var _menus = { "menus":
	[{
		"menuid": "1",
		"icon": "icon-sys",
		"menuname": "行政管理",
		"menus":[
			{
				"menuid": "11",
				"menuname": "公文管理",
				"icon": "icon-log",
				"url": "<%=basePath%>/administration/document.jsp"
				
			},
			{
				"menuid": "12",
				"menuname": "通讯录管理",
				"icon": "icon-log",
				"url": "http://hxling.cnblogs.com",
				"child": [{
					"menuid": "121",
					"menuname": "计量机构",
					"icon": "icon-role",
					"url": "demo2.html"
					},
					{
					"menuid": "122",
					"menuname": "高技术企业",
					"icon": "icon-role",
					"url": "demo.html"
					},
					{
					"menuid": "123",
					"menuname": "军工企业",
					"icon": "icon-role",
					"url": "demo.html"
					},
					{
					"menuid": "124",
					"menuname": "专家通讯录",
					"icon": "icon-role",
					"url": "demo.html"
					},
					{
					"menuid": "125",
					"menuname": "项目目录",
					"icon": "icon-set",
					"url": "demo.html"
					},
					{
					"menuid": "126",
					"menuname": "成果目录",
					"icon": "icon-set",
					"url": "demo.html"
					},
					{
					"menuid": "127",
					"menuname": "专项目录",
					"icon": "icon-set",
					"url": "demo.html"
					}					
				]
			}
			
		]
		
	},
	{
		"menuid": "2",
		"icon": "icon-sys",
		"menuname": "科技项目管理",
		"menus":[
		{
			"menuid": "21",
			"menuname": "技术成果基本信息",
			"icon": "icon-nav",
			"url": "demo.html",	
			"child":[{
				"menuid": "211",
				"menuname": "专利技术成果",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "212",
				"menuname": "登记鉴定成果",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "213",
				"menuname": "软件著作权",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "214",
				"menuname": "农作物新品种成果",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "215",
				"menuname": "其他技术成果",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "216",
				"menuname": "技术需求采集",
				"icon": "icon-nav",
				"url": "demo2.html"
			},
			{
				"menuid": "217",
				"menuname": "融资需求",
				"icon": "icon-nav",
				"url": "demo2.html"
			}]		
		},
		{
			"menuid": "22",
			"menuname": "高新技术企业信息",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "23",
			"menuname": "军品配套科研项目",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "24",
			"menuname": "湖北省科学技术奖励",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "25",
			"menuname": "国防科学技术奖",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "26",
			"menuname": "技术专家信息",
			"icon": "icon-nav",
			"url": "demo.html"	
		}
		
	]
		
	},
	{
		"menuid": "3",
		"icon": "icon-sys",
		"menuname": "军品质量管理",
		"menus":[
		{
			"menuid": "31",
			"menuname": "国防科技工业军工产品质量",
			"icon": "icon-nav",
			"url": "demo.html"				
		},
		{
			"menuid": "32",
			"menuname": "国防科技工业质量事故",
			"icon": "icon-nav",
			"url": "demo.html"				
		}	
		]
	},
	{
		"menuid": "4",
		"icon": "icon-sys",
		"menuname": "计量机构管理",
		"menus":[
		{
			"menuid": "41",
			"menuname": "国防三级计量技术机构",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "42",
			"menuname": "国防军工企事业单位最高计量标准器具",
			"icon": "icon-nav",
			"url": "demo.html"	
		},
		{
			"menuid": "43",
			"menuname": "国防军工企事业单位计量检定人员",
			"icon": "icon-nav",
			"url": "demo.html"	
		}
		]
	},
	{
		"menuid": "5",
		"icon": "icon-sys",
		"menuname": "武器装备许可管理",
		"menus":[{
			"menuid": "51",
			"menuname": "武器装备科研生产许可取证单位信息",
			"icon": "icon-nav",
			"url": "demo.html"	
		}
		]	
	},
	{
		"menuid": "6",
		"icon": "icon-sys",
		"menuname": "系统管理",
		"menus":[{
			"menuid": "61",
			"menuname": "用户管理",
			"icon": "icon-users",
			"url": "demo2.html",
		},
		{
			"menuid": "62",
			"menuname": "角色管理",
			"icon": "icon-role",
			"url": "demo2.html"
		},
		{
			"menuid": "63",
			"menuname": "系统设置",
			"icon": "icon-set",
			"url": "demo.html"
		}
		]	
	},
	{
		"menuid": "7",
		"icon": "icon-sys",
		"menuname": "数据库管理",
		"menus":[{
			"menuid": "71",
			"menuname": "数据一致性管理",
			"icon": "icon-set",
			"url": "demo2.html",
		},
		{
			"menuid": "71",
			"menuname": "数据库更新",
			"icon": "icon-set",
			"url": "demo2.html",
		}
		]
		
	}
	]	
		
}
	

        //设置登录窗口
        function openPwd() {
            $('#w').window({
                title: '修改密码',
                width: 300,
                modal: true,
                shadow: true,
                closed: true,
                height: 160,
                resizable:false
            });
        }
        //关闭登录窗口
        function closePwd() {
            $('#w').window('close');
        }

        

        //修改密码
        function serverLogin() {
            var $newpass = $('#txtNewPass');
            var $rePass = $('#txtRePass');

            if ($newpass.val() == '') {
                msgShow('系统提示', '请输入密码！', 'warning');
                return false;
            }
            if ($rePass.val() == '') {
                msgShow('系统提示', '请在一次输入密码！', 'warning');
                return false;
            }

            if ($newpass.val() != $rePass.val()) {
                msgShow('系统提示', '两次密码不一至！请重新输入', 'warning');
                return false;
            }

            $.post('/ajax/editpassword.ashx?newpass=' + $newpass.val(), function(msg) {
                msgShow('系统提示', '恭喜,密码修改成功！<br>您的新密码为：' + msg, 'info');
                $newpass.val('');
                $rePass.val('');
                close();
            })
            
        }

        $(function() {

            openPwd();

            $('#editpass').click(function() {
                $('#w').window('open');
            });

            $('#btnEp').click(function() {
                serverLogin();
            })

			$('#btnCancel').click(function(){closePwd();})

            $('#loginOut').click(function() {
                $.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {

                    if (r) {
                        location.href = '/ajax/loginout.ashx';
                    }
                });
            })
        });
		
		
</script>

</head>
<body class="easyui-layout" style="overflow-y: hidden"  fit="true"   scroll="no">
<noscript>
<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
    <img src="<%=basePath%>/images/noscript.gif" alt='抱歉,请开启脚本支持！' />
</div>
</noscript>

    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background: url(<%=basePath%>/images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head">欢迎   <a href="#" id="editpass">修改密码</a> <a href="#" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 20px; "><img src="<%=basePath%>/images/blocks.gif" width="20" height="20" align="absmiddle" /> 湖北省国防科学技术工业办公室软件平台</span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer">By 湖北省国防科学技术工业办公室      jQuery.Easy-UI </div>
    </div>
    <div region="west" split="true"  title="导航菜单" style="width:180px;" id="west">
			<div id="nav">
		<!--  导航内容 -->
				
			</div>

    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden; color:red; " >
				<h1 style="font-size:24px;">欢迎使用湖北省国防科学技术工业办公室软件平台</h1>
				<h1 style="font-size:24px;">系统须知</h1>
			</div>
		</div>
    </div>
    
    
    <!--修改密码窗口-->
    <div id="w" class="easyui-window" title="修改密码" collapsible="false" minimizable="false"
        maximizable="false" icon="icon-save"  style="width: 300px; height: 150px; padding: 5px;
        background: #fafafa;">
        <div class="easyui-layout" fit="true">
            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;">
                <table cellpadding=3>
                    <tr>
                        <td>新密码：</td>
                        <td><input id="txtNewPass" type="Password" class="txt01" /></td>
                    </tr>
                    <tr>
                        <td>确认密码：</td>
                        <td><input id="txtRePass" type="Password" class="txt01" /></td>
                    </tr>
                </table>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a id="btnEp" class="easyui-linkbutton" icon="icon-ok" href="javascript:void(0)" >
                    确定</a> <a id="btnCancel" class="easyui-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
            </div>
        </div>
    </div>

	<div id="mm" class="easyui-menu" style="width:150px;">
		<div id="tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="close">关闭</div>
		<div id="closeall">全部关闭</div>
		<div id="closeother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="closeright">当前页右侧全部关闭</div>
		<div id="closeleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="exit">退出</div>
	</div>


</body>
</html>