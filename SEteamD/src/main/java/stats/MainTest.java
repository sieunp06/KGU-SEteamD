package stats;

import java.util.ArrayList;

import table.Table;
import user.Regular;

public class MainTest {
	public static void main(String[] args) {
		StatsDAO test = new StatsDAO();
		
		int[] testSet = test.getMonthlyPreference();
		for (int i = 0; i < testSet.length; i++) {
			System.out.printf("[month | %d] Number of Visits - %d\n", i + 1, testSet[i]);
		}

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
