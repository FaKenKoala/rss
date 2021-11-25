#!/bin/bash 

# 规范化提交：conventional commit
# 1. 安装 `node`:
brew install node

# 2. 安装 [`commitlint`](https://github.com/conventional-changelog/commitlint):
npm install @commitlint/{cli,config-conventional} --save-dev

# 3. 导出 commitlint/config-conventional:
echo "                  
module.exports = {                               
    extends: ['@commitlint/config-conventional'],
};                       
" >> commitlint.config.js

# 4. 安装 [`husky`](https://github.com/typicode/husky):
npm install husky --save-dev

# 5. 设置 husky的git hooks:
npx husky install

# 6. 添加prepare-commit-msg的hook，使得提交命令时git commit, 会使用git cz命令替换:
npx husky add .husky/prepare-commit-msg "exec < /dev/tty && git cz --hook || true"

# 7. 添加commit-msg的hook，使用commitlint来检查提交的信息:
npx husky add .husky/commit-msg 'npx --no-install commitlint --edit $1'

# 8. 安装 [`commitizen`](https://github.com/commitizen/cz-cli):
npm install commitizen -g

# 9. initialize your project to use the cz-conventional-changelog adapter by typing:
commitizen init cz-conventional-changelog --save-dev --save-exact

# 10. 最后, 使用 `git commit` 或者 `cz` 或者 `cz commit` 或者 `git cz` 或者 `git-dz` 来 规范化提交代码.

# 11. 生成的相关文件不放到版本控制
cat <<EOT >> .gitignore
# 规范化提交不要放到版本控制里面
.husky/
node_modules/
commitlint.config.js
package-lock.json
package.json
EOT