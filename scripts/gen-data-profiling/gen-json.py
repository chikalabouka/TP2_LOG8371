import sys
import json

size = sys.argv[1]
print("requested size : {} Bytes".format(size))
data = dict()
tmp = ""
for i in range(int(size)-27-192-167):
    tmp += "1"

data["test"] = tmp

with open("test-file-{}-o.json".format(size), 'w') as file:
    file.write('{"index": {}}\n')
    json.dump(data, file)
    file.write('\n')