if cat '.gitignore' | grep "commit_push" > /dev/null
		then
		    echo "域名为$input_domain已存在"
		    domain_flag=''
		    
	fi
