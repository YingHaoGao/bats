rem call cnpm install babel webpack webpack-dev-server -g
rem call cnpm init -yes
rem call cnpm install react react-dom --save
rem call cnpm install babel-loader babel-core babel-preset-react babel-preset-latest --save
echo module.exports = {entry: './main.js',output: {path: '/',filename: 'index.js'},devServer: {inline: true,port: 3333},module: {loaders: [{test: /\.js$/,exclude: /node_modules/,loader: 'babel-loader',query: {presets: ['react', 'latest']}}]}}>webpack.config.js
echo ^<^!DOCTYPE html^>^<html^>^<head^>^<meta charset="UTF-8"^>^<title^>React Hello World^</title^>^</head^>^<body^>^<div id="app"^>^</div^>^<script src="index.js"^>^</script^>^</body^>^</html^>>index.html
echo import React from 'react';class App extends React.Component {render() {return ^<div^>Hello World^!^</div^>}}export default App>App.js
echo import React from 'react';import ReactDOM from 'react-dom';import App from './App';ReactDOM.render(^<App /^>, document.getElementById('app'));>main.js
rem 配置 npm scripts, 编辑 package.json，在"scripts"属性处添加一行："scripts": { "start": "webpack-dev-server" }
pause
cnpm start