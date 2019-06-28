/**
 * Resize function without multiple trigger
 *
 * Usage:
 * $(window).smartresize(function(){
 *     // code here
 * });
 */
(function($, sr) {
        // debouncing function from John Hann
        // http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
        var debounce = function(func, threshold, execAsap) {
                var timeout;

                return function debounced() {
                        var obj = this,
                        args = arguments;
                        function delayed() {
                                if (!execAsap) func.apply(obj, args);
                                timeout = null;
                        }

                        if (timeout) clearTimeout(timeout);
                        else if (execAsap) func.apply(obj, args);

                        timeout = setTimeout(delayed, threshold || 100);
                };
        };

        // smartresize
        jQuery.fn[sr] = function(fn) {
                return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr);
        };

})(jQuery, 'smartresize');

var CURRENT_URL = window.location.href.split('#')[0].split('?')[0],
$BODY = $('body'),
$MENU_TOGGLE = $('#menu_toggle'),
$SIDEBAR_MENU = $('#sidebar-menu'),
$SIDEBAR_FOOTER = $('.sidebar-footer'),
$LEFT_COL = $('.left_col'),
$RIGHT_COL = $('.right_col'),
$NAV_MENU = $('.nav_menu'),
$FOOTER = $('footer');

var data = [{
        name: '海门',
        value: 9
},
{
        name: '鄂尔多斯',
        value: 12
},
{
        name: '招远',
        value: 12
},
{
        name: '舟山',
        value: 12
},
{
        name: '齐齐哈尔',
        value: 14
},
{
        name: '盐城',
        value: 15
},
{
        name: '赤峰',
        value: 16
},
{
        name: '青岛',
        value: 18
},
{
        name: '乳山',
        value: 18
},
{
        name: '金昌',
        value: 19
},
{
        name: '泉州',
        value: 21
},
{
        name: '莱西',
        value: 21
},
{
        name: '日照',
        value: 21
},
{
        name: '胶南',
        value: 22
},
{
        name: '南通',
        value: 23
},
{
        name: '拉萨',
        value: 24
},
{
        name: '云浮',
        value: 24
},
{
        name: '梅州',
        value: 25
},
{
        name: '文登',
        value: 25
},
{
        name: '上海',
        value: 25
},
{
        name: '攀枝花',
        value: 25
},
{
        name: '威海',
        value: 25
},
{
        name: '承德',
        value: 25
},
{
        name: '厦门',
        value: 26
},
{
        name: '汕尾',
        value: 26
},
{
        name: '潮州',
        value: 26
},
{
        name: '丹东',
        value: 27
},
{
        name: '太仓',
        value: 27
},
{
        name: '曲靖',
        value: 27
},
{
        name: '烟台',
        value: 28
},
{
        name: '福州',
        value: 29
},
{
        name: '瓦房店',
        value: 30
},
{
        name: '即墨',
        value: 30
},
{
        name: '抚顺',
        value: 31
},
{
        name: '玉溪',
        value: 31
},
{
        name: '张家口',
        value: 31
},
{
        name: '阳泉',
        value: 31
},
{
        name: '莱州',
        value: 32
},
{
        name: '湖州',
        value: 32
},
{
        name: '汕头',
        value: 32
},
{
        name: '昆山',
        value: 33
},
{
        name: '宁波',
        value: 33
},
{
        name: '湛江',
        value: 33
},
{
        name: '揭阳',
        value: 34
},
{
        name: '荣成',
        value: 34
},
{
        name: '连云港',
        value: 35
},
{
        name: '葫芦岛',
        value: 35
},
{
        name: '常熟',
        value: 36
},
{
        name: '东莞',
        value: 36
},
{
        name: '河源',
        value: 36
},
{
        name: '淮安',
        value: 36
},
{
        name: '泰州',
        value: 36
},
{
        name: '南宁',
        value: 37
},
{
        name: '营口',
        value: 37
},
{
        name: '惠州',
        value: 37
},
{
        name: '江阴',
        value: 37
},
{
        name: '蓬莱',
        value: 37
},
{
        name: '韶关',
        value: 38
},
{
        name: '嘉峪关',
        value: 38
},
{
        name: '广州',
        value: 38
},
{
        name: '延安',
        value: 38
},
{
        name: '太原',
        value: 39
},
{
        name: '清远',
        value: 39
},
{
        name: '中山',
        value: 39
},
{
        name: '昆明',
        value: 39
},
{
        name: '寿光',
        value: 40
},
{
        name: '盘锦',
        value: 40
},
{
        name: '长治',
        value: 41
},
{
        name: '深圳',
        value: 41
},
{
        name: '珠海',
        value: 42
},
{
        name: '宿迁',
        value: 43
},
{
        name: '咸阳',
        value: 43
},
{
        name: '铜川',
        value: 44
},
{
        name: '平度',
        value: 44
},
{
        name: '佛山',
        value: 44
},
{
        name: '海口',
        value: 44
},
{
        name: '江门',
        value: 45
},
{
        name: '章丘',
        value: 45
},
{
        name: '肇庆',
        value: 46
},
{
        name: '大连',
        value: 47
},
{
        name: '临汾',
        value: 47
},
{
        name: '吴江',
        value: 47
},
{
        name: '石嘴山',
        value: 49
},
{
        name: '沈阳',
        value: 50
},
{
        name: '苏州',
        value: 50
},
{
        name: '茂名',
        value: 50
},
{
        name: '嘉兴',
        value: 51
},
{
        name: '长春',
        value: 51
},
{
        name: '胶州',
        value: 52
},
{
        name: '银川',
        value: 52
},
{
        name: '张家港',
        value: 52
},
{
        name: '三门峡',
        value: 53
},
{
        name: '锦州',
        value: 54
},
{
        name: '南昌',
        value: 54
},
{
        name: '柳州',
        value: 54
},
{
        name: '三亚',
        value: 54
},
{
        name: '自贡',
        value: 56
},
{
        name: '吉林',
        value: 56
},
{
        name: '阳江',
        value: 57
},
{
        name: '泸州',
        value: 57
},
{
        name: '西宁',
        value: 57
},
{
        name: '宜宾',
        value: 58
},
{
        name: '呼和浩特',
        value: 58
},
{
        name: '成都',
        value: 58
},
{
        name: '大同',
        value: 58
},
{
        name: '镇江',
        value: 59
},
{
        name: '桂林',
        value: 59
},
{
        name: '张家界',
        value: 59
},
{
        name: '宜兴',
        value: 59
},
{
        name: '北海',
        value: 60
},
{
        name: '西安',
        value: 61
},
{
        name: '金坛',
        value: 62
},
{
        name: '东营',
        value: 62
},
{
        name: '牡丹江',
        value: 63
},
{
        name: '遵义',
        value: 63
},
{
        name: '绍兴',
        value: 63
},
{
        name: '扬州',
        value: 64
},
{
        name: '常州',
        value: 64
},
{
        name: '潍坊',
        value: 65
},
{
        name: '重庆',
        value: 66
},
{
        name: '台州',
        value: 67
},
{
        name: '南京',
        value: 67
},
{
        name: '滨州',
        value: 70
},
{
        name: '贵阳',
        value: 71
},
{
        name: '无锡',
        value: 71
},
{
        name: '本溪',
        value: 71
},
{
        name: '克拉玛依',
        value: 72
},
{
        name: '渭南',
        value: 72
},
{
        name: '马鞍山',
        value: 72
},
{
        name: '宝鸡',
        value: 72
},
{
        name: '焦作',
        value: 75
},
{
        name: '句容',
        value: 75
},
{
        name: '北京',
        value: 79
},
{
        name: '徐州',
        value: 79
},
{
        name: '衡水',
        value: 80
},
{
        name: '包头',
        value: 80
},
{
        name: '绵阳',
        value: 80
},
{
        name: '乌鲁木齐',
        value: 84
},
{
        name: '枣庄',
        value: 84
},
{
        name: '杭州',
        value: 84
},
{
        name: '淄博',
        value: 85
},
{
        name: '鞍山',
        value: 86
},
{
        name: '溧阳',
        value: 86
},
{
        name: '库尔勒',
        value: 86
},
{
        name: '安阳',
        value: 90
},
{
        name: '开封',
        value: 90
},
{
        name: '济南',
        value: 92
},
{
        name: '德阳',
        value: 93
},
{
        name: '温州',
        value: 95
},
{
        name: '九江',
        value: 96
},
{
        name: '邯郸',
        value: 98
},
{
        name: '临安',
        value: 99
},
{
        name: '兰州',
        value: 99
},
{
        name: '沧州',
        value: 100
},
{
        name: '临沂',
        value: 103
},
{
        name: '南充',
        value: 104
},
{
        name: '天津',
        value: 105
},
{
        name: '富阳',
        value: 106
},
{
        name: '泰安',
        value: 112
},
{
        name: '诸暨',
        value: 112
},
{
        name: '郑州',
        value: 113
},
{
        name: '哈尔滨',
        value: 114
},
{
        name: '聊城',
        value: 116
},
{
        name: '芜湖',
        value: 117
},
{
        name: '唐山',
        value: 119
},
{
        name: '平顶山',
        value: 119
},
{
        name: '邢台',
        value: 119
},
{
        name: '德州',
        value: 120
},
{
        name: '济宁',
        value: 120
},
{
        name: '荆州',
        value: 127
},
{
        name: '宜昌',
        value: 130
},
{
        name: '义乌',
        value: 132
},
{
        name: '丽水',
        value: 133
},
{
        name: '洛阳',
        value: 134
},
{
        name: '秦皇岛',
        value: 136
},
{
        name: '株洲',
        value: 143
},
{
        name: '石家庄',
        value: 147
},
{
        name: '莱芜',
        value: 148
},
{
        name: '常德',
        value: 152
},
{
        name: '保定',
        value: 153
},
{
        name: '湘潭',
        value: 154
},
{
        name: '金华',
        value: 157
},
{
        name: '岳阳',
        value: 169
},
{
        name: '长沙',
        value: 175
},
{
        name: '衢州',
        value: 177
},
{
        name: '廊坊',
        value: 193
},
{
        name: '菏泽',
        value: 194
},
{
        name: '合肥',
        value: 229
},
{
        name: '武汉',
        value: 273
},
{
        name: '大庆',
        value: 279
}];
var geoCoordMap = {
        '海门': [121.15, 31.89],
        '鄂尔多斯': [109.781327, 39.608266],
        '招远': [120.38, 37.35],
        '舟山': [122.207216, 29.985295],
        '齐齐哈尔': [123.97, 47.33],
        '盐城': [120.13, 33.38],
        '赤峰': [118.87, 42.28],
        '青岛': [120.33, 36.07],
        '乳山': [121.52, 36.89],
        '金昌': [102.188043, 38.520089],
        '泉州': [118.58, 24.93],
        '莱西': [120.53, 36.86],
        '日照': [119.46, 35.42],
        '胶南': [119.97, 35.88],
        '南通': [121.05, 32.08],
        '拉萨': [91.11, 29.97],
        '云浮': [112.02, 22.93],
        '梅州': [116.1, 24.55],
        '文登': [122.05, 37.2],
        '上海': [121.48, 31.22],
        '攀枝花': [101.718637, 26.582347],
        '威海': [122.1, 37.5],
        '承德': [117.93, 40.97],
        '厦门': [118.1, 24.46],
        '汕尾': [115.375279, 22.786211],
        '潮州': [116.63, 23.68],
        '丹东': [124.37, 40.13],
        '太仓': [121.1, 31.45],
        '曲靖': [103.79, 25.51],
        '烟台': [121.39, 37.52],
        '福州': [119.3, 26.08],
        '瓦房店': [121.979603, 39.627114],
        '即墨': [120.45, 36.38],
        '抚顺': [123.97, 41.97],
        '玉溪': [102.52, 24.35],
        '张家口': [114.87, 40.82],
        '阳泉': [113.57, 37.85],
        '莱州': [119.942327, 37.177017],
        '湖州': [120.1, 30.86],
        '汕头': [116.69, 23.39],
        '昆山': [120.95, 31.39],
        '宁波': [121.56, 29.86],
        '湛江': [110.359377, 21.270708],
        '揭阳': [116.35, 23.55],
        '荣成': [122.41, 37.16],
        '连云港': [119.16, 34.59],
        '葫芦岛': [120.836932, 40.711052],
        '常熟': [120.74, 31.64],
        '东莞': [113.75, 23.04],
        '河源': [114.68, 23.73],
        '淮安': [119.15, 33.5],
        '泰州': [119.9, 32.49],
        '南宁': [108.33, 22.84],
        '营口': [122.18, 40.65],
        '惠州': [114.4, 23.09],
        '江阴': [120.26, 31.91],
        '蓬莱': [120.75, 37.8],
        '韶关': [113.62, 24.84],
        '嘉峪关': [98.289152, 39.77313],
        '广州': [113.23, 23.16],
        '延安': [109.47, 36.6],
        '太原': [112.53, 37.87],
        '清远': [113.01, 23.7],
        '中山': [113.38, 22.52],
        '昆明': [102.73, 25.04],
        '寿光': [118.73, 36.86],
        '盘锦': [122.070714, 41.119997],
        '长治': [113.08, 36.18],
        '深圳': [114.07, 22.62],
        '珠海': [113.52, 22.3],
        '宿迁': [118.3, 33.96],
        '咸阳': [108.72, 34.36],
        '铜川': [109.11, 35.09],
        '平度': [119.97, 36.77],
        '佛山': [113.11, 23.05],
        '海口': [110.35, 20.02],
        '江门': [113.06, 22.61],
        '章丘': [117.53, 36.72],
        '肇庆': [112.44, 23.05],
        '大连': [121.62, 38.92],
        '临汾': [111.5, 36.08],
        '吴江': [120.63, 31.16],
        '石嘴山': [106.39, 39.04],
        '沈阳': [123.38, 41.8],
        '苏州': [120.62, 31.32],
        '茂名': [110.88, 21.68],
        '嘉兴': [120.76, 30.77],
        '长春': [125.35, 43.88],
        '胶州': [120.03336, 36.264622],
        '银川': [106.27, 38.47],
        '张家港': [120.555821, 31.875428],
        '三门峡': [111.19, 34.76],
        '锦州': [121.15, 41.13],
        '南昌': [115.89, 28.68],
        '柳州': [109.4, 24.33],
        '三亚': [109.511909, 18.252847],
        '自贡': [104.778442, 29.33903],
        '吉林': [126.57, 43.87],
        '阳江': [111.95, 21.85],
        '泸州': [105.39, 28.91],
        '西宁': [101.74, 36.56],
        '宜宾': [104.56, 29.77],
        '呼和浩特': [111.65, 40.82],
        '成都': [104.06, 30.67],
        '大同': [113.3, 40.12],
        '镇江': [119.44, 32.2],
        '桂林': [110.28, 25.29],
        '张家界': [110.479191, 29.117096],
        '宜兴': [119.82, 31.36],
        '北海': [109.12, 21.49],
        '西安': [108.95, 34.27],
        '金坛': [119.56, 31.74],
        '东营': [118.49, 37.46],
        '牡丹江': [129.58, 44.6],
        '遵义': [106.9, 27.7],
        '绍兴': [120.58, 30.01],
        '扬州': [119.42, 32.39],
        '常州': [119.95, 31.79],
        '潍坊': [119.1, 36.62],
        '重庆': [106.54, 29.59],
        '台州': [121.420757, 28.656386],
        '南京': [118.78, 32.04],
        '滨州': [118.03, 37.36],
        '贵阳': [106.71, 26.57],
        '无锡': [120.29, 31.59],
        '本溪': [123.73, 41.3],
        '克拉玛依': [84.77, 45.59],
        '渭南': [109.5, 34.52],
        '马鞍山': [118.48, 31.56],
        '宝鸡': [107.15, 34.38],
        '焦作': [113.21, 35.24],
        '句容': [119.16, 31.95],
        '北京': [116.46, 39.92],
        '徐州': [117.2, 34.26],
        '衡水': [115.72, 37.72],
        '包头': [110, 40.58],
        '绵阳': [104.73, 31.48],
        '乌鲁木齐': [87.68, 43.77],
        '枣庄': [117.57, 34.86],
        '杭州': [120.19, 30.26],
        '淄博': [118.05, 36.78],
        '鞍山': [122.85, 41.12],
        '溧阳': [119.48, 31.43],
        '库尔勒': [86.06, 41.68],
        '安阳': [114.35, 36.1],
        '开封': [114.35, 34.79],
        '济南': [117, 36.65],
        '德阳': [104.37, 31.13],
        '温州': [120.65, 28.01],
        '九江': [115.97, 29.71],
        '邯郸': [114.47, 36.6],
        '临安': [119.72, 30.23],
        '兰州': [103.73, 36.03],
        '沧州': [116.83, 38.33],
        '临沂': [118.35, 35.05],
        '南充': [106.110698, 30.837793],
        '天津': [117.2, 39.13],
        '富阳': [119.95, 30.07],
        '泰安': [117.13, 36.18],
        '诸暨': [120.23, 29.71],
        '郑州': [113.65, 34.76],
        '哈尔滨': [126.63, 45.75],
        '聊城': [115.97, 36.45],
        '芜湖': [118.38, 31.33],
        '唐山': [118.02, 39.63],
        '平顶山': [113.29, 33.75],
        '邢台': [114.48, 37.05],
        '德州': [116.29, 37.45],
        '济宁': [116.59, 35.38],
        '荆州': [112.239741, 30.335165],
        '宜昌': [111.3, 30.7],
        '义乌': [120.06, 29.32],
        '丽水': [119.92, 28.45],
        '洛阳': [112.44, 34.7],
        '秦皇岛': [119.57, 39.95],
        '株洲': [113.16, 27.83],
        '石家庄': [114.48, 38.03],
        '莱芜': [117.67, 36.19],
        '常德': [111.69, 29.05],
        '保定': [115.48, 38.85],
        '湘潭': [112.91, 27.87],
        '金华': [119.64, 29.12],
        '岳阳': [113.09, 29.37],
        '长沙': [113, 28.21],
        '衢州': [118.88, 28.97],
        '廊坊': [116.7, 39.53],
        '菏泽': [115.480656, 35.23375],
        '合肥': [117.27, 31.86],
        '武汉': [114.31, 30.52],
        '大庆': [125.03, 46.58]
};

