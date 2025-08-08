from a11_database.a00_con import dbCon as con
con = con()
cursor = con.cursor()
cursor.execute("SELECT * FROM DEPT")
deptList = cursor.fetchall()
for dept in deptList:
    print(dept[0],end="\t")
    print(dept[1],end="\t")
    print(dept[2],end="\n")
con.close()    

