// 열차트(지점별 매출액)
google.charts.load('current', {'packages':['bar'],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['월', '서면점', '부산역점', '해운대점'],
    ['2월', 100000000, 40000000, 20000000],
    ['3월', 11700000, 46000000, 25000000],
    ['4월', 66000000, 112000000, 30000000],
    ['5월', 103000000, 54000000, 35000000]
  ]);

  var options = {
    chart: {
      title: '지점별 월 매출액' }
  };

  var chart = new google.charts.Bar(document.getElementById('month_brc_sales'));
  chart.draw(data, google.charts.Bar.convertOptions(options));
};

// 열차트(지점별 인기차량) // 지점별 인기차량 열차트 표현불가
google.charts.load('current', {'packages':['bar'],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart2);

function drawChart2() {
  var data = google.visualization.arrayToDataTable([
    ['지점', 'model1', 'model2', 'model3'],
    ['서면점', 3, 5, 1],
    ['부산역점', 6, 8, 1],
    ['해운대점', 9, 2, 1],
    ['범내골점', 3, 5, 1]
 ]);

  var options = {
    chart: {
      title: '지점별 인기 차량'
   }
  };
  var chart = new google.charts.Bar(document.getElementById('brc_popular_model'));
  chart.draw(data, google.charts.Bar.convertOptions(options));
};

// 열차트(월별 렌트수)
google.charts.load('current', {'packages':['bar'],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart3);

function drawChart3() {
  var data = google.visualization.arrayToDataTable([
    ['월', '렌트 수'],
    ['1월', 100],
    ['2월', 200],
    ['3월', 300],
    ['4월', 400]
 ]);

  var options = {
    chart: {
      title: '월별 렌트량'
   }
  };
  var chart = new google.charts.Bar(document.getElementById('month_rental_count'));
  chart.draw(data, google.charts.Bar.convertOptions(options));
};

// 도넛차트(차량 상태)
google.charts.load("current", {packages:["corechart"],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart4);
function drawChart4() {
  var data = google.visualization.arrayToDataTable([
    ['car_status', 'car_status'],
    ['대여중',     11],
    ['대여가능',      2],
    ['정비중',  2]
  ]);

  var options = {
    title: '차량 상태',
    pieHole: 0.4,
  };

  var chart = new google.visualization.PieChart(document.getElementById('car_status'));
  chart.draw(data, options);
}

// 도넛차트(차 종별 렌트수)
google.charts.load("current", {packages:["corechart"],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart5);
function drawChart5() {
  var data = google.visualization.arrayToDataTable([
    ['car_type', 'car_rent_count'],
    ['경형',     11],
    ['소형',     11],
    ['준중형',      2],
    ['중형',      2],
    ['대형',      2],
    ['SUV',      2],
    ['기타',      2]
  ]);

  var options = {
    title: '차 종별 렌트수',
    pieHole: 0.4,
  };

  var chart = new google.visualization.PieChart(document.getElementById('car_type_rent'));
  chart.draw(data, options);
}

// 도넛차트(연령별 인기차량) // 차량 모델은 원형으로 표현 불가
google.charts.load("current", {packages:["corechart"],'language': 'ko'});
google.charts.setOnLoadCallback(drawChart6);
function drawChart6() {
  var data = google.visualization.arrayToDataTable([
    ['age', 'car_rent_count'],
    ['10',     11],
    ['20',      2],
    ['30',      2],
    ['40',      2],
    ['50',      2],
    ['60',      2],
    ['기타',      2]
  ]);

  var options = {
    title: '이용자 연령대',
    pieHole: 0.4,
  };

  var chart = new google.visualization.PieChart(document.getElementById('age_popular_model'));
  chart.draw(data, options);
}