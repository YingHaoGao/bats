call cnpm install webpack -g
@ echo var path = require('path');module.exports = {entry: "./src/main.js",output: {path: __dirname,filename: "bundle.js"},module: {loaders: [{test: path.join(__dirname, 'es6'),loader: 'babel-loader',query: {presets: ['es2015']}}]}}>webpack.config.js
call cnpm install babel-loader --save-dev
call cnpm install babel-preset-es2015 --save-dev
md src
cd src
type nul>main.js
cd ../
echo ^<^!DOCTYPE html^>^<html^>^<head^>^<meta charset="UTF-8"^>^<title^>Document^</title^>^</head^>^<body^>^<script src="bundle.js"^>^</script^>^</body^>^</html^>>index.html
webpack --watch
cmd /k