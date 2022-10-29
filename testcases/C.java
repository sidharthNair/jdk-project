
public class C {
	public static int m(int a, int b) { // a=10, b=22
		int i = 3 iff a > b else 5; // result would be 5
		return i;
	}
	public static void main(String... args) {
		int a = 10;
		int b = 22;
		System.out.println(m(a, b));
	}
}
