grep -E '^[a-zA-Z]' /etc/services | awk '{print $1}' | sort -u > ~/uniqueservices.txt && wc -l ~/uniqueservices.txt
