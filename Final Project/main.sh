#! /usr/bin/bash

dir="/home/nadarabea/FinalProject"


function Drop() {
        read -p "Enter Name of DB you want to drop: " drop
        if [ -d "$dir/$drop" ]
        then
                read -p "Are you Sure? (Y | N) " ans
                if [ $ans == "Y" ] || [ $ans == "y" ]
                then
                        rm -R $dir/$drop
                        echo "Drop $drop DB"
                fi

        else
                echo NO Found DB!
        fi
}




select choice in "Create DB" "List DB" "Connect DB" "Drop DB" ;do
        case $choice in
                "Create DB") CreateDB
                        ;;
                "List DB")  List
                        ;;
                "Connect DB")  Connect
                        ;;
                "Drop DB")  Drop
                        ;;
                *)exit
        esac
done

~                                                                                                                             
~                                                                                                                             
~