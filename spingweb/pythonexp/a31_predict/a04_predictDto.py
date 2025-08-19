from dataclasses import dataclass
import datetime

# from a31_predict.a04_predictDto import Predict
@dataclass
class Predict:
    """
    데이터 전송을 위한 간단한 직원 DTO입니다.
    @dataclass가 __init__, __repr__, __eq__ 등을 자동으로 만들어줍니다.
    join_date last_purchase_date
    """
    userId: str
    age : int
    join_date : datetime
    buyCnt : int
    buyTot : int
    last_purchase_date : datetime
    actual_future_3m_purchase : int
