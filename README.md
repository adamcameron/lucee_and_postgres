# A Lucee container and a PostgreSQL container setup

Installation:

```
# start from your `lucee_and_postgres` directory.

$ pwd
/mnt/c/src/containers/lucee_and_postgres/


$ cd docker


$ # ./rebuildContainers.sh [lucee admin password] [DB password]
$ # EG:


$ ./rebuildContainers.sh 12345 123


# [let it run to completion]
# ⠿ Network lucee_and_postgres_backend       Created          0.0s
# ⠿ Volume "lucee_and_postgres_postgresData"  Created          0.0s
# ⠿ Container lucee_and_postgres_lucee_1     Started          2.0s
# ⠿ Container lucee_and_postgres_postgres_1   Started          1.9s


$ docker exec --interactive --tty lucee_and_postgres_lucee_1 /bin/bash


/var/www# box install


# [let it run to completion]
#  √ | Installing ALL dependencies
#    | √ | Installing package [forgebox:testbox@^4.2.1+400]
#    |   | √ | Installing package [forgebox:cbstreams@^1.5.0]
#    |   | √ | Installing package [forgebox:mockdatacfc@^3.3.0+22]


/var/www# box testbox run


# [let it run to completion]
# =================================================================================
# Final Stats
# =================================================================================
#  
# [Passed: 2] [Failed: 0] [Errors: 0] [Skipped: 0] [Bundles/Suites/Specs: 2/2/2]
#  
# TestBox:        v4.5.0+5
# Duration:       133 ms
# CFML Engine:    Lucee 5.3.8.206
# Labels:         None
