source '.env' && sh -c "
    cd ethereum-etl-postgres &&
    cat schema/*.sql indexes/*.sql | PGPASSWORD=$db_pass psql -U $db_user -d $db_name -h $db_host  --port $db_port -a
"