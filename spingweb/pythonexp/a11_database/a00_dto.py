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

@dataclass
class Student:
    no : int
    name : str
    kor : int
    eng : int
    math : int

@dataclass
class Product:
    no : int
    name : str
    price : int
    cnt : int


@dataclass
class Person:
    name: str
    age: int
    loc: str    

# Movie(title, director, year)
@dataclass
class Movie:
    title: str
    director: str
    year: int




