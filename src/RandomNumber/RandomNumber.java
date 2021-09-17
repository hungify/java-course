package RandomNumber;

import java.util.Random;

public class RandomNumber {
	public String random(int n) {
		Random ran = new Random();
		int numberRan = ran.nextInt(n);
		String sNumber = Integer.toString(numberRan);
		System.out.println(sNumber);

		if (n <= 100) {
			System.out.println(1);
			return "0" + sNumber;

		} else if (sNumber.length() < 3 && n <= 1000) {
			if (sNumber.length() < 2) {
				return "00" + sNumber;
			} else
				return "0" + sNumber;
		} else if (sNumber.length() < 4 && n <= 10000) {
			if (sNumber.length() < 2) {
				return "000" + sNumber;
			} else if (sNumber.length() < 3) {
				return "00" + sNumber;
			}
			return "0" + sNumber;
		} else if (sNumber.length() < 5 && n <= 100000) {
			if (sNumber.length() < 2) {
				return "0000" + sNumber;
			} else if (sNumber.length() < 3) {
				return "000" + sNumber;
			} else if (sNumber.length() < 4) {
				return "00" + sNumber;
			}
			return "0" + sNumber;
		} else if (sNumber.length() < 6 && n <= 1000000) {
			if (sNumber.length() < 2) {
				return "00000" + sNumber;
			} else if (sNumber.length() < 3) {
				return "0000" + sNumber;
			} else if (sNumber.length() < 4) {
				return "000" + sNumber;
			}else if (sNumber.length() < 5) {
				return "00" + sNumber;
			}
			return "0" + sNumber;
		}

		return sNumber;

	}

}