// Sidebar
function init_sidebar() {
        // TODO: This is some kind of easy fix, maybe we can improve this
        var setContentHeight = function() {
                // reset height
                $RIGHT_COL.css('min-height', $(window).height());

                var bodyHeight = $BODY.outerHeight(),
                footerHeight = $BODY.hasClass('footer_fixed') ? -10 : $FOOTER.height(),
                leftColHeight = $LEFT_COL.eq(1).height() + $SIDEBAR_FOOTER.height(),
                contentHeight = bodyHeight < leftColHeight ? leftColHeight: bodyHeight;

                // normalize content
                contentHeight -= $NAV_MENU.height() + footerHeight;

                $RIGHT_COL.css('min-height', contentHeight);
        };

        $SIDEBAR_MENU.find('a').on('click',
        function(ev) {
                console.log('clicked - sidebar_menu');
                var $li = $(this).parent();

                if ($li.is('.active')) {
                        $li.removeClass('active active-sm');
                        $('ul:first', $li).slideUp(function() {
                                setContentHeight();
                        });
                } else {
                        // prevent closing menu if we are on child menu
                        if (!$li.parent().is('.child_menu')) {
                                $SIDEBAR_MENU.find('li').removeClass('active active-sm');
                                $SIDEBAR_MENU.find('li ul').slideUp();
                        } else {
                                if ($BODY.is(".nav-sm")) {
                                        $li.parent().find("li").removeClass("active active-sm");
                                        $li.parent().find("li ul").slideUp();
                                }
                        }
                        $li.addClass('active');

                        $('ul:first', $li).slideDown(function() {
                                setContentHeight();
                        });
                }
        });

        // toggle small or large menu
        $MENU_TOGGLE.on('click',
        function() {
                console.log('clicked - menu toggle');

                if ($BODY.hasClass('nav-md')) {
                        $SIDEBAR_MENU.find('li.active ul').hide();
                        $SIDEBAR_MENU.find('li.active').addClass('active-sm').removeClass('active');
                } else {
                        $SIDEBAR_MENU.find('li.active-sm ul').show();
                        $SIDEBAR_MENU.find('li.active-sm').addClass('active').removeClass('active-sm');
                }

                $BODY.toggleClass('nav-md nav-sm');

                setContentHeight();

                $('.dataTable').each(function() {
                        $(this).dataTable().fnDraw();
                });
        });

        // check active menu
        $SIDEBAR_MENU.find('a[href="' + CURRENT_URL + '"]').parent('li').addClass('current-page');

        $SIDEBAR_MENU.find('a').filter(function() {
                return this.href == CURRENT_URL;
        }).parent('li').addClass('current-page').parents('ul').slideDown(function() {
                setContentHeight();
        }).parent().addClass('active');

        // recompute content when resizing
        $(window).smartresize(function() {
                setContentHeight();
        });

        setContentHeight();

        // fixed sidebar
        if ($.fn.mCustomScrollbar) {
                $('.menu_fixed').mCustomScrollbar({
                        autoHideScrollbar: true,
                        theme: 'minimal',
                        mouseWheel: {
                                preventDefault: true
                        }
                });
        }
};
// /Sidebar
var randNum = function() {
        return (Math.floor(Math.random() * (1 + 40 - 20))) + 20;
};

