# line 3 will access and open a file in the folder named "um-server-01.txt"
# it will save the file into a new variable called log_file
log_file = open("um-server-01.txt")

# line 7 is the opening of a function in python named sales_reports
# the function will take in a parameter titled log_file
def sales_reports(log_file):
    #line 9 is the initiation of a loop that will access one line at a time in our file
    for line in log_file:
        #line 11 will remove any blank characters or spaces at the end of each line
        line = line.rstrip()
        # line 13 is a new list storing the first three characters our line (day of week)
        day = line[0:3]
        # line 15 and 16 are am if statement that will print all lines that are associates with tuesday (changed to monday)
        if day == "Mon":
            print(line)

# line 20 invokes the function or makes the function run
# uses our variable log_file as the argument for the log_file parameter
sales_reports(log_file)


# ///////////////////// EXTRA CREDIT \\\\\\\\\\\\\\\\\\\\ #

# I don't know why but I wasn't able to run this the way I have run python before
# So i ran it in the bash terminal using the command python process.py
# I don't know if it's just a vscode problem I have or if it is something in my code


def sales_reports_10melon(log_file):
    for line in log_file:
        line = line.rstrip()
        count = line[16:18]
        count = count.rstrip()
        if int(count) > 10:
            print(line)


sales_reports_10melon(log_file)

