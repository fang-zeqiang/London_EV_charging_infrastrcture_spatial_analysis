cd /Users/fangzeqiang/Github/Hereislittlemushroom.github.io/
# 删除该目录下所有文件与目录
rm -rf *

# cd /Users/fangzeqiang/Github/Hereislittlemushroom.github.io
# 删除这个目录下所有文件与目录
# rm -rf *

# cd /Users/fangzeqiang/Coding/fzqblog
# 打包（even是主题，用户根据自己主题名具体操作）
# hugo -t even 

# 进入book render后存放index.html页面
# cd /Users/fangzeqiang/Github/Hereislittlemushroom.github.io/tutorial_bookdown/
# 复制/_book/下所有的文件与目录到/public/
cd /Users/fangzeqiang/Github/Hereislittlemushroom.github.io/
cp -r /Users/fangzeqiang/Github/tutorial_bookdown/_book/ .

# 将public目录下的文件和目录复制到新目录下
# cp -r /Users/fangzeqiang/Coding/fzqblog/public/ /Users/fangzeqiang/Github/Hereislittlemushroom.github.io

cd /Users/fangzeqiang/Github/Hereislittlemushroom.github.io/

# ref to https://bookdown.org/yihui/bookdown/github.html
touch .nojekyll
# Add changes to git | 创建git命令
# -A 表示所有内容
git init
git add -A 

# Commit changes | 添加允许此次变更的说明
msg="building site `date`"
git commit -m "$msg"

# 推送到github
git push -f git@github.com:Hereislittlemushroom/Hereislittlemushroom.github.io.git master