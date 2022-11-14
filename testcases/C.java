
public class C {
	public static int m(int a, int b) { // a=10, b=22
		int j = a > b ? 3 : 5;
		int i = 3 iff a > b else 7 iff b > 23 else 9; // result would be 5
		return i;
	}
	public static void main(String... args) {
		int a = 10;
		int b = 22;
		System.out.println(m(a, b));
	}
}
