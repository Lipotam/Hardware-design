using System;
using System.Linq;

namespace APVMIS3
{
	class Program
	{
		static void Main(string[] args)
		{
			using (System.IO.StreamWriter file = new System.IO.StreamWriter(@"C:\WriteLines2.txt"))
			{
				file.WriteLine("00000000");
				file.WriteLine("000");
				file.WriteLine("0");

				for (int i = 1; i < 256; i++)
				{
					string s = Convert.ToString(i, 2);
					int[] bits = s.PadLeft(8, '0').Select(c => int.Parse(c.ToString())).ToArray();
					s = string.Empty;
					foreach (var bit in bits)
					{
						s += bit == 1 ? "1" : "0";
					}

					file.WriteLine(s);

					int index = 7;
					foreach (var bit in bits)
					{
						if (bit == 1)
						{
							break;
						}
						index--;
					}

					s = Convert.ToString(index, 2);
					int[] indexbits = s.PadLeft(8, '0').Select(c => int.Parse(c.ToString())).ToArray();
					s = string.Empty;

					s += indexbits[5] == 1 ? "1" : "0";
					s += indexbits[6] == 1 ? "1" : "0";
					s += indexbits[7] == 1 ? "1" : "0";

					file.WriteLine(s);
					file.WriteLine("1");
				}
			}
		}
	}
}
