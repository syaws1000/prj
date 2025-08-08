from a11_database.a00_con import dbCon as con
con = con()
cursor = con.cursor()
cursor.execute('SELECT * FROM EMP')
# 전체실행 내용
empList = cursor.fetchall()  # 튜플 배열
for emp in empList:
    print(emp[0], end="\t")
    print(emp[1], end="\t")
    print(emp[2], end="\t")
    print(emp[3], end="\t")
    print(emp[4], end="\t")
    print(emp[5], end="\t")
    print(emp[6], end="\n")
con.close()    
# EX) a03_selectDept.py  