// Panel toolbox
$(document).ready(function() {
        $('.collapse-link').on('click',
        function() {
                var $BOX_PANEL = $(this).closest('.x_panel'),
                $ICON = $(this).find('i'),
                $BOX_CONTENT = $BOX_PANEL.find('.x_content');

                // fix for some div with hardcoded fix class
                if ($BOX_PANEL.attr('style')) {
                        $BOX_CONTENT.slideToggle(200,
                        function() {
                                $BOX_PANEL.removeAttr('style');
                        });
                } else {
                        $BOX_CONTENT.slideToggle(200);
                        $BOX_PANEL.css('height', 'auto');
                }

                $ICON.toggleClass('fa-chevron-up fa-chevron-down');
        });

        $('.close-link').click(function() {
                var $BOX_PANEL = $(this).closest('.x_panel');

                $BOX_PANEL.remove();
        });
});
// /Panel toolbox
// Tooltip
$(document).ready(function() {
        $('[data-toggle="tooltip"]').tooltip({
                container: 'body'
        });
});
// /Tooltip
// Progressbar
if ($(".progress .progress-bar")[0]) {
        $('.progress .progress-bar').progressbar();
}
// /Progressbar
// Switchery
$(document).ready(function() {
        if ($(".js-switch")[0]) {
                var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
                elems.forEach(function(html) {
                        var switchery = new Switchery(html, {
                                color: '#26B99A'
                        });
                });
        }
});
// /Switchery
// iCheck
$(document).ready(function() {
        if ($("input.flat")[0]) {
                $(document).ready(function() {
                        $('input.flat').iCheck({
                                checkboxClass: 'icheckbox_flat-green',
                                radioClass: 'iradio_flat-green'
                        });
                });
        }
});
// /iCheck
// Table
$('table input').on('ifChecked',
function() {
        checkState = '';
        $(this).parent().parent().parent().addClass('selected');
        countChecked();
});
$('table input').on('ifUnchecked',
function() {
        checkState = '';
        $(this).parent().parent().parent().removeClass('selected');
        countChecked();
});

var checkState = '';

$('.bulk_action input').on('ifChecked',
function() {
        checkState = '';
        $(this).parent().parent().parent().addClass('selected');
        countChecked();
});
$('.bulk_action input').on('ifUnchecked',
function() {
        checkState = '';
        $(this).parent().parent().parent().removeClass('selected');
        countChecked();
});
$('.bulk_action input#check-all').on('ifChecked',
function() {
        checkState = 'all';
        countChecked();
});
$('.bulk_action input#check-all').on('ifUnchecked',
function() {
        checkState = 'none';
        countChecked();
});

function countChecked() {
        if (checkState === 'all') {
                $(".bulk_action input[name='table_records']").iCheck('check');
        }
        if (checkState === 'none') {
                $(".bulk_action input[name='table_records']").iCheck('uncheck');
        }

        var checkCount = $(".bulk_action input[name='table_records']:checked").length;

        if (checkCount) {
                $('.column-title').hide();
                $('.bulk-actions').show();
                $('.action-cnt').html(checkCount + ' Records Selected');
        } else {
                $('.column-title').show();
                $('.bulk-actions').hide();
        }
}

// Accordion
$(document).ready(function() {
        $(".expand").on("click",
        function() {
                $(this).next().slideToggle(200);
                $expand = $(this).find(">:first-child");

                if ($expand.text() == "+") {
                        $expand.text("-");
                } else {
                        $expand.text("+");
                }
        });
});

// NProgress
if (typeof NProgress != 'undefined') {
        $(document).ready(function() {
                NProgress.start();
        });

        $(window).load(function() {
                NProgress.done();
        });
}

//hover and retain popover when on popover content
var originalLeave = $.fn.popover.Constructor.prototype.leave;
$.fn.popover.Constructor.prototype.leave = function(obj) {
        var self = obj instanceof this.constructor ? obj: $(obj.currentTarget)[this.type](this.getDelegateOptions()).data('bs.' + this.type);
        var container, timeout;

        originalLeave.call(this, obj);

        if (obj.currentTarget) {
                container = $(obj.currentTarget).siblings('.popover');
                timeout = self.timeout;
                container.one('mouseenter',
                function() {
                        //We entered the actual popover – call off the dogs
                        clearTimeout(timeout);
                        //Let's monitor popover content instead
                        container.one('mouseleave',
                        function() {
                                $.fn.popover.Constructor.prototype.leave.call(self, self);
                        });
                });
        }
};

$('body').popover({
        selector: '[data-popover]',
        trigger: 'click hover',
        delay: {
                show: 50,
                hide: 400
        }
});

function gd(year, month, day) {
        return new Date(year, month - 1, day).getTime();
}

function init_flot_chart() {

        if (typeof($.plot) === 'undefined') {
                return;
        }

        console.log('init_flot_chart');

        var arr_data1 = [[gd(2012, 1, 1), 17], [gd(2012, 1, 2), 74], [gd(2012, 1, 3), 6], [gd(2012, 1, 4), 39], [gd(2012, 1, 5), 20], [gd(2012, 1, 6), 85], [gd(2012, 1, 7), 7]];

        var arr_data2 = [[gd(2012, 1, 1), 82], [gd(2012, 1, 2), 23], [gd(2012, 1, 3), 66], [gd(2012, 1, 4), 9], [gd(2012, 1, 5), 119], [gd(2012, 1, 6), 6], [gd(2012, 1, 7), 9]];

        var arr_data3 = [[0, 1], [1, 9], [2, 6], [3, 10], [4, 5], [5, 17], [6, 6], [7, 10], [8, 7], [9, 11], [10, 35], [11, 9], [12, 12], [13, 5], [14, 3], [15, 4], [16, 9]];

        var chart_plot_02_data = [];

        var chart_plot_03_data = [[0, 1], [1, 9], [2, 6], [3, 10], [4, 5], [5, 17], [6, 6], [7, 10], [8, 7], [9, 11], [10, 35], [11, 9], [12, 12], [13, 5], [14, 3], [15, 4], [16, 9]];

        for (var i = 0; i < 30; i++) {
                chart_plot_02_data.push([new Date(Date.today().add(i).days()).getTime(), randNum() + i + i + 10]);
        }

        var chart_plot_01_settings = {
                series: {
                        lines: {
                                show: false,
                                fill: true
                        },
                        splines: {
                                show: true,
                                tension: 0.4,
                                lineWidth: 1,
                                fill: 0.4
                        },
                        points: {
                                radius: 0,
                                show: true
                        },
                        shadowSize: 2
                },
                grid: {
                        verticalLines: true,
                        hoverable: true,
                        clickable: true,
                        tickColor: "#d5d5d5",
                        borderWidth: 1,
                        color: '#fff'
                },
                colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
                xaxis: {
                        tickColor: "rgba(51, 51, 51, 0.06)",
                        mode: "time",
                        tickSize: [1, "day"],
                        //tickLength: 10,
                        axisLabel: "Date",
                        axisLabelUseCanvas: true,
                        axisLabelFontSizePixels: 12,
                        axisLabelFontFamily: 'Verdana, Arial',
                        axisLabelPadding: 10
                },
                yaxis: {
                        ticks: 8,
                        tickColor: "rgba(51, 51, 51, 0.06)",
                },
                tooltip: false
        }

        var chart_plot_02_settings = {
                grid: {
                        show: true,
                        aboveData: true,
                        color: "#3f3f3f",
                        labelMargin: 10,
                        axisMargin: 0,
                        borderWidth: 0,
                        borderColor: null,
                        minBorderMargin: 5,
                        clickable: true,
                        hoverable: true,
                        autoHighlight: true,
                        mouseActiveRadius: 100
                },
                series: {
                        lines: {
                                show: true,
                                fill: true,
                                lineWidth: 2,
                                steps: false
                        },
                        points: {
                                show: true,
                                radius: 4.5,
                                symbol: "circle",
                                lineWidth: 3.0
                        }
                },
                legend: {
                        position: "ne",
                        margin: [0, -25],
                        noColumns: 0,
                        labelBoxBorderColor: null,
                        labelFormatter: function(label, series) {
                                return label + '&nbsp;&nbsp;';
                        },
                        width: 40,
                        height: 1
                },
                colors: ['#96CA59', '#3F97EB', '#72c380', '#6f7a8a', '#f7cb38', '#5a8022', '#2c7282'],
                shadowSize: 0,
                tooltip: true,
                tooltipOpts: {
                        content: "%s: %y.0",
                        xDateFormat: "%d/%m",
                        shifts: {
                                x: -30,
                                y: -50
                        },
                        defaultTheme: false
                },
                yaxis: {
                        min: 0
                },
                xaxis: {
                        mode: "time",
                        minTickSize: [1, "day"],
                        timeformat: "%d/%m/%y",
                        min: chart_plot_02_data[0][0],
                        max: chart_plot_02_data[20][0]
                }
        };

        var chart_plot_03_settings = {
                series: {
                        curvedLines: {
                                apply: true,
                                active: true,
                                monotonicFit: true
                        }
                },
                colors: ["#26B99A"],
                grid: {
                        borderWidth: {
                                top: 0,
                                right: 0,
                                bottom: 1,
                                left: 1
                        },
                        borderColor: {
                                bottom: "#7F8790",
                                left: "#7F8790"
                        }
                }
        };

        if ($("#chart_plot_01").length) {
                console.log('Plot1');

                $.plot($("#chart_plot_01"), [arr_data1, arr_data2], chart_plot_01_settings);
        }

        if ($("#chart_plot_02").length) {
                console.log('Plot2');

                $.plot($("#chart_plot_02"), [{
                        label: "Email Sent",
                        data: chart_plot_02_data,
                        lines: {
                                fillColor: "rgba(150, 202, 89, 0.12)"
                        },
                        points: {
                                fillColor: "#fff"
                        }
                }], chart_plot_02_settings);

        }

        if ($("#chart_plot_03").length) {
                console.log('Plot3');

                $.plot($("#chart_plot_03"), [{
                        label: "Registrations",
                        data: chart_plot_03_data,
                        lines: {
                                fillColor: "rgba(150, 202, 89, 0.12)"
                        },
                        points: {
                                fillColor: "#fff"
                        }
                }], chart_plot_03_settings);

        };

}

/* STARRR */

function init_starrr() {

        if (typeof(starrr) === 'undefined') {
                return;
        }
        console.log('init_starrr');

        $(".stars").starrr();

        $('.stars-existing').starrr({
                rating: 4
        });

        $('.stars').on('starrr:change',
        function(e, value) {
                $('.stars-count').html(value);
        });

        $('.stars-existing').on('starrr:change',
        function(e, value) {
                $('.stars-count-existing').html(value);
        });

};

function init_JQVmap() {

        //console.log('check init_JQVmap [' + typeof (VectorCanvas) + '][' + typeof (jQuery.fn.vectorMap) + ']' );
        if (typeof(jQuery.fn.vectorMap) === 'undefined') {
                return;
        }

        console.log('init_JQVmap');

        if ($('#world-map-gdp').length) {

                $('#world-map-gdp').vectorMap({
                        map: 'world_en',
                        backgroundColor: null,
                        color: '#ffffff',
                        hoverOpacity: 0.7,
                        selectedColor: '#666666',
                        enableZoom: true,
                        showTooltip: true,
                        values: sample_data,
                        scaleColors: ['#E6F2F0', '#149B7E'],
                        normalizeFunction: 'polynomial'
                });

        }

        if ($('#usa_map').length) {

                $('#usa_map').vectorMap({
                        map: 'usa_en',
                        backgroundColor: null,
                        color: '#ffffff',
                        hoverOpacity: 0.7,
                        selectedColor: '#666666',
                        enableZoom: true,
                        showTooltip: true,
                        values: sample_data,
                        scaleColors: ['#E6F2F0', '#149B7E'],
                        normalizeFunction: 'polynomial'
                });

        }

};

function init_skycons() {

        if (typeof(Skycons) === 'undefined') {
                return;
        }
        console.log('init_skycons');

        var icons = new Skycons({
                "color": "#73879C"
        }),
        list = ["clear-day", "clear-night", "partly-cloudy-day", "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind", "fog"],
        i;

        for (i = list.length; i--;) icons.set(list[i], list[i]);

        icons.play();

}

function init_chart_doughnut() {

        if (typeof(Chart) === 'undefined') {
                return;
        }

        console.log('init_chart_doughnut');

        if ($('.canvasDoughnut').length) {

                var chart_doughnut_settings = {
                        type: 'doughnut',
                        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
                        data: {
                                labels: ["Symbian", "Blackberry", "Other", "Android", "IOS"],
                                datasets: [{
                                        data: [15, 20, 30, 10, 30],
                                        backgroundColor: ["#BDC3C7", "#9B59B6", "#E74C3C", "#26B99A", "#3498DB"],
                                        hoverBackgroundColor: ["#CFD4D8", "#B370CF", "#E95E4F", "#36CAAB", "#49A9EA"]
                                }]
                        },
                        options: {
                                legend: false,
                                responsive: false
                        }
                }

                $('.canvasDoughnut').each(function() {

                        var chart_element = $(this);
                        var chart_doughnut = new Chart(chart_element, chart_doughnut_settings);

                });

        }

}

function init_gauge() {

        if (typeof(Gauge) === 'undefined') {
                return;
        }

        console.log('init_gauge [' + $('.gauge-chart').length + ']');

        console.log('init_gauge');

        var chart_gauge_settings = {
                lines: 12,
                angle: 0,
                lineWidth: 0.4,
                pointer: {
                        length: 0.75,
                        strokeWidth: 0.042,
                        color: '#1D212A'
                },
                limitMax: 'false',
                colorStart: '#1ABC9C',
                colorStop: '#1ABC9C',
                strokeColor: '#F0F3F3',
                generateGradient: true
        };

        if ($('#chart_gauge_01').length) {

                var chart_gauge_01_elem = document.getElementById('chart_gauge_01');
                var chart_gauge_01 = new Gauge(chart_gauge_01_elem).setOptions(chart_gauge_settings);

        }

        if ($('#gauge-text').length) {

                chart_gauge_01.maxValue = 6000;
                chart_gauge_01.animationSpeed = 32;
                chart_gauge_01.set(3200);
                chart_gauge_01.setTextField(document.getElementById("gauge-text"));

        }

        if ($('#chart_gauge_02').length) {

                var chart_gauge_02_elem = document.getElementById('chart_gauge_02');
                var chart_gauge_02 = new Gauge(chart_gauge_02_elem).setOptions(chart_gauge_settings);

        }

        if ($('#gauge-text2').length) {

                chart_gauge_02.maxValue = 9000;
                chart_gauge_02.animationSpeed = 32;
                chart_gauge_02.set(2400);
                chart_gauge_02.setTextField(document.getElementById("gauge-text2"));

        }

}

/* SPARKLINES */

function init_sparklines() {

        if (typeof(jQuery.fn.sparkline) === 'undefined') {
                return;
        }
        console.log('init_sparklines');

        $(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
                type: 'bar',
                height: '125',
                barWidth: 13,
                colorMap: {
                        '7': '#a1a1a1'
                },
                barSpacing: 2,
                barColor: '#26B99A'
        });

        $(".sparkline_two").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
                type: 'bar',
                height: '40',
                barWidth: 9,
                colorMap: {
                        '7': '#a1a1a1'
                },
                barSpacing: 2,
                barColor: '#26B99A'
        });

        $(".sparkline_three").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
                type: 'line',
                width: '200',
                height: '40',
                lineColor: '#26B99A',
                fillColor: 'rgba(223, 223, 223, 0.57)',
                lineWidth: 2,
                spotColor: '#26B99A',
                minSpotColor: '#26B99A'
        });

        $(".sparkline11").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3], {
                type: 'bar',
                height: '40',
                barWidth: 8,
                colorMap: {
                        '7': '#a1a1a1'
                },
                barSpacing: 2,
                barColor: '#26B99A'
        });

        $(".sparkline22").sparkline([2, 4, 3, 4, 7, 5, 4, 3, 5, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6], {
                type: 'line',
                height: '40',
                width: '200',
                lineColor: '#26B99A',
                fillColor: '#ffffff',
                lineWidth: 3,
                spotColor: '#34495E',
                minSpotColor: '#34495E'
        });

        $(".sparkline_bar").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5], {
                type: 'bar',
                colorMap: {
                        '7': '#a1a1a1'
                },
                barColor: '#26B99A'
        });

        $(".sparkline_area").sparkline([5, 6, 7, 9, 9, 5, 3, 2, 2, 4, 6, 7], {
                type: 'line',
                lineColor: '#26B99A',
                fillColor: '#26B99A',
                spotColor: '#4578a0',
                minSpotColor: '#728fb2',
                maxSpotColor: '#6d93c4',
                highlightSpotColor: '#ef5179',
                highlightLineColor: '#8ba8bf',
                spotRadius: 2.5,
                width: 85
        });

        $(".sparkline_line").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5], {
                type: 'line',
                lineColor: '#26B99A',
                fillColor: '#ffffff',
                width: 85,
                spotColor: '#34495E',
                minSpotColor: '#34495E'
        });

        $(".sparkline_pie").sparkline([1, 1, 2, 1], {
                type: 'pie',
                sliceColors: ['#26B99A', '#ccc', '#75BCDD', '#D66DE2']
        });

        $(".sparkline_discreet").sparkline([4, 6, 7, 7, 4, 3, 2, 1, 4, 4, 2, 4, 3, 7, 8, 9, 7, 6, 4, 3], {
                type: 'discrete',
                barWidth: 3,
                lineColor: '#26B99A',
                width: '85',
        });

};

/* AUTOCOMPLETE */

