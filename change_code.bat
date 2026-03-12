@echo off

cd js

echo ========================================
echo  JS Obfuscator - Batch Processor
echo ========================================

call javascript-obfuscator coin-catalog.js --compact true --debug-protection true

call javascript-obfuscator commemorative.js --compact true --debug-protection true --numbers-to-expressions true --rename-properties true --string-array true --string-array-encoding base64

call javascript-obfuscator Commemorative_Coin_1_Rupee.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_2_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_5_Paise.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_5_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_10_Paise.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_10_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_20_Paise.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_25_Paise.js --compact true --debug-protection true

call javascript-obfuscator Commemorative_Coin_50_Paise.js --compact true --debug-protection true

call javascript-obfuscator def-catalog.js --compact true --debug-protection true

call javascript-obfuscator definitive.js --compact true --debug-protection true --numbers-to-expressions true --rename-properties true --string-array true --string-array-encoding base64

call javascript-obfuscator Definitive_Coin_1_BY_2_Rupee.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_1_BY_4_Rupee.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_1_Naya_Paisa.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_1_Paisa.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_1_Rupee.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_2_Naye_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_2_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_2_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_3_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_5_Naye_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_5_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_5_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_10_Naye_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_10_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_10_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_20_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_20_Rupees.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_25_Naye_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_25_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_50_Naye_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_50_Paise.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_Half_Anna.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_One_Anna.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_One_Pice.js --compact true --debug-protection true

call javascript-obfuscator Definitive_Coin_Two_Annas.js --compact true --debug-protection true

call javascript-obfuscator index.js --compact true --debug-protection true --numbers-to-expressions true --rename-properties true --string-array true --string-array-encoding base64

call javascript-obfuscator mint-marks.js --compact true --debug-protection true --numbers-to-expressions true --rename-properties true --string-array true --string-array-encoding base64

call javascript-obfuscator site-chrome.js --compact true --debug-protection true --numbers-to-expressions true --rename-properties true --string-array true --string-array-encoding base64

