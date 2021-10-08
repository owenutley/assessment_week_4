# ///////////////////// EXTRA CREDIT \\\\\\\\\\\\\\\\\\\\ #

# I was having challenges running both files at once on the same page so I just made a new file
log_file = open("um-server-01.txt")

def sales_reports_10melon(log_file):
    for line in log_file:
        line = line.rstrip()
        count = line[16:18]
        count = count.rstrip()
        if int(count) > 10:
            print(line)


sales_reports_10melon(log_file)