function init_autocomplete() {

        if (typeof($.fn.autocomplete) === 'undefined') {
                return;
        }
        console.log('init_autocomplete');

        var countries = {
                AD: "Andorra",
                A2: "Andorra Test",
                AE: "United Arab Emirates",
                AF: "Afghanistan",
                AG: "Antigua and Barbuda",
                AI: "Anguilla",
                AL: "Albania",
                AM: "Armenia",
                AN: "Netherlands Antilles",
                AO: "Angola",
                AQ: "Antarctica",
                AR: "Argentina",
                AS: "American Samoa",
                AT: "Austria",
                AU: "Australia",
                AW: "Aruba",
                AX: "Åland Islands",
                AZ: "Azerbaijan",
                BA: "Bosnia and Herzegovina",
                BB: "Barbados",
                BD: "Bangladesh",
                BE: "Belgium",
                BF: "Burkina Faso",
                BG: "Bulgaria",
                BH: "Bahrain",
                BI: "Burundi",
                BJ: "Benin",
                BL: "Saint Barthélemy",
                BM: "Bermuda",
                BN: "Brunei",
                BO: "Bolivia",
                BQ: "British Antarctic Territory",
                BR: "Brazil",
                BS: "Bahamas",
                BT: "Bhutan",
                BV: "Bouvet Island",
                BW: "Botswana",
                BY: "Belarus",
                BZ: "Belize",
                CA: "Canada",
                CC: "Cocos [Keeling] Islands",
                CD: "Congo - Kinshasa",
                CF: "Central African Republic",
                CG: "Congo - Brazzaville",
                CH: "Switzerland",
                CI: "Côte d’Ivoire",
                CK: "Cook Islands",
                CL: "Chile",
                CM: "Cameroon",
                CN: "China",
                CO: "Colombia",
                CR: "Costa Rica",
                CS: "Serbia and Montenegro",
                CT: "Canton and Enderbury Islands",
                CU: "Cuba",
                CV: "Cape Verde",
                CX: "Christmas Island",
                CY: "Cyprus",
                CZ: "Czech Republic",
                DD: "East Germany",
                DE: "Germany",
                DJ: "Djibouti",
                DK: "Denmark",
                DM: "Dominica",
                DO: "Dominican Republic",
                DZ: "Algeria",
                EC: "Ecuador",
                EE: "Estonia",
                EG: "Egypt",
                EH: "Western Sahara",
                ER: "Eritrea",
                ES: "Spain",
                ET: "Ethiopia",
                FI: "Finland",
                FJ: "Fiji",
                FK: "Falkland Islands",
                FM: "Micronesia",
                FO: "Faroe Islands",
                FQ: "French Southern and Antarctic Territories",
                FR: "France",
                FX: "Metropolitan France",
                GA: "Gabon",
                GB: "United Kingdom",
                GD: "Grenada",
                GE: "Georgia",
                GF: "French Guiana",
                GG: "Guernsey",
                GH: "Ghana",
                GI: "Gibraltar",
                GL: "Greenland",
                GM: "Gambia",
                GN: "Guinea",
                GP: "Guadeloupe",
                GQ: "Equatorial Guinea",
                GR: "Greece",
                GS: "South Georgia and the South Sandwich Islands",
                GT: "Guatemala",
                GU: "Guam",
                GW: "Guinea-Bissau",
                GY: "Guyana",
                HK: "Hong Kong SAR China",
                HM: "Heard Island and McDonald Islands",
                HN: "Honduras",
                HR: "Croatia",
                HT: "Haiti",
                HU: "Hungary",
                ID: "Indonesia",
                IE: "Ireland",
                IL: "Israel",
                IM: "Isle of Man",
                IN: "India",
                IO: "British Indian Ocean Territory",
                IQ: "Iraq",
                IR: "Iran",
                IS: "Iceland",
                IT: "Italy",
                JE: "Jersey",
                JM: "Jamaica",
                JO: "Jordan",
                JP: "Japan",
                JT: "Johnston Island",
                KE: "Kenya",
                KG: "Kyrgyzstan",
                KH: "Cambodia",
                KI: "Kiribati",
                KM: "Comoros",
                KN: "Saint Kitts and Nevis",
                KP: "North Korea",
                KR: "South Korea",
                KW: "Kuwait",
                KY: "Cayman Islands",
                KZ: "Kazakhstan",
                LA: "Laos",
                LB: "Lebanon",
                LC: "Saint Lucia",
                LI: "Liechtenstein",
                LK: "Sri Lanka",
                LR: "Liberia",
                LS: "Lesotho",
                LT: "Lithuania",
                LU: "Luxembourg",
                LV: "Latvia",
                LY: "Libya",
                MA: "Morocco",
                MC: "Monaco",
                MD: "Moldova",
                ME: "Montenegro",
                MF: "Saint Martin",
                MG: "Madagascar",
                MH: "Marshall Islands",
                MI: "Midway Islands",
                MK: "Macedonia",
                ML: "Mali",
                MM: "Myanmar [Burma]",
                MN: "Mongolia",
                MO: "Macau SAR China",
                MP: "Northern Mariana Islands",
                MQ: "Martinique",
                MR: "Mauritania",
                MS: "Montserrat",
                MT: "Malta",
                MU: "Mauritius",
                MV: "Maldives",
                MW: "Malawi",
                MX: "Mexico",
                MY: "Malaysia",
                MZ: "Mozambique",
                NA: "Namibia",
                NC: "New Caledonia",
                NE: "Niger",
                NF: "Norfolk Island",
                NG: "Nigeria",
                NI: "Nicaragua",
                NL: "Netherlands",
                NO: "Norway",
                NP: "Nepal",
                NQ: "Dronning Maud Land",
                NR: "Nauru",
                NT: "Neutral Zone",
                NU: "Niue",
                NZ: "New Zealand",
                OM: "Oman",
                PA: "Panama",
                PC: "Pacific Islands Trust Territory",
                PE: "Peru",
                PF: "French Polynesia",
                PG: "Papua New Guinea",
                PH: "Philippines",
                PK: "Pakistan",
                PL: "Poland",
                PM: "Saint Pierre and Miquelon",
                PN: "Pitcairn Islands",
                PR: "Puerto Rico",
                PS: "Palestinian Territories",
                PT: "Portugal",
                PU: "U.S. Miscellaneous Pacific Islands",
                PW: "Palau",
                PY: "Paraguay",
                PZ: "Panama Canal Zone",
                QA: "Qatar",
                RE: "Réunion",
                RO: "Romania",
                RS: "Serbia",
                RU: "Russia",
                RW: "Rwanda",
                SA: "Saudi Arabia",
                SB: "Solomon Islands",
                SC: "Seychelles",
                SD: "Sudan",
                SE: "Sweden",
                SG: "Singapore",
                SH: "Saint Helena",
                SI: "Slovenia",
                SJ: "Svalbard and Jan Mayen",
                SK: "Slovakia",
                SL: "Sierra Leone",
                SM: "San Marino",
                SN: "Senegal",
                SO: "Somalia",
                SR: "Suriname",
                ST: "São Tomé and Príncipe",
                SU: "Union of Soviet Socialist Republics",
                SV: "El Salvador",
                SY: "Syria",
                SZ: "Swaziland",
                TC: "Turks and Caicos Islands",
                TD: "Chad",
                TF: "French Southern Territories",
                TG: "Togo",
                TH: "Thailand",
                TJ: "Tajikistan",
                TK: "Tokelau",
                TL: "Timor-Leste",
                TM: "Turkmenistan",
                TN: "Tunisia",
                TO: "Tonga",
                TR: "Turkey",
                TT: "Trinidad and Tobago",
                TV: "Tuvalu",
                TW: "Taiwan",
                TZ: "Tanzania",
                UA: "Ukraine",
                UG: "Uganda",
                UM: "U.S. Minor Outlying Islands",
                US: "United States",
                UY: "Uruguay",
                UZ: "Uzbekistan",
                VA: "Vatican City",
                VC: "Saint Vincent and the Grenadines",
                VD: "North Vietnam",
                VE: "Venezuela",
                VG: "British Virgin Islands",
                VI: "U.S. Virgin Islands",
                VN: "Vietnam",
                VU: "Vanuatu",
                WF: "Wallis and Futuna",
                WK: "Wake Island",
                WS: "Samoa",
                YD: "People's Democratic Republic of Yemen",
                YE: "Yemen",
                YT: "Mayotte",
                ZA: "South Africa",
                ZM: "Zambia",
                ZW: "Zimbabwe",
                ZZ: "Unknown or Invalid Region"
        };

        var countriesArray = $.map(countries,
        function(value, key) {
                return {
                        value: value,
                        data: key
                };
        });

        // initialize autocomplete with custom appendTo
        $('#autocomplete-custom-append').autocomplete({
                lookup: countriesArray
        });

};

/* AUTOSIZE */

function init_autosize() {

        if (typeof $.fn.autosize !== 'undefined') {

                autosize($('.resizable_textarea'));

        }

};

/* PARSLEY */

function init_parsley() {

        if (typeof(parsley) === 'undefined') {
                return;
        }
        console.log('init_parsley');

        $
        /*.listen*/
        ('parsley:field:validate',
        function() {
                validateFront();
        });
        $('#demo-form .btn').on('click',
        function() {
                $('#demo-form').parsley().validate();
                validateFront();
        });
        var validateFront = function() {
                if (true === $('#demo-form').parsley().isValid()) {
                        $('.bs-callout-info').removeClass('hidden');
                        $('.bs-callout-warning').addClass('hidden');
                } else {
                        $('.bs-callout-info').addClass('hidden');
                        $('.bs-callout-warning').removeClass('hidden');
                }
        };

        $
        /*.listen*/
        ('parsley:field:validate',
        function() {
                validateFront();
        });
        $('#demo-form2 .btn').on('click',
        function() {
                $('#demo-form2').parsley().validate();
                validateFront();
        });
        var validateFront = function() {
                if (true === $('#demo-form2').parsley().isValid()) {
                        $('.bs-callout-info').removeClass('hidden');
                        $('.bs-callout-warning').addClass('hidden');
                } else {
                        $('.bs-callout-info').addClass('hidden');
                        $('.bs-callout-warning').removeClass('hidden');
                }
        };

        try {
                hljs.initHighlightingOnLoad();
        } catch(err) {}

};

/* INPUTS */

function onAddTag(tag) {
        alert("Added a tag: " + tag);
}

function onRemoveTag(tag) {
        alert("Removed a tag: " + tag);
}

function onChangeTag(input, tag) {
        alert("Changed a tag: " + tag);
}

//tags input
function init_TagsInput() {

        if (typeof $.fn.tagsInput !== 'undefined') {

                $('#tags_1').tagsInput({
                        width: 'auto'
                });

        }

};

/* SELECT2 */

function init_select2() {

        if (typeof(select2) === 'undefined') {
                return;
        }
        console.log('init_toolbox');

        $(".select2_single").select2({
                placeholder: "Select a state",
                allowClear: true
        });
        $(".select2_group").select2({});
        $(".select2_multiple").select2({
                maximumSelectionLength: 4,
                placeholder: "With Max Selection limit 4",
                allowClear: true
        });

};

/* WYSIWYG EDITOR */

function init_wysiwyg() {

        if (typeof($.fn.wysiwyg) === 'undefined') {
                return;
        }
        console.log('init_wysiwyg');

        function init_ToolbarBootstrapBindings() {
                var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times', 'Times New Roman', 'Verdana'],
                fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                $.each(fonts,
                function(idx, fontName) {
                        fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                });
                $('a[title]').tooltip({
                        container: 'body'
                });
                $('.dropdown-menu input').click(function() {
                        return false;
                }).change(function() {
                        $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                }).keydown('esc',
                function() {
                        this.value = '';
                        $(this).change();
                });

                $('[data-role=magic-overlay]').each(function() {
                        var overlay = $(this),
                        target = $(overlay.data('target'));
                        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                });

                if ("onwebkitspeechchange" in document.createElement("input")) {
                        var editorOffset = $('#editor').offset();

                        $('.voiceBtn').css('position', 'absolute').offset({
                                top: editorOffset.top,
                                left: editorOffset.left + $('#editor').innerWidth() - 35
                        });
                } else {
                        $('.voiceBtn').hide();
                }
        }

        function showErrorAlert(reason, detail) {
                var msg = '';
                if (reason === 'unsupported-file-type') {
                        msg = "Unsupported format " + detail;
                } else {
                        console.log("error uploading file", reason, detail);
                }
                $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' + '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
        }

        $('.editor-wrapper').each(function() {
                var id = $(this).attr('id'); //editor-one
                $(this).wysiwyg({
                        toolbarSelector: '[data-target="#' + id + '"]',
                        fileUploadError: showErrorAlert
                });
        });

        window.prettyPrint;
        prettyPrint();

};

