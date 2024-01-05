public class Main 
{
	public static void main(String[] args) 
	{
		get_fib(5);
	}

	// not proficient in ruby right now, so i initially wrote the function in java and then converted at the end
	// so i didn't have to stop to google every five seconds
	private static void get_fib(int n)
	{
		if (n < 2)
			System.out.println(0);

		int sum = 0;
		int arr[] = new int[n];
		arr[0] = 1;
		arr[1] = 1;

		for (int i = 2; i < n; ++i) {
			arr[i] = arr[i - 1] + arr[i - 2];
			if (arr[i] % 2 == 0)
				sum += arr[i];
		}

		System.out.println(sum);
	}
}