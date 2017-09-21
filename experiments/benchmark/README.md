./presto-cli-0.183-executable.jar --server presto-3:8002 --catalog hive
./presto-benchmark-driver-0.183-executable.jar --server presto-3:8002 --catalog hive --schema default --runs 10 > result.tsv