/* CROPPER */

function init_cropper() {

        if (typeof($.fn.cropper) === 'undefined') {
                return;
        }
        console.log('init_cropper');

        var $image = $('#image');
        var $download = $('#download');
        var $dataX = $('#dataX');
        var $dataY = $('#dataY');
        var $dataHeight = $('#dataHeight');
        var $dataWidth = $('#dataWidth');
        var $dataRotate = $('#dataRotate');
        var $dataScaleX = $('#dataScaleX');
        var $dataScaleY = $('#dataScaleY');
        var options = {
                aspectRatio: 16 / 9,
                preview: '.img-preview',
                crop: function(e) {
                        $dataX.val(Math.round(e.x));
                        $dataY.val(Math.round(e.y));
                        $dataHeight.val(Math.round(e.height));
                        $dataWidth.val(Math.round(e.width));
                        $dataRotate.val(e.rotate);
                        $dataScaleX.val(e.scaleX);
                        $dataScaleY.val(e.scaleY);
                }
        };

        // Tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Cropper
        $image.on({
                'build.cropper': function(e) {
                        console.log(e.type);
                },
                'built.cropper': function(e) {
                        console.log(e.type);
                },
                'cropstart.cropper': function(e) {
                        console.log(e.type, e.action);
                },
                'cropmove.cropper': function(e) {
                        console.log(e.type, e.action);
                },
                'cropend.cropper': function(e) {
                        console.log(e.type, e.action);
                },
                'crop.cropper': function(e) {
                        console.log(e.type, e.x, e.y, e.width, e.height, e.rotate, e.scaleX, e.scaleY);
                },
                'zoom.cropper': function(e) {
                        console.log(e.type, e.ratio);
                }
        }).cropper(options);

        // Buttons
        if (!$.isFunction(document.createElement('canvas').getContext)) {
                $('button[data-method="getCroppedCanvas"]').prop('disabled', true);
        }

        if (typeof document.createElement('cropper').style.transition === 'undefined') {
                $('button[data-method="rotate"]').prop('disabled', true);
                $('button[data-method="scale"]').prop('disabled', true);
        }

        // Download
        if (typeof $download[0].download === 'undefined') {
                $download.addClass('disabled');
        }

        // Options
        $('.docs-toggles').on('change', 'input',
        function() {
                var $this = $(this);
                var name = $this.attr('name');
                var type = $this.prop('type');
                var cropBoxData;
                var canvasData;

                if (!$image.data('cropper')) {
                        return;
                }

                if (type === 'checkbox') {
                        options[name] = $this.prop('checked');
                        cropBoxData = $image.cropper('getCropBoxData');
                        canvasData = $image.cropper('getCanvasData');

                        options.built = function() {
                                $image.cropper('setCropBoxData', cropBoxData);
                                $image.cropper('setCanvasData', canvasData);
                        };
                } else if (type === 'radio') {
                        options[name] = $this.val();
                }

                $image.cropper('destroy').cropper(options);
        });

        // Methods
        $('.docs-buttons').on('click', '[data-method]',
        function() {
                var $this = $(this);
                var data = $this.data();
                var $target;
                var result;

                if ($this.prop('disabled') || $this.hasClass('disabled')) {
                        return;
                }

                if ($image.data('cropper') && data.method) {
                        data = $.extend({},
                        data); // Clone a new one
                        if (typeof data.target !== 'undefined') {
                                $target = $(data.target);

                                if (typeof data.option === 'undefined') {
                                        try {
                                                data.option = JSON.parse($target.val());
                                        } catch(e) {
                                                console.log(e.message);
                                        }
                                }
                        }

                        result = $image.cropper(data.method, data.option, data.secondOption);

                        switch (data.method) {
                        case 'scaleX':
                        case 'scaleY':
                                $(this).data('option', -data.option);
                                break;

                        case 'getCroppedCanvas':
                                if (result) {

                                        // Bootstrap's Modal
                                        $('#getCroppedCanvasModal').modal().find('.modal-body').html(result);

                                        if (!$download.hasClass('disabled')) {
                                                $download.attr('href', result.toDataURL());
                                        }
                                }

                                break;
                        }

                        if ($.isPlainObject(result) && $target) {
                                try {
                                        $target.val(JSON.stringify(result));
                                } catch(e) {
                                        console.log(e.message);
                                }
                        }

                }
        });

        // Keyboard
        $(document.body).on('keydown',
        function(e) {
                if (!$image.data('cropper') || this.scrollTop > 300) {
                        return;
                }

                switch (e.which) {
                case 37:
                        e.preventDefault();
                        $image.cropper('move', -1, 0);
                        break;

                case 38:
                        e.preventDefault();
                        $image.cropper('move', 0, -1);
                        break;

                case 39:
                        e.preventDefault();
                        $image.cropper('move', 1, 0);
                        break;

                case 40:
                        e.preventDefault();
                        $image.cropper('move', 0, 1);
                        break;
                }
        });

        // Import image
        var $inputImage = $('#inputImage');
        var URL = window.URL || window.webkitURL;
        var blobURL;

        if (URL) {
                $inputImage.change(function() {
                        var files = this.files;
                        var file;

                        if (!$image.data('cropper')) {
                                return;
                        }

                        if (files && files.length) {
                                file = files[0];

                                if (/^image\/\w+$/.test(file.type)) {
                                        blobURL = URL.createObjectURL(file);
                                        $image.one('built.cropper',
                                        function() {

                                                // Revoke when load complete
                                                URL.revokeObjectURL(blobURL);
                                        }).cropper('reset').cropper('replace', blobURL);
                                        $inputImage.val('');
                                } else {
                                        window.alert('Please choose an image file.');
                                }
                        }
                });
        } else {
                $inputImage.prop('disabled', true).parent().addClass('disabled');
        }

};

/* CROPPER --- end */

/* KNOB */

function init_knob() {

        if (typeof($.fn.knob) === 'undefined') {
                return;
        }
        console.log('init_knob');

        $(".knob").knob({
                change: function(value) {
                        //console.log("change : " + value);
                },
                release: function(value) {
                        //console.log(this.$.attr('value'));
                        console.log("release : " + value);
                },
                cancel: function() {
                        console.log("cancel : ", this);
                },
                /*format : function (value) {
				   return value + '%';
				   },*/
                draw: function() {

                        // "tron" case
                        if (this.$.data('skin') == 'tron') {

                                this.cursorExt = 0.3;

                                var a = this.arc(this.cv) // Arc
                                ,
                                pa // Previous arc
                                ,
                                r = 1;

                                this.g.lineWidth = this.lineWidth;

                                if (this.o.displayPrevious) {
                                        pa = this.arc(this.v);
                                        this.g.beginPath();
                                        this.g.strokeStyle = this.pColor;
                                        this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, pa.s, pa.e, pa.d);
                                        this.g.stroke();
                                }

                                this.g.beginPath();
                                this.g.strokeStyle = r ? this.o.fgColor: this.fgColor;
                                this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, a.s, a.e, a.d);
                                this.g.stroke();

                                this.g.lineWidth = 2;
                                this.g.beginPath();
                                this.g.strokeStyle = this.o.fgColor;
                                this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
                                this.g.stroke();

                                return false;
                        }
                }

        });

        // Example of infinite knob, iPod click wheel
        var v, up = 0,
        down = 0,
        i = 0,
        $idir = $("div.idir"),
        $ival = $("div.ival"),
        incr = function() {
                i++;
                $idir.show().html("+").fadeOut();
                $ival.html(i);
        },
        decr = function() {
                i--;
                $idir.show().html("-").fadeOut();
                $ival.html(i);
        };
        $("input.infinite").knob({
                min: 0,
                max: 20,
                stopper: false,
                change: function() {
                        if (v > this.cv) {
                                if (up) {
                                        decr();
                                        up = 0;
                                } else {
                                        up = 1;
                                        down = 0;
                                }
                        } else {
                                if (v < this.cv) {
                                        if (down) {
                                                incr();
                                                down = 0;
                                        } else {
                                                down = 1;
                                                up = 0;
                                        }
                                }
                        }
                        v = this.cv;
                }
        });

};

/* INPUT MASK */

function init_InputMask() {

        if (typeof($.fn.inputmask) === 'undefined') {
                return;
        }
        console.log('init_InputMask');

        $(":input").inputmask();

};

/* COLOR PICKER */

function init_ColorPicker() {

        if (typeof($.fn.colorpicker) === 'undefined') {
                return;
        }
        console.log('init_ColorPicker');

        $('.demo1').colorpicker();
        $('.demo2').colorpicker();

        $('#demo_forceformat').colorpicker({
                format: 'rgba',
                horizontal: true
        });

        $('#demo_forceformat3').colorpicker({
                format: 'rgba',
        });

        $('.demo-auto').colorpicker();

};

/* ION RANGE SLIDER */

function init_IonRangeSlider() {

        if (typeof($.fn.ionRangeSlider) === 'undefined') {
                return;
        }
        console.log('init_IonRangeSlider');

        $("#range_27").ionRangeSlider({
                type: "double",
                min: 1000000,
                max: 2000000,
                grid: true,
                force_edges: true
        });
        $("#range").ionRangeSlider({
                hide_min_max: true,
                keyboard: true,
                min: 0,
                max: 5000,
                from: 1000,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "$",
                grid: true
        });
        $("#range_25").ionRangeSlider({
                type: "double",
                min: 1000000,
                max: 2000000,
                grid: true
        });
        $("#range_26").ionRangeSlider({
                type: "double",
                min: 0,
                max: 10000,
                step: 500,
                grid: true,
                grid_snap: true
        });
        $("#range_31").ionRangeSlider({
                type: "double",
                min: 0,
                max: 100,
                from: 30,
                to: 70,
                from_fixed: true
        });
        $(".range_min_max").ionRangeSlider({
                type: "double",
                min: 0,
                max: 100,
                from: 30,
                to: 70,
                max_interval: 50
        });
        $(".range_time24").ionRangeSlider({
                min: +moment().subtract(12, "hours").format("X"),
                max: +moment().format("X"),
                from: +moment().subtract(6, "hours").format("X"),
                grid: true,
                force_edges: true,
                prettify: function(num) {
                        var m = moment(num, "X");
                        return m.format("Do MMMM, HH:mm");
                }
        });

};

