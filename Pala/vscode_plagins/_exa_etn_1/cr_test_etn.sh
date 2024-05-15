#!/bin/bash

rm -fr  ${PATH_CURR_REPO}/NMall/Pala/vscode_plagins/_exa/work_dir/testytest

code ${PATH_CURR_REPO}/NMall/Pala/vscode_plagins/_exa/work_dir

cd ${PATH_CURR_REPO}/NMall/Pala/vscode_plagins/_exa/work_dir || plt_exit "not dir: ${PATH_CURR_REPO}/NMall/Pala/vscode_plagins/_exa/work_dir"

npx -p yo -p generator-code yo code
 
# ? What type of extension do you want to create? New Extension (JavaScript)
# ? What's the name of your extension? testytest
# ? What's the identifier of your extension? testytest
# ? What's the description of your extension? This is a test extension
# ? Enable JavaScript type checking in 'jsconfig.json'? Yes
# ? Initialize a git repository? Yes
# ? Which package manager to use? npm

