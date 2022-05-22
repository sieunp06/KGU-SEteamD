package data;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;

import table.Table;
import user.Regular;

public class FileWriter {
	private FileWriter() {
	}

	private static FileWriter fw = null;
	private static StatsData sd = new StatsData();
	String tablePrefer;
	String hourlyPrefer;
	String monthlyPrefer;
	String regulars;
	String content;

	private static void create() {
		fw = new FileWriter();
	}

	public static FileWriter getInstance() {
		if (fw == null)
			create();
		return fw;
	}

	public void writeFile() throws Exception {
		String fileName = new String("RrestaurantData");
		String root = "C:/Users/SEDTeam/Downloads/" + fileName + ".txt";
		PrintWriter pw = new PrintWriter(root);

		formatString();
		setContent();
		pw.print(content);

		pw.close();
	}

	public void setContent() {
		LocalDate now = LocalDate.now();
		content = "\t[ S E E D  레 스 토 랑  통 계 자 료 ]\n" + "\t\t\t\t*작성일자 : " + now.toString()
				+ "\n==========================================" + "\n1. 평균 인원수 : " + sd.getAvgofCovers() + "\n"
				+ "\n2. 테이블당 예약 수\n" + tablePrefer + "\n3. 시간별 예약 수\n" + hourlyPrefer + "\n4. 월별 예약 수\n" + monthlyPrefer
				+ "\n5. 단골 회원\n" + regulars;
	}

	public void formatString() {
		tablePrefer = "";
		hourlyPrefer = "";
		monthlyPrefer = "";
		regulars = "";

		ArrayList<Table> tp = sd.getTablePreference();
		for (Table t : tp) {
			tablePrefer += new String().format("\t[ %d번 ]  %d\n", t.getNumber(), t.getVisits());
		}

		int[] mp = sd.getMonthlyPreference();
		for (int i = 0; i < mp.length; i++) {
			monthlyPrefer += new String().format("\t[ %d월 ] %d\n", i + 1, mp[i]);
		}

		String[][] hp = sd.getHourlyPreference();
		for (int i = 0; i < hp.length; i++) {
			if (hp[i][0] == null)
				continue;
			hourlyPrefer += new String().format("\t[ %s ] %s\n", hp[i][0], hp[i][1]);
		}

		ArrayList<Regular> reg = sd.getRegular();
		for (int i = 0; i < reg.size(); i++) {
			Regular r = reg.get(i);
			regulars += new String().format("\t[ " + (i + 1) + " ] ID: " + r.getId() + " | 이름: " + r.getName()
					+ " | 전화번호: " + r.getPhoneNumber() + " | 방문 횟수: " + r.getNumofVisits() + "\n");
		}

	}
}
