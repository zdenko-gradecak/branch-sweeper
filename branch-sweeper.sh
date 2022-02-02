#!/bin/bash

while read -r -u 3 branch_name
do
    read -n 1 -p "Delete branch $branch_name? [y/N] : " answer
        case ${answer:0:1} in
            y|Y )
                printf "\n\e[32m ✔ "
                git branch -D $branch_name
                printf "\e[0m"
            ;;
            * )
                printf "\n\e[33m ✕ Keeping the branch $branch_name\e[0m\n"
            ;;
        esac
done 3<<<$(git branch)
