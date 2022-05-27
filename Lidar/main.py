
data = open("box.txt", "r").read().replace("-","")
output = open("box.txt", "w")
output.write(data)
