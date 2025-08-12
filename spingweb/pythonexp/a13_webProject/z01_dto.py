from dataclasses import dataclass
import datetime
# from a11_database.a00_dto import *
@dataclass
class Emp:
    empno : int
    ename : str
    job : str
    mgr : int
    hiredate : datetime
    sal : float
    comm : float
    deptno : int

@dataclass
class Dept:
    deptno: int
    dname: str
    loc: str