move /y coin-catalog-obfuscated.js coin-catalog.js
move /y commemorative-obfuscated.js commemorative.js
move /y Commemorative_Coin_1_Rupee-obfuscated.js Commemorative_Coin_1_Rupee.js
move /y Commemorative_Coin_2_Rupees-obfuscated.js Commemorative_Coin_2_Rupees.js
move /y Commemorative_Coin_5_Paise-obfuscated.js Commemorative_Coin_5_Paise.js
move /y Commemorative_Coin_5_Rupees-obfuscated.js Commemorative_Coin_5_Rupees.js
move /y Commemorative_Coin_10_Paise-obfuscated.js Commemorative_Coin_10_Paise.js
move /y Commemorative_Coin_10_Rupees-obfuscated.js Commemorative_Coin_10_Rupees.js
move /y Commemorative_Coin_20_Paise-obfuscated.js Commemorative_Coin_20_Paise.js
move /y Commemorative_Coin_25_Paise-obfuscated.js Commemorative_Coin_25_Paise.js
move /y Commemorative_Coin_50_Paise-obfuscated.js Commemorative_Coin_50_Paise.js
move /y def-catalog-obfuscated.js def-catalog.js
move /y definitive-obfuscated.js definitive.js
move /y Definitive_Coin_1_BY_2_Rupee-obfuscated.js Definitive_Coin_1_BY_2_Rupee.js
move /y Definitive_Coin_1_BY_4_Rupee-obfuscated.js Definitive_Coin_1_BY_4_Rupee.js
move /y Definitive_Coin_1_Naya_Paisa-obfuscated.js Definitive_Coin_1_Naya_Paisa.js
move /y Definitive_Coin_1_Paisa-obfuscated.js Definitive_Coin_1_Paisa.js
move /y Definitive_Coin_1_Rupee-obfuscated.js Definitive_Coin_1_Rupee.js
move /y Definitive_Coin_2_Naye_Paise-obfuscated.js Definitive_Coin_2_Naye_Paise.js
move /y Definitive_Coin_2_Paise-obfuscated.js Definitive_Coin_2_Paise.js
move /y Definitive_Coin_2_Rupees-obfuscated.js Definitive_Coin_2_Rupees.js
move /y Definitive_Coin_3_Paise-obfuscated.js Definitive_Coin_3_Paise.js
move /y Definitive_Coin_5_Naye_Paise-obfuscated.js Definitive_Coin_5_Naye_Paise.js
move /y Definitive_Coin_5_Paise-obfuscated.js Definitive_Coin_5_Paise.js
move /y Definitive_Coin_5_Rupees-obfuscated.js Definitive_Coin_5_Rupees.js
move /y Definitive_Coin_10_Naye_Paise-obfuscated.js Definitive_Coin_10_Naye_Paise.js
move /y Definitive_Coin_10_Paise-obfuscated.js Definitive_Coin_10_Paise.js
move /y Definitive_Coin_10_Rupees-obfuscated.js Definitive_Coin_10_Rupees.js
move /y Definitive_Coin_20_Paise-obfuscated.js Definitive_Coin_20_Paise.js
move /y Definitive_Coin_20_Rupees-obfuscated.js Definitive_Coin_20_Rupees.js
move /y Definitive_Coin_25_Naye_Paise-obfuscated.js Definitive_Coin_25_Naye_Paise.js
move /y Definitive_Coin_25_Paise-obfuscated.js Definitive_Coin_25_Paise.js
move /y Definitive_Coin_50_Naye_Paise-obfuscated.js Definitive_Coin_50_Naye_Paise.js
move /y Definitive_Coin_50_Paise-obfuscated.js Definitive_Coin_50_Paise.js
move /y Definitive_Coin_Half_Anna-obfuscated.js Definitive_Coin_Half_Anna.js
move /y Definitive_Coin_One_Anna-obfuscated.js Definitive_Coin_One_Anna.js
move /y Definitive_Coin_One_Pice-obfuscated.js Definitive_Coin_One_Pice.js
move /y Definitive_Coin_Two_Annas-obfuscated.js Definitive_Coin_Two_Annas.js
move /y index-obfuscated.js index.js
move /y mint-marks-obfuscated.js mint-marks.js
move /y site-chrome-obfuscated.js site-chrome.js


echo ========================================
echo  cleancss Processor
echo ========================================
cd ..
cd css
call cleancss style.css -o style_change.css
move /y style_change.css style.css

cd ..

echo ========================================
echo  HTML Minifier Processor
echo ========================================
call html-minifier-terser coin-anatomy.html --output coin-anatomy.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser coin-catalog.html --output coin-catalog.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser coin-grades.html --output coin-grades.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser coin-guide.html --output coin-guide.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser coin-mints.html --output coin-mints.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser coin-rarity.html --output coin-rarity.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser commemorative.html --output commemorative.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser def-catalog.html --output def-catalog.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser definitive.html --output definitive.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser disclaimer.html --output disclaimer.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser guides.html --output guides.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser index.html --output index.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser mint-marks.html --output mint-marks.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser privacy.html --output privacy.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser sitemap.html --output sitemap.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true
call html-minifier-terser terms.html --output terms.mini.html --collapse-whitespace --remove-comments --remove-attribute-quotes --minify-js true --minify-css true

move /y coin-anatomy.mini.html coin-anatomy.html
move /y coin-catalog.mini.html coin-catalog.html
move /y coin-grades.mini.html coin-grades.html
move /y coin-guide.mini.html coin-guide.html
move /y coin-mints.mini.html coin-mints.html
move /y coin-rarity.mini.html coin-rarity.html
move /y commemorative.mini.html commemorative.html
move /y def-catalog.mini.html def-catalog.html
move /y definitive.mini.html definitive.html
move /y disclaimer.mini.html disclaimer.html
move /y guides.mini.html guides.html
move /y index.mini.html index.html
move /y mint-marks.mini.html mint-marks.html
move /y privacy.mini.html privacy.html
move /y sitemap.mini.html sitemap.html
move /y terms.mini.html terms.html
