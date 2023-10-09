#!/bin/bash
dir="${PATH_CURR_REPO}/NMall/Repono"
loc="${HOME}/LocalSites"

cd "${dir}" || {
    plt_exit "NOT DIR: ${dir}"
    return 1
}

for item in *; do
    echo "${item}"
    if [ -d "${item}" ]; then

       ehh cp -r "${item}" "$loc"
        cd_e "$loc"/"${item}"
        plt_pause "1"
        # untar "${item}"
    fi

done

# tar -C ~/LocalSites/ -xvf starlette.io.tar.gz
