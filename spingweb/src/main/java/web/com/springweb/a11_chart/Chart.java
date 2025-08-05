package web.com.springweb.a11_chart;

import java.util.List;

public class Chart {
	private int no;
	private String type;
	private int data;
	private String label;
	
	private List<Integer> datas;
	private List<String> labels;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public List<Integer> getDatas() {
		return datas;
	}
	public void setDatas(List<Integer> datas) {
		this.datas = datas;
	}
	public List<String> getLabels() {
		return labels;
	}
	public void setLabels(List<String> labels) {
		this.labels = labels;
	}
	
}
