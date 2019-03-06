//设置窗口标题
@ECHO OFF@PUSHD %~DP0 &TITLE Git 仓库代码管理


git add .
git commit -m "update"
git push origin