package stats;

import java.util.ArrayList;

import table.Table;
import user.Regular;

public class MainTest {
	public static void main(String[] args) {
		StatsDAO test = new StatsDAO();
		
		String[][] testSet = test.getHourlyPreference();
		for(int i=0; i<testSet.length; i++) {
			if( testSet[i][0] == null)
				continue;
			System.out.printf("[hour | %s] Number of Visits - %s\n", testSet[i][0], testSet[i][1]);
		}
		
		/*
		int[] testSet = test.getMonthlyPreference();
		for (int i = 0; i < testSet.length; i++) {
			System.out.printf("[month | %d] Number of Visits - %d\n", i + 1, testSet[i]);
		}
		*/
		/*
		ArrayList<Table> testList = test.getTablePreference(); 
		for(Table t: testList) {
			System.out.printf("[table Num | %d] Number of Visits - %d\n", t.getNumber(), t.getVisits());
		}
		*/
		/*
		ArrayList<Regular> testList = test.getRegular();
		for (Regular r : testList) {
			System.out.println("id: " + r.getId() + " | name: " + r.getName() + " | pn: " + r.getPhoneNumber()
					+ " | num of visits:" + r.getNumofVisits());
		}
		*/
	}
}
