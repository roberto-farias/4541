    # Garantindo os hosts
    HOSTS=$(head -n6 /etc/hosts)
    echo -e "$HOSTS" > /etc/hosts
    echo '172.27.11.10 master' >> /etc/hosts
    echo '172.27.11.20 node1' >> /etc/hosts
    echo '172.27.11.30 node2' >> /etc/hosts
    echo '172.27.11.40 balancer nginx.dexter.com.br nginx1.dexter.com.br nginx2.dexter.com.br' >> /etc/hosts
