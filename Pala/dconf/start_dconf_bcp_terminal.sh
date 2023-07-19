#!/bin/bash

filename="${REPO_PATH}/NMall/Pala/dconf/start_dconf_bcp_terminal.sh"
arg1=$1
root_dir="$(dirname ${filename})"

if [ "${arg1}" == "bcp" ]; then
    dconf dump /org/mate/terminal/ >"${root_dir}"/cur_mate_terminal_cofig.cnf
elif [ "${arg1}" == "dpl" ]; then
    dconf load /org/mate/terminal/ <"${root_dir}"/cur_mate_terminal_cofig.cnf
else
    plt_exit "\$1=${arg1} not bcp or dpl"
    return 1
fi
