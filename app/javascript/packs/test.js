$(function() {
  console.log("OK");
});
$(function(){
  
  // canvasの背景を塗りつぶす設定（下部の★で参照する）
  function drawBackground(target) {
    // 範囲を設定
    var xscale = target.scales["x-axis-0"];
    var yscale = target.scales["y-axis-0"];
    var left = xscale.getPixelForValue(1985);  // 塗りつぶしを開始するラベル位置
    var right = xscale.getPixelForValue(1990); // 塗りつぶしを終了するラベル位置
    var top = yscale.top;                      // 塗りつぶしの基点（上端）
    
    // 塗りつぶす長方形の設定
    ctx2.fillStyle = "rgba(0, 0, 255, 0.2)";
    ctx2.fillRect(left, top, right - left, yscale.height);
  }

  // グラフ描画
  var ctx2 = $('#chart')[0].getContext('2d');
  var chart = new Chart(ctx2, {
    type: 'line',
    data: {
      labels: [1983, 1984, 1985, 1986, 1987, 1989, 1990, 1991, 1992, 1993],
      datasets: [{
        data: [10, 0, 30, 92, 50, 60, 70, 80, 10, 30],
      }],
    },
    options: {
      animation: false,
    },
    plugins: [{
        beforeDraw: drawBackground // ★
    }],
  });
});