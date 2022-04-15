function _up_complete
    set --local p (string trim --chars=/ (dirname $PWD) | string split /)

    for d in $p
        echo $d
    end
end

complete -c up -fa "(_up_complete)"
