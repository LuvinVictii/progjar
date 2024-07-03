echo "Killing server and clearing logs"

rm ./nohup.out

# Find and kill all processes that match the pattern
ps aux | grep file_server | grep -v grep | awk '{print $2}' | xargs kill -9