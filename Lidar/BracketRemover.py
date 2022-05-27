
data = open("smallbox.txt", "r").read().replace("[","").replace("]","")
output = open("smallbox.txt", "w")
output.write(data)
