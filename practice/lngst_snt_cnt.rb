sentc_arr = open("filename.txt") { |file| file.read.split(/(\.|\!|\?)\s/) }
snt_wrds_arr = sentc_arr.map { |sentc| sentc.split }
p longst_cnt = snt_wrds_arr.map { |wrds| wrds.count }.sort[-1]
