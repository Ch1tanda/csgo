<%--
  Created by IntelliJ IDEA.
  User: Ch1tanda
  Date: 2020/10/22
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!-- The mobile navbar-toggle button can be safely removed since you do not need it in a non-responsive implementation -->
            <label class="navbar-brand">XDCSGO</label>
        </div>
        <!-- Note that the .navbar-collapse and .collapse classes have been removed from the #navbar -->
        <div id="navbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="main">主页</a></li>
                <li><a href="profile">个人信息</a></li>
                <li><a href="signup">赛事报名</a></li>
                <li><a href="group">分组查询</a></li>
                <li><a href="result">比赛信息</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="managerlogin">管理员登录</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <br><br>
    <div class="page-header">
        <h1>2020年秋季第三届萌新赛开始筹备啦！</h1>
    </div>
    <h4>欢迎你,${user.username}</h5>
        <h3>本次比赛的报名条件如下：</h3>
        <h4>&emsp;&emsp;由于涉及到奖品以及本着<span style="color: red;">培养年轻人(×)</span><del>老人快乐时刻(√)</del>的目的，暂定参赛人员需满足以下条件：</h4>
        <h4>&emsp;&emsp;&emsp;1）2020级、2019级全体群员</h4>
        <h4>&emsp;&emsp;&emsp;2）2018级及以上 在往届萌新赛/比赛中未进入决赛轮次的群员</h4>
        <h4>&emsp;&emsp;请满足上述条件且有兴趣的同学加入赛事官方群：748726353，并将群名片改为：<span style="color: red;">年级—段位/分数—ID </span>以便于统一管理。如有虚假，赛事组有权在进行取证后取消选手的参赛资格。</h4>
        <h3>奖品制度</h3>
        <h4>&emsp;&emsp;由于社团经费有限且只能提供实物报销，本次比赛的奖品依然采用往年的奖金池<del>薅羊毛</del>规则，欢迎有能力且有兴趣的同学提供赞助，赞助形式以csgo饰品为主。所有赞助将会在群相册进行公示。赞助奖品请联系怒火中烧（QQ：944284519）。</h4>
        <h3>比赛制度</h3>
        <h4>&emsp;&emsp;赛制待百团大战（23,24号）后制定，我们会以分组赛的形式尽量公平的进行选手分配，所以不必担心队伍问题。
            预定分组赛及淘汰赛采取线上模式，决赛是否采用线下模式待定。</h4>
        <h3>报名方式</h3>
        <h4>&emsp;&emsp;既然可以到这个页面说明已经注册完成，现在只需点击上方的赛事报名，（可选）备注相关内容，点击报名即可。</h4>
        <h4>&emsp;&emsp;需要注意的是，<span style="color: red;">一旦报名无法退赛</span>，如有特殊情况请联系管理员</h4>
        <h3>注意事项</h3>
        <h4>&emsp;&emsp;1）为了最大程度保证比赛的公平公正公开，赛事组将<span style="color: red;">根据选手提交的分数</span>进行分组，若有特殊需求（如舍友、朋友等）需进行<span style="color: red;">组队</span>，请提前告知裁判组。若理由合理且情况属实，我们将酌情进行分组调整。原则上<span style="color: red;">仅允许双排</span>。</h4>
        <h4>&emsp;&emsp;2）请各位选手填写分数时如实填写，一但发现虚假填写分数、恶意压低分数的行为，在经举报并取证后，赛事组<span style="color: red;">有权取消选手的成绩和参赛资格</span>。</h4>
        <h4>&emsp;&emsp;3）<span style="color: red;">比赛全程录音录像</span>。赛程全程严禁出现<span style="color: red;">任何代打、窥屏、作弊、过激嘲讽</span>以及其他影响比赛公平性、干扰选手正常发挥的行为，一旦出现，裁判及赛事组<span style="color: red;">有权对选手进行警告或进行禁赛处理</span>。</h4>
        <h4>&emsp;&emsp;4）比赛将使用<span style="color: red;">完美对战平台</span>，请选手提前下载并注册，进行启动测试。原则上由于游戏环境引起的状况由<span style="color: red;">选手个人自行承担</span>。</h4>
        <h4>&emsp;&emsp;5）比赛时间一般由双方选手<span style="color: red;">自行安排</span>，请双方选手在协商出比赛时间后及时<span style="color: red;">告知赛事组</span>，以便于赛事组安排解说与直播。原则上比赛房间会在比赛开始<span style="color: red;">前30分钟开启</span>，请选手按时入场。超过比赛原定时间<span style="color: red;">30分钟未能入场的队伍将被直接判负</span>。</h4>
        <h4>&emsp;&emsp;6）如果选手因突发情况不能按时参加比赛的，需提前告知赛事组，赛事组将在对方队伍同意的情况下，从与该选手实力相近其他选手中选取替补队员。</h4>
        <h4>&emsp;&emsp;7）如出现选手弃赛情况，赛事组将从<span style="color: red;">已淘汰队伍中选取实力相近的选手</span>进行替补，该替补选手视为<span style="color: red;">复活并享有获奖权利</span>。</h4>
        <h2>本次比赛最终决定权归赛事委员会所有</h2>
</div> <!-- /container -->

</body>
</html>
