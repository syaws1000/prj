package web.com.springweb.a11_chart;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_ChartService {
	@Autowired(required=false)
	private A03_ChartDao dao;
	
	// DB에서 가져온 데이터 화면단에 전달시 형식으로 변환 처리..
	public Chart getChart(String type){
		List<Chart> cList = dao.getChart(type);
		Chart chart = cList.get(0);
		List<Integer> datas = new ArrayList<Integer>();
		List<String> labels = new ArrayList<String>();
		for(Chart ct:cList) {
			datas.add(ct.getData());
			labels.add(ct.getLabel());
		}
		chart.setDatas(datas);
		chart.setLabels(labels);
		return chart;
	}

}