/* VALIDATOR */

function init_validator() {

        if (typeof(validator) === 'undefined') {
                return;
        }
        console.log('init_validator');

        // initialize the validator function
        validator.message.date = 'not a real date';

        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form').on('blur', 'input[required], input.optional, select.required', validator.checkField).on('change', 'select.required', validator.checkField).on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input',
        function() {
                validator.checkField.apply($(this).siblings().last()[0]);
        });

        $('form').submit(function(e) {
                e.preventDefault();
                var submit = true;

                // evaluate the form using generic validaing
                if (!validator.checkAll($(this))) {
                        submit = false;
                }

                if (submit) this.submit();

                return false;
        });

};

/* COMPOSE */

function init_compose() {

        if (typeof($.fn.slideToggle) === 'undefined') {
                return;
        }

        $('#compose, .compose-close').click(function() {
                $('.compose').slideToggle();
        });

};

/* ECHRTS */

function init_echarts() {

        if (typeof(echarts) === 'undefined') {
                return;
        }

        var theme = {
                color: ['#26B99A', '#34495E', '#BDC3C7', '#3498DB', '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'],

                title: {
                        itemGap: 8,
                        textStyle: {
                                fontWeight: 'normal',
                                color: '#408829'
                        }
                },

                dataRange: {
                        color: ['#1f610a', '#97b58d']
                },

                toolbox: {
                        color: ['#408829', '#408829', '#408829', '#408829']
                },

                tooltip: {
                        backgroundColor: 'rgba(0,0,0,0.5)',
                        axisPointer: {
                                type: 'line',
                                lineStyle: {
                                        color: '#408829',
                                        type: 'dashed'
                                },
                                crossStyle: {
                                        color: '#408829'
                                },
                                shadowStyle: {
                                        color: 'rgba(200,200,200,0.3)'
                                }
                        }
                },

                dataZoom: {
                        dataBackgroundColor: '#eee',
                        fillerColor: 'rgba(64,136,41,0.2)',
                        handleColor: '#408829'
                },
                grid: {
                        borderWidth: 0
                },

                categoryAxis: {
                        axisLine: {
                                lineStyle: {
                                        color: '#408829'
                                }
                        },
                        splitLine: {
                                lineStyle: {
                                        color: ['#eee']
                                }
                        }
                },

                valueAxis: {
                        axisLine: {
                                lineStyle: {
                                        color: '#408829'
                                }
                        },
                        splitArea: {
                                show: true,
                                areaStyle: {
                                        color: ['rgba(250,250,250,0.1)', 'rgba(200,200,200,0.1)']
                                }
                        },
                        splitLine: {
                                lineStyle: {
                                        color: ['#eee']
                                }
                        }
                },
                timeline: {
                        lineStyle: {
                                color: '#408829'
                        },
                        controlStyle: {
                                normal: {
                                        color: '#408829'
                                },
                                emphasis: {
                                        color: '#408829'
                                }
                        }
                },

                k: {
                        itemStyle: {
                                normal: {
                                        color: '#68a54a',
                                        color0: '#a9cba2',
                                        lineStyle: {
                                                width: 1,
                                                color: '#408829',
                                                color0: '#86b379'
                                        }
                                }
                        }
                },
                map: {
                        itemStyle: {
                                normal: {
                                        areaStyle: {
                                                color: '#ddd'
                                        },
                                        label: {
                                                textStyle: {
                                                        color: '#c12e34'
                                                }
                                        }
                                },
                                emphasis: {
                                        areaStyle: {
                                                color: '#99d2dd'
                                        },
                                        label: {
                                                textStyle: {
                                                        color: '#c12e34'
                                                }
                                        }
                                }
                        }
                },
                force: {
                        itemStyle: {
                                normal: {
                                        linkStyle: {
                                                strokeColor: '#408829'
                                        }
                                }
                        }
                },
                chord: {
                        padding: 4,
                        itemStyle: {
                                normal: {
                                        lineStyle: {
                                                width: 1,
                                                color: 'rgba(128, 128, 128, 0.5)'
                                        },
                                        chordStyle: {
                                                lineStyle: {
                                                        width: 1,
                                                        color: 'rgba(128, 128, 128, 0.5)'
                                                }
                                        }
                                },
                                emphasis: {
                                        lineStyle: {
                                                width: 1,
                                                color: 'rgba(128, 128, 128, 0.5)'
                                        },
                                        chordStyle: {
                                                lineStyle: {
                                                        width: 1,
                                                        color: 'rgba(128, 128, 128, 0.5)'
                                                }
                                        }
                                }
                        }
                },
                gauge: {
                        startAngle: 225,
                        endAngle: -45,
                        axisLine: {
                                show: true,
                                lineStyle: {
                                        color: [[0.2, '#86b379'], [0.8, '#68a54a'], [1, '#408829']],
                                        width: 8
                                }
                        },
                        axisTick: {
                                splitNumber: 10,
                                length: 12,
                                lineStyle: {
                                        color: 'auto'
                                }
                        },
                        axisLabel: {
                                textStyle: {
                                        color: 'auto'
                                }
                        },
                        splitLine: {
                                length: 18,
                                lineStyle: {
                                        color: 'auto'
                                }
                        },
                        pointer: {
                                length: '90%',
                                color: 'auto'
                        },
                        title: {
                                textStyle: {
                                        color: '#333'
                                }
                        },
                        detail: {
                                textStyle: {
                                        color: 'auto'
                                }
                        }
                },
                textStyle: {
                        fontFamily: 'Arial, Verdana, sans-serif'
                }
        };

        //echart Bar
        if ($('#mainb').length) {

                var echartBar = echarts.init(document.getElementById('mainb'), theme);

                echartBar.setOption({
                        title: {
                                text: '注册用户城市',
                                subtext: ''
                        },
                        tooltip: {
                                trigger: 'axis'
                        },
                        legend: {
                                x: '50%',
                                top: 'bottom',
                                data: ['2015', '2016']
                        },
                        toolbox: {
                                show: false
                        },
                        calculable: false,
                        xAxis: [{
                                type: 'category',
                                data: ['1?', '2?', '3?', '4?', '5?', '6?', '7?', '8?', '9?', '10?', '11?', '12?']
                        }],
                        yAxis: [{
                                type: 'value'
                        }],
                        series: [{
                                name: 'sales',
                                type: 'bar',
                                data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
                        }]
                });

        }

        if ($('#first_echart_bar_horizontal').length) {
                var echartBar = echarts.init(document.getElementById('first_echart_bar_horizontal'), theme);

                echartBar.setOption({
                        title: {
                                text: '用户使用时长分布(s)',
                                subtext: ''
                        },
                        tooltip: {
                                trigger: 'axis'
                        },
                        legend: {
                                x: '50%',
                                top: 'bottom',
                                data: ['2015', '2016']
                        },
                        calculable: true,
                        xAxis: [{
                                type: 'value',
                                boundaryGap: [0, 0.01]
                        }],
                        yAxis: [{
                                type: 'category',
                                data: ['0-5', '5-10', '10-15', '15-30', '30-60', '60-120', '120-180', '180-360', '360以上']
                        }],
                        series: [{
                                name: '2015',
                                type: 'bar',
                                data: [18203, 23489, 29034, 104970, 131744, 630230, 79034, 115340, 79034]
                        }
                        /*       				, {
            				  name: '2016',
            				  type: 'bar',
            				  data: [19325, 23438, 31000, 121594, 134141, 681807]
            				}*/
                        ]
                });

        }

        if ($('#second_echart_bar_horizontal').length) {

                var echartBar = echarts.init(document.getElementById('second_echart_bar_horizontal'), theme);

                echartBar.setOption({
                        title: {
                                text: '用户使用频次分布(次)',
                                subtext: ''
                        },
                        tooltip: {
                                trigger: 'axis'
                        },
                        legend: {
                                x: '50%',
                                top: 'bottom',
                                data: ['2015', '2016']
                        },
                        calculable: true,
                        xAxis: [{
                                type: 'value',
                                boundaryGap: [0, 0.01]
                        }],
                        yAxis: [{
                                type: 'category',
                                data: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
                        }],
                        series: [{
                                name: '2015',
                                type: 'bar',
                                data: [18203, 23489, 29034, 104970, 131744, 630230]
                        }]
                });
        }

        if ($('#echart_donut').length) {

                var echartDonut = echarts.init(document.getElementById('echart_donut'), theme);
                echartDonut.setOption({
                        title: {
                                text: '注册用户性别'
                        },
                        tooltip: {
                                trigger: 'item',
                                formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        calculable: true,
                        legend: {
                                x: 'center',
                                y: 'bottom',
                                data: ['男', '女']
                        },
                        series: [{
                                name: 'Access to the resource',
                                type: 'pie',
                                radius: ['35%', '55%'],
                                itemStyle: {
                                        normal: {
                                                label: {
                                                        show: true
                                                },
                                                labelLine: {
                                                        show: true
                                                }
                                        },
                                        emphasis: {
                                                label: {
                                                        show: true,
                                                        position: 'center',
                                                        textStyle: {
                                                                fontSize: '14',
                                                                fontWeight: 'normal'
                                                        }
                                                }
                                        }
                                },
                                data: [{
                                        value: 335,
                                        name: '男'
                                },
                                {
                                        value: 310,
                                        name: '女'
                                }]
                        }]
                });

        }

        if ($('#echart_line').length) {

                var echartLine = echarts.init(document.getElementById('echart_line'), theme);

                echartLine.setOption({
                        title: {
                                text: 'Line Graph',
                                subtext: 'Subtitle'
                        },
                        tooltip: {
                                trigger: 'axis'
                        },
                        legend: {
                                x: 220,
                                y: 40,
                                data: ['Intent', 'Pre-order', 'Deal']
                        },
                        toolbox: {
                                show: true,
                                feature: {
                                        magicType: {
                                                show: true,
                                                title: {
                                                        line: 'Line',
                                                        bar: 'Bar',
                                                        stack: 'Stack',
                                                        tiled: 'Tiled'
                                                },
                                                type: ['line', 'bar', 'stack', 'tiled']
                                        },
                                        restore: {
                                                show: true,
                                                title: "Restore"
                                        },
                                        saveAsImage: {
                                                show: true,
                                                title: "Save Image"
                                        }
                                }
                        },
                        calculable: true,
                        xAxis: [{
                                type: 'category',
                                boundaryGap: false,
                                data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                        }],
                        yAxis: [{
                                type: 'value'
                        }],
                        series: [{
                                name: 'Deal',
                                type: 'line',
                                smooth: true,
                                itemStyle: {
                                        normal: {
                                                areaStyle: {
                                                        type: 'default'
                                                }
                                        }
                                },
                                data: [10, 12, 21, 54, 260, 830, 710]
                        },
                        {
                                name: 'Pre-order',
                                type: 'line',
                                smooth: true,
                                itemStyle: {
                                        normal: {
                                                areaStyle: {
                                                        type: 'default'
                                                }
                                        }
                                },
                                data: [30, 182, 434, 791, 390, 30, 10]
                        },
                        {
                                name: 'Intent',
                                type: 'line',
                                smooth: true,
                                itemStyle: {
                                        normal: {
                                                areaStyle: {
                                                        type: 'default'
                                                }
                                        }
                                },
                                data: [1320, 1132, 601, 234, 120, 90, 20]
                        }]
                });

        }

        if ($('#echart_scatter').length) {

                var echartScatter = echarts.init(document.getElementById('echart_scatter'), theme);

                echartScatter.setOption({
                        title: {
                                text: 'Scatter Graph',
                                subtext: 'Heinz  2003'
                        },
                        tooltip: {
                                trigger: 'axis',
                                showDelay: 0,
                                axisPointer: {
                                        type: 'cross',
                                        lineStyle: {
                                                type: 'dashed',
                                                width: 1
                                        }
                                }
                        },
                        legend: {
                                data: ['Data2', 'Data1']
                        },
                        xAxis: [{
                                type: 'value',
                                scale: true,
                                axisLabel: {
                                        formatter: '{value} cm'
                                }
                        }],
                        yAxis: [{
                                type: 'value',
                                scale: true,
                                axisLabel: {
                                        formatter: '{value} kg'
                                }
                        }],
                        series: [{
                                itemStyle: {
                                        normal: {
                                                borderWidth: 4,
                                                label: {
                                                        show: true,
                                                        position: 'top',
                                                        textStyle: {
                                                                color: '#558ed0'
                                                        },
                                                        formatter: function(data) {
                                                                var v = data.value;
                                                                if (v[2] == 0) return '测试服务器'
                                                                else return v
                                                        }
                                                }
                                        }
                                },

                                name: 'Data1',
                                type: 'scatter',
                                tooltip: {
                                        trigger: 'item',
                                        formatter: function(params) {
                                                if (params.value.length > 1) {
                                                        return params.seriesName + ' :<br/>' + params.value[0] + 'cm ' + params.value[1] + 'kg ';
                                                } else {
                                                        return params.seriesName + ' :<br/>' + params.name + ' : ' + params.value + 'kg ';
                                                }
                                        }
                                },
                                data: [{
                                        value: [161.2, 51.6, 0],
                                        symbolSize: 40,
                                },
                                {
                                        value: [111.2, 41.6],
                                        symbolSize: 30,
                                },
                                {
                                        value: [91.2, 111.6],
                                        symbolSize: 20,
                                }

                                ],
                                /*            markPoint: {
          					data: [{
          				symbol:'circle',
          				symbolOffset:[0,'-80%'],
          					  type: 'max',
          					  name: 'Max'
          					}, {
          					  type: 'min',
          					  name: 'Min'
          					}]
          				  }*/

                        }]
                });

        }

        var convertData = function(data) {
                var res = [];
                for (var i = 0; i < data.length; i++) {
                        var geoCoord = geoCoordMap[data[i].name];
                        if (geoCoord) {
                                res.push({
                                        name: data[i].name,
                                        value: geoCoord.concat(data[i].value)
                                });
                        }
                }
                return res;

        };

        $.getJSON('js/china.json',
        function(chinaJson) {
                echarts.registerMap('desay', chinaJson);

                if ($('#echart_map').length) {
                        var echartMap = echarts.init(document.getElementById('echart_map'), theme);
                        var locations = [{
                                name: '上海市',
                                coord: [121.472644, 31.231706]
                        },
                        {
                                name: '北京市',
                                coord: [116.405285, 39.904989]
                        },
                        {
                                name: '广东省',
                                coord: [113.280637, 23.839463714285714]
                        }];
                        var currentLoc = 0;
                        echartMap.setOption({
                                zoom: 10,
                                title: {
                                        text: 'Map Graph',
                                        subtext: 'Heinz  2003'
                                },
                                tooltip: {
                                        trigger: 'axis',
                                        showDelay: 0,
                                        axisPointer: {
                                                type: 'cross',
                                                lineStyle: {
                                                        type: 'dashed',
                                                        width: 1
                                                }
                                        }
                                },
                                geo: {
                                        map: 'desay',
                                        roam: true,
                                        label: {
                                                normal: {
                                                        show: true
                                                },
                                                emphasis: {
                                                        show: false
                                                }
                                        }
                                },
                                series: [
                                /*             {
                    name: 'Data1',
                    type: 'map',
                    mapType: 'desay',
                    roam:true
                },*/

                                {
                                        name: 'pm2.5',
                                        type: 'scatter',
                                        coordinateSystem: 'geo',
                                        data: (function(data) {
                                                var res = [];
                                                Math.seed = 5;
                                                Math.seededRandom = function(max, min) {
                                                        max = max || 1;
                                                        min = min || 0;
                                                        Math.seed = (Math.seed * 9301 + 49297) % 233280;
                                                        var rnd = Math.seed / 233280.0;
                                                        return min + rnd * (max - min);
                                                }
                                                var geoCoord = geoCoordMap["上海"];
                                                for (var i = 0; i < 10; i++) {
                                                        var newGeo = [geoCoord[0] + Math.seededRandom( - 0.6, 0.6), geoCoord[1] + Math.seededRandom( - 0.4, 0.9)]
                                                        if (newGeo) {
                                                                res.push({
                                                                        name: "上海",
                                                                        value: newGeo.concat(Math.seededRandom(40, 100))
                                                                });
                                                        }
                                                }
                                                return res;

                                        })(data),
                                        symbolSize: function(val) {
                                                console.info(val)
                                                if(!val){
                                                return 0;
                                                }
                                                return val[2] / 10;
                                        },
                                        label: {
                                                normal: {
                                                        formatter: '{b}',
                                                        position: 'right',
                                                        show: false
                                                },
                                                emphasis: {
                                                        show: false
                                                }
                                        },
                                        itemStyle: {
                                                normal: {
                                                        color: 'purple'
                                                }
                                        }
                                }]
                        });

                         echartMap.setOption({
                                  series: [{
                                   center: locations[currentLoc].coord,
                                     zoom: 4,
                                  data:[
                                         {name: locations[currentLoc].name, selected: true}
                                    ],
                                       animationDurationUpdate: 1000,
                                      animationEasingUpdate: 'cubicInOut'
                                         }

                                ]
                    });
                }
        });

        /*                在此处之前添加图表*/

}

/*    INIT BOOTSTRAP TALBE*/
function init_talbes() {

        $('#tb_departments').bootstrapTable({
                ajax: function(request) {
                        $.ajax({
                                type: "GET",
                                url: "http://guessulike.config.58corp.com/gulrecomserviceweb/gulrecall/getscene",
                                contentType: "application/json;charset=utf-8",
                                dataType: "jsonp",
                                data: '',
                                jsonp: 'callback',
                                timeout: 1000,
                                success: function(msg) {
                                        console.log("正确");
                                        request.success({
                                                row: msg
                                        });
                                        $('#tb_departments').bootstrapTable('load', msg);
                                },
                                error: function() {
                                        console.log("错误");
                                        var test = [{
                                                "field1": "男",
                                                "field2": "12434",
                                                "field3": "354",
                                                "field4": "335",
                                                "field5": "889",
                                                "field6": "99"
                                        },
                                        {
                                                "field1": "女",
                                                "field2": "5456",
                                                "field3": "758",
                                                "field4": "452",
                                                "field5": "7888",
                                                "field6": "23"
                                        },
                                        {
                                                "field1": "其他",
                                                "field2": "5456",
                                                "field3": "758",
                                                "field4": "452",
                                                "field5": "7888",
                                                "field6": "23"
                                        },
                                        ];
                                        request.success({
                                                row: test
                                        });
                                        $('#tb_departments').bootstrapTable('load', test);
                                }
                        });
                },

                /*toolbar:'#toolbar',*/
                cache: false,
                singleSelect: true,
                clickToSelect: true,
                sortName: "create_time",
                sortOrder: "desc",
                pageSize: 15,
                pageNumber: 1,
                pageList: "[10, 25, 50, 100, All]",
                /*		showToggle: true,*/
                /*		showRefresh: true,*/
                /*		showColumns: true,*/
                /*	search: true,*/
                /*		pagination: true,*/
                columns: [{
                        field: "field1",
                        title: '性别'
                },
                {
                        field: "field2",
                        title: '用户量'
                },
                {
                        field: "field3",
                        title: '总访问时长(分)'
                },
                {
                        field: "field4",
                        title: '平均访问时长(分)'
                },
                {
                        field: "field5",
                        title: '平均日访问次数'
                },
                {
                        field: "field6",
                        title: '平均次访问页面数量'
                }],
        });
}

$(document).ready(function() {

        init_sparklines();
        init_flot_chart();
        init_sidebar();
        init_wysiwyg();
        init_InputMask();
        init_JQVmap();
        init_cropper();
        /*		init_knob();
		init_IonRangeSlider();
		init_ColorPicker();
		init_TagsInput();
		init_parsley();
		init_daterangepicker();
		init_daterangepicker_right();
		init_daterangepicker_single_call();
		init_daterangepicker_reservation();
		init_SmartWizard();
		init_EasyPieChart();*/
        /*		init_charts();*/
        init_echarts();
        /*		init_morris_charts();*/
        /*		init_skycons();*/
        /*		init_select2();*/
        init_validator();
        /*		init_DataTables();*/
        init_chart_doughnut();
        init_gauge();
        /*		init_PNotify();*/
        init_starrr();
        /*		init_calendar();*/
        init_compose();
        /*		init_CustomNotification();*/
        init_autosize();
        init_autocomplete();
        init_talbes();
});