window.NAV_ACTIVE = '';

var grid = document.getElementById('mintmarksGrid');
for (var i = 1; i <= 21; i++) {
    var num = i < 10 ? '0' + i : '' + i;
    var wrap = document.createElement('div');
    wrap.className = 'mintmark-img';
    var img = document.createElement('img');
    img.src = 'images/Black/B' + num + '.png';
    img.alt = 'Mint Mark ' + num;
    img.loading = 'lazy';
    wrap.appendChild(img);
    grid.appendChild(wrap);
}
