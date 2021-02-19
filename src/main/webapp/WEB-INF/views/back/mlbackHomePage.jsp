<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath()); %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Lottery</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
	<link rel="stylesheet" href="${APP_PATH}/static/back/css/style.css" />
	<link rel="stylesheet" href="${APP_PATH}/static/back/css/animate.min.css" />
	<link rel="stylesheet" href="${APP_PATH}/static/common/toastr/toastr.min.css">
	<link rel="stylesheet" href="${APP_PATH}/static/back/css/lottery.css" />
</head>
<body class="luck-bg">
	<div class="lottery-panel">
        <div class="lottery-left">
            <div class="lottery-control" title="按左右键切换奖品">
                <span class="iconfont btn-left"></span>
                <span class="lottery-prize-name" data-num="0">暂无奖品</span>
                <span class="iconfont btn-right"></span>
            </div>

            <div class="lottery-img"></div>

            <div class="lottery-product-name">暂无奖品</div>

            <div class="lottery-btn lottery-start" title="开始抽奖"></div>					
        </div>
        <div class="lottery-middle">
            <div class="lottery-middle-control">
                <div class="lottery-btn lottery-stop" title="停止抽奖"></div>
                <div class="lottery-close close" title="关闭"></div>
            </div>
        </div>
        <div class="lottery-right">
        	<div class="lottery-reset-btn">重置</div>
            <div class="lottery-win-title">中奖名单(<span class="lottery-win-num">0</span>人)</div>
            <div class="lottery-winner">
                <div class="lottery-win-list lottery-win-scroll"></div>
            </div>
        </div>
        <div class="lottery-part">
        	<div class="lottery-part-title" title="参与抽奖人员名单">参与抽奖人员名单</div>
        	<div class="lottery-part-people"></div>
        </div>
    </div>
    
    <!-- 页面加载动画 -->    
    <div class="loader-container">
	    <div class="loading">
	        <div class="loading-inner"></div>
	    </div>
	</div>

    <!-- 音乐 -->
    <div style="display: none;">
        <audio controls="controls" id="bgmusic" loop="true">
            <source src="${APP_PATH}/static/back/mp3.mp3" type="audio/mpeg"> 您的浏览器不支持音乐播放 </source>
        </audio>
    </div>
    
    <!-- lottery fireworks -->
    <div class="lottery-fireworks"></div>

    <!-- 视频 -->
    <%-- <div class="bg-video">        
        <video preload autoplay loop width="100%" height="100%">
            <source src="${APP_PATH}/static/back/video.mp4" type="video/mp4">
        </video>
    </div> --%>

    <div class="lottery-show-info animated" style="display: none">
        <div class="nickname">smile的微笑</div>
    </div>
    
    <!-- reset win list modal -->
    <div class="modal fade" id="resetModal" tabindex="-1" role="dialog" aria-labelledby="resetModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">提示</h4>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>你确定要重置中奖名单吗?</p>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary btn-cancel" type="button" data-dismiss="modal">否</button>
					<button class="btn btn-danger btn-ok" type="button">是</button>
				</div>
			</div>
		</div>
	</div>
    
    <script src="${APP_PATH}/static/common/jquery.min.js"></script>
    <script src="${APP_PATH}/static/back/lib/bootstrap/bootstrap.min.js"></script>
    <script src="${APP_PATH}/static/back/lib/toastr/toastr.min.js"></script>
    <script src="${APP_PATH}/static/back/js/three.min.js"></script>
    <script src="${APP_PATH}/static/back/js/tween.min.js"></script>
    <script src="${APP_PATH}/static/back/js/CSS3DRenderer.js"></script>

    <script>
        // 展示结果
        function showResult() {
            var rand_in = parseInt(Math.random() * _in.length, 10);
            $(".lottery-show-info").show();
            $(".lottery-show-info").addClass(_in[rand_in]);
        }

        // 生成用户数据
        function generateMockData() {
        	var peopleList = getAllPersonInfo();
        	var len = peopleList.length || 256;
            for (var i = 0; i < len; i++) {
                personArray[i] = {
                    name: (len ? peopleList[i].luckdrawName : ''),
                };

                personArray[i].p_x = (i % 20) + 1;
                personArray[i].p_y = Math.floor(i / 20) + 1;
                
                !peopleList[i].luckdrawStatus && $('.lottery-part-people').append($('<div class="lottery-part-item">'+ peopleList[i].luckdrawName +'</div>'));
            }
        }

        // 初始化奖品数据
        function initProductData() {
            function resetLotteryControlData() {
                currentPrizeData = lotteryPrizeData[curNum - 1];
                $lotteryPrizeName.text(currentPrizeData.key).data('num', curNum);
                $lotteryProductName.text(currentPrizeData.value);
            }
            var $lotteryPrizeName = $('.lottery-prize-name');
            var $lotteryProductName = $('.lottery-product-name');
            var len = lotteryPrizeData.length;
            var curNum = $lotteryPrizeName.data('num') || 1;
            var currentPrizeData;
            resetLotteryControlData();

            $('.lottery-control .btn-right').on('click', function() {
                curNum = $lotteryPrizeName.data('num');
                if (curNum >= 3) {
                    curNum = 1;
                } else {
                    curNum += 1;
                }
                resetLotteryControlData();
            });

            $('.lottery-control .btn-left').on('click', function() {
                curNum = $lotteryPrizeName.data('num');
                if (curNum <= 1) {
                    curNum = 3;
                } else {
                    curNum -= 1;
                }
                resetLotteryControlData();
            });
        }

        function initLotteryResult() {
            var lotteryWinNum = lotteryResultData.length;
            $('.lottery-win-num').text(lotteryWinNum || '0')
            lotteryWinNum && lotteryResultData.forEach(function(item) {
            	var prizeData = lotteryPrizeData[item.drawresultGrade - 1];
                addLotteryResultItem({
                	user: item.drawresultName,
                	rank: prizeData.key,
                	name: prizeData.value
                });
            });
        }

        function addLotteryResultItem(data) {
            var resultItemHtml = '<div class="lottery-win-item">' +
                    '<div class="lottery-win-item-prize lottery-win-item-user">'+ data.user +'</div>' +
                    '<div class="lottery-win-item-prize lottery-win-item-rank">'+ data.rank +'</div>' +
                    '<div class="lottery-win-item-prize lottery-win-item-name">'+ data.name +'</div>' +
                '</div>';
            $('.lottery-win-list').append($(resultItemHtml))
        }

        function init() {
            var cameraSize = getCameraSize();
            var vector = new THREE.Vector3();
            var spherical = new THREE.Spherical();

            initProductData();
            generateMockData();
            getAllLuckPerson(initLotteryResult);

            // init  THREE
            camera = new THREE.PerspectiveCamera(40, cameraSize.width / cameraSize.height, 100, 10000);
            camera.position.z = 3000;

            scene = new THREE.Scene();

            // 渲染            
            renderer = new THREE.CSS3DRenderer();
            renderer.setSize(cameraSize.width, cameraSize.height);
            renderer.domElement.style = "position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%)";
            document.querySelector('.lottery-middle').appendChild(renderer.domElement);

            // sphere
            for (var i = 0,len = personArray.length; i < len; i++) {
                var object, element = document.createElement("div");
                element.className = "lottery-sphere-item";
                element.innerText = personArray[i].name;
                object = new THREE.CSS3DObject(element);
                object.position.x = Math.random() * 4000 - 2000;
                object.position.y = Math.random() * 4000 - 2000;
                object.position.z = Math.random() * 4000 - 2000;
                scene.add(object);

                objects.push(object)
            }

             // sphere
            for (var i = 0, len = objects.length; i < len; i++) {
                var phi = Math.acos(-1 + (2 * i) / len);
                var theta = Math.sqrt(len * Math.PI) * phi;
                var object = new THREE.Object3D();

                spherical.set(800, phi, theta);

                object.position.setFromSpherical(spherical);
                vector.copy(object.position).multiplyScalar(2);
                object.lookAt(vector);

                sphere.push(object);
            }

            // 自动执行动画
            transform(sphere, 2000);
            window.addEventListener("resize", onWindowResize, false);
        }

        function getCameraSize() {
            return {
                width: window.innerWidth * .95,
                height: window.innerHeight * .95
            }
        }

        function transform(targets, duration) {
            TWEEN.removeAll();

            for (var i = 0; i < objects.length; i++) {
                var object = objects[i];
                var target = targets[i];

                new TWEEN.Tween(object.position)
                    .to(
                        {
                            x: target.position.x,
                            y: target.position.y,
                            z: target.position.z,
                        },
                        Math.random() * duration + duration
                    )
                    .easing(TWEEN.Easing.Exponential.InOut)
                    .start();

                new TWEEN.Tween(object.rotation)
                    .to(
                        {
                            x: target.rotation.x,
                            y: target.rotation.y,
                            z: target.rotation.z,
                        },
                        Math.random() * duration + duration
                    )
                    .easing(TWEEN.Easing.Exponential.InOut)
                    .start();
            }

            new TWEEN.Tween(this)
                .to({}, duration * 2)
                .onUpdate(render)
                .start();
        }

        function onWindowResize() {
            var cameraSize = getCameraSize();
            camera.aspect = cameraSize.width / cameraSize.height;
            camera.updateProjectionMatrix();

            renderer.setSize(cameraSize.width, cameraSize.height);

            render();
        }

        function startAnimate() {
            scene.rotation.x += 0.1;
            scene.rotation.y += 0.05;
            scene.rotation.z += 0.05;

            startAnimateId = requestAnimationFrame(startAnimate);

            TWEEN.update();

            // 渲染循环
            render();
        }

        function stopAnimate() {
            scene.rotation.x = 0;
            scene.rotation.y += 0.005;
            scene.rotation.z = 0;

            stopAnimateId = requestAnimationFrame(stopAnimate);

            TWEEN.update();

            // 渲染循环
            render();
        }

        function render() {
            renderer.render(scene, camera);
        }
        
        // 获取获奖人信息
        function getLotteryPerson(rank) {
        	var userName;
			$.ajax({
				url: "${APP_PATH }/TbOwnerLuckDraw/getOneLuckPeopleDetails",
				type: "post",
				data: JSON.stringify({ 'luckdrawGrade': rank }),
				dataType: "json",
				contentType: 'application/json',
				async: false,
				success: function (data) {
					if (data.code == 100) {
						userName = data.extend.winPropleName;
					}
				}
			});
			return userName;
        }
        
        // 获取所有参与人员信息
        function getAllPersonInfo() {
        	var allPeople = [];
			$.ajax({
				url: "${APP_PATH}/TbOwnerLuckDraw/getAllPeopleName",
				type: "post",
				dataType: "json",
				contentType: 'application/json',
				async: false,
				success: function (data) {
					if (data.code == 100) {
						allPeople = data.extend.allPeopleList && data.extend.allPeopleList;
					}
				}
			});
			return allPeople;
        }

        // 获取所有参与人员名单
        function getAllPartPeople(callback) {
			$.ajax({
				url: "${APP_PATH}/TbOwnerLuckDraw/getAllPeopleName",
				type: "get",
				dataType: "json",
				contentType: 'application/json',
				async: false,
				success: function (data) {
					console.log(data)
					if (data.code == 100) {
						callback && callback(data.extend.allPeopleList);
					} else {
						$('.lottery-part-people').html('<p>网络异常，请稍后重新刷新页面...</p>');
					}
				},
				error: function() {
					$('.lottery-part-people').html('<p>网络异常，请稍后重新刷新页面...</p>');
				}
			});
        }

        // 获取所有中奖人员
        function getAllLuckPerson(callback) {
			$.ajax({
				url: "${APP_PATH}/TbOwnerDrawResult/getAllresult",
				type: "post",
				dataType: "json",
				contentType: 'application/json',
				success: function (data) {
					if (data.code == 100) {
						lotteryResultData = data.extend.allWinPeopleList && data.extend.allWinPeopleList;
						callback && callback();
					}
				}
			});
        }

        // 重置获奖名单
        function resetLotteryWinList(callback) {
        	$('.loader-container').show();
        	$.ajax({
				url: "${APP_PATH}/TbOwnerLuckDraw/getAllZero",
				type: "post",
				dataType: "json",
				contentType: 'application/json',
				success: function (data) {
					if (data.code == 100) {
						toastr.success('中奖名单已被清空');
						
						callback && callback();
					} else {
						toastr.error('网络异常，请重试...');
					}
				},
				error: function() {
					toastr.error('网络异常，请重试...');
				},
				complete: function() {
		        	$('.loader-container').hide();
				}
			});
        }

        // 移除已获奖人信息
       	function removeOnePartPeople(data) {
        	$('.lottery-part-item').each(function(idx, item) {
        		var $item = $(item);
        		if ($item.text() == data) $item.remove();
        	});
        }

        var camera, scene, renderer;
        var personArray = [], objects = [], sphere = [];
        var startAnimateId, stopAnimateId;
        
        var lotteryPrizeData = [
            { key: "一等奖", value: "小米电视"},
            { key: "二等奖", value: "手机"},
            { key: "三等奖", value: "充电宝"},
        ];
        var lotteryResultData = [];
        // animate
        var _in = [
            "bounceIn",
            "bounceInDown",
            "bounceInLeft",
            "bounceInRight",
            "bounceInUp",
            "fadeIn",
            "fadeInDown",
            "fadeInDownBig",
            "fadeInLeft",
            "fadeInLeftBig",
            "fadeInRight",
            "fadeInRightBig",
            "fadeInUp",
            "fadeInUpBig",
            "rotateIn",
            "rotateInDownLeft",
            "rotateInDownRight",
            "rotateInUpLeft",
            "rotateInUpRight",
            "slideInDown",
            "slideInLeft",
            "slideInRight",
        ];
        var luckName;

        init();
        $(window).on('load', function() {
        	$('.loader-container').hide();
        });

        $('.lottery-start').on('click', function() {
        	var prizeRank = $('.lottery-prize-name').data('num');
        	if (prizeRank) {
	        	luckName = getLotteryPerson(prizeRank);
	        	luckName && $('.lottery-show-info .nickname').text(luckName);
	            $('.lottery-middle').show();
	            $('.lottery-left, .lottery-right, .lottery-part').hide();
	            cancelAnimationFrame(stopAnimateId);
	            startAnimate();        		
        	}
        });

        $('.lottery-stop').on('click', function() {
        	var lotteryData = lotteryPrizeData[$('.lottery-prize-name').data('num') - 1];
        	var lotteryWinPersonInfo = {
           		user: luckName,
           		rank: lotteryData.key,
           		name: lotteryData.value,
           	};
        	addLotteryResultItem(lotteryWinPersonInfo);
        	lotteryResultData.push(lotteryWinPersonInfo)
        	$('.lottery-win-num').text(lotteryResultData.length);

            $(this).addClass('close');
            $('.lottery-close').removeClass('close');
            cancelAnimationFrame(startAnimateId);
            stopAnimate();
            showResult();
        });

        $('.lottery-close').on('click', function() {
            $(this).addClass('close');
            $('.lottery-stop').removeClass('close');
            $('.lottery-left, .lottery-right, .lottery-part').show();
            $('.lottery-middle, .lottery-show-info').hide();
        	
            removeOnePartPeople(luckName);
        });
        
        $('.lottery-reset-btn').on('click', function() {
        	if ($('.lottery-win-item').length) {
        		$('#resetModal').modal('show');        		
        	} else {
        		toastr.warning('没有中奖数据，可以重置...');
        	}
        });
        
        $('#resetModal .btn-ok').on('click', function() {
        	resetLotteryWinList(function() {
        		$('#resetModal').modal('hide');
        		lotteryResultData.forEach(function(item) {
        			$('.lottery-part-people').append($('<div class="lottery-part-item">'+ (item.drawresultName || item.user) +'</div>'));
        		});
        		lotteryResultData = [];
        		$('.lottery-win-list').html('');
        		$('.lottery-win-num').text('0');
        	});
        });
    </script>
</body>
</html>