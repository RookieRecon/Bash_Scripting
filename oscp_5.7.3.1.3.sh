#oscp exercise looking for javascript files

#!/bin/bash

echo "Enter the filepath"
read filepath

if [ -z "$filepath" ]
then
        echo "************************************"
        echo "File path field is empty"
        echo "************************************"
else
        if [ -e $filepath ]
        then
                if [ -f $filepath ]
                then
                        cat $filepath | grep -i ".js" | cut -d "/" -f5 | sort | uniq | cut -d " " -f1 > ./javascript-files
                        echo "************************************"
                        if [ -s ./javascript-files ]
                        then
                                echo "******Javascript files found******"
                                cat ./javascript-files
                        else
                                echo "******No Javascript files found******"
                        fi
                elif [ -d $filepath ]
                then
                        echo "************************************"
                        echo "Its a directory, nothing to do"
                        echo "************************************"
                else
                        echo "************************************"
                        echo "Unable to identify the file type"
                        echo "************************************"
                fi
        else
                echo "******Invalid file path**************"
        fi

fi
rm -rf ./1
rm -rf ./javascript-files

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#!/bin/bash

echo "Enter the filepath"
read filepath

if [ -z "$filepath" ]
then
        echo "*********************************************"
        echo "File path field is empty"
else
        if [ -f $filepath ]
        then
                echo "********Looking for JavaScript files*******"
                sleep 0.5
                cat $filepath | grep -i "js" | cut -d "/" -f5 | cut -d " " -f1 | sort |uniq > ./javascript_files
                if [ -s ./javascript_files ]
                then
                        cat ./javascript_files
                else
                        echo "*******No javascript files found**********"
                fi
        elif [ -d $filepath ]
        then
                echo "*************************************"
                echo "its a directory, nothing can be done"
        elif [ -e $filepath ]
        then
                echo "*************************************"
                echo "Unable to identify the file type"
        else
                echo "*************************************"
                echo "File not found"
        fi
fi
rm -rf ./javascript_files
rm -rf ./1
