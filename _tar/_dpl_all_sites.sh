#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_589155d965() {
    local filename=${PATH_CURR_REPO}/NMall/_tar/_dpl_all_sites.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir=$(pwd)
    local rdir="$(prs_f -d $filename)"
    local gname="$(prs_f -n $filename)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    local dir_589155d965="${PATH_CURR_REPO}/NMall/_tar"
    local loc_589155d965="${HOME}/LocalSites"

    cp -rvpu "${dir_589155d965}/." "${loc_589155d965}"

    cd "${loc_589155d965}" || {
        plt_exit "NOT DIR: ${loc_589155d965}"
        return 1
    }

    for item_589155d965 in $(ls ${loc_589155d965}); do
        local full_item_589155d965="${loc_589155d965}/${item_589155d965}"
        echo -e "${GREEN}\$full_item_589155d965 = $full_item_589155d965${NORMAL}" #print variable

        if [ -d "${full_item_589155d965}" ] && [ -e "${full_item_589155d965}"/${item_589155d965}00 ]; then

            wrp2_ cd --_xxd "${full_item_589155d965}"
            plt_pause "do it? : untar -u ${item_589155d965}"
            wrp2_ untar -u "${item_589155d965}" --_cnd "${item_589155d965}"
            wrp2_ cp -r --_xxd "${full_item_589155d965}/${item_589155d965}"/. --_cnd "${loc_589155d965}"/site."${item_589155d965}"
        fi

        if [ -f "${full_item_589155d965}" ] && [ "gz" == "$(prs_f -e "${full_item_589155d965}")" ]; then

            wrp2_ cd "${loc_589155d965}"
            local name_site_589155d965
            name_site_589155d965="site.$(prs_f -n "$(prs_f -n "${item_589155d965}")")"
            wrp2_ mkdir --_cnd "${name_site_589155d965}"
            
            echo -e "${HLIGHT}--- is_d_empty "${name_site_589155d965}" ---${NORMAL}" #start files
            if is_d_empty "${name_site_589155d965}"; then
                plt_pause "tar -C --_xxd ${name_site_589155d965} -xvf --_xxf ${full_item_589155d965}"
                wrp2_ tar -C --_xxd "${name_site_589155d965}" -xvf --_xxf "${full_item_589155d965}"
            fi
        fi

    done
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_589155d965 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_589155d965
