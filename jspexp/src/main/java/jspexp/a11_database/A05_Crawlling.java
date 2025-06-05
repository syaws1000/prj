package jspexp.a11_database;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class A05_Crawlling {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		        try {
		            // G마켓의 전자제품 페이지 URL
		            String url = "https://www.gmarket.co.kr/n/search?keyword=전자제품";
		            // HTML 문서 가져오기
		            Document doc = Jsoup.connect(url)
		                    .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36")
		                    .header("Accept-Language", "en-US,en;q=0.9")
		                    .header("Accept-Encoding", "gzip, deflate, br")
		                    .get();
		            System.out.println(doc.data());

		            // 제품 목록을 가져오기
		            Elements productElements = doc.select(".item-section");
		            

		            for (Element product : productElements) {
		                // 제품 이름, 가격, 평점, 판매량 추출
		                String productName = product.select(".item-name").text();
		                String productPrice = product.select(".price").text();
		                String productRating = product.select(".rating").text();
		                String productSales = product.select(".sales").text();

		                // 출력
		                System.out.println("제품명: " + productName);
		                System.out.println("가격: " + productPrice);
		                System.out.println("평점: " + productRating);
		                System.out.println("판매량: " + productSales);
		                System.out.println("---------------------------------------");
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }


}
