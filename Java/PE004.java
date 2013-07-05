/*

Author: Rohit Jha
File: PE004.java
July 5, 2013

Problem 4:
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.

*/

class PE004
{
	static boolean isPalindrome(int n)
	{
		String s = Integer.toString(n);
		StringBuffer sb = new StringBuffer(s);
	
		if(s.equals(new String(sb.reverse())))
			return true;
		else
			return false;
	}
	
	public static void main(String args[])
	{
		int max = 0, x, i, j;
		
		for(i = 999; i > 99; i--)
			for(j = 999; j > 99; j--)
			{
				x = i * j;
				if(isPalindrome(x) && x > max)
					max = x;
			}
		System.out.println(max);
	}
}

/*Output:
906609

real	0m0.274s
user	0m0.333s
sys		0m0.040s
*/
