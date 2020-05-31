using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Reme
{
    internal static class ByteArrayRocks
	{
		public static int[] Locate(this byte[] self, byte[] candidate)
		{
			bool flag = ByteArrayRocks.IsEmptyLocate(self, candidate);
			int[] result;
			if (flag)
			{
				result = ByteArrayRocks.Empty;
			}
			else
			{
				List<int> list = new List<int>();
				for (int i = 0; i < self.Length; i++)
				{
					bool flag2 = !ByteArrayRocks.IsMatch(self, i, candidate);
					if (!flag2)
					{
						list.Add(i);
					}
				}
				result = ((list.Count == 0) ? ByteArrayRocks.Empty : list.ToArray());
			}
			return result;
		}

		// Token: 0x06000002 RID: 2 RVA: 0x000020FC File Offset: 0x000002FC
		private static bool IsMatch(byte[] array, int position, byte[] candidate)
		{
			bool flag = candidate.Length > array.Length - position;
			bool result;
			if (flag)
			{
				result = false;
			}
			else
			{
				for (int i = 0; i < candidate.Length; i++)
				{
					bool flag2 = array[position + i] != candidate[i];
					if (flag2)
					{
						return false;
					}
				}
				result = true;
			}
			return result;
		}

		// Token: 0x06000003 RID: 3 RVA: 0x0000214C File Offset: 0x0000034C
		private static bool IsEmptyLocate(byte[] array, byte[] candidate)
		{
			return array == null || candidate == null || array.Length == 0 || candidate.Length == 0 || candidate.Length > array.Length;
		}

		// Token: 0x04000001 RID: 1
		private static readonly int[] Empty = new int[0];
	}
}
