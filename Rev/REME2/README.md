# First thoughts
The challenge is to reverse a dll file. This can be opened with a program like dnSpy. But now I need to get the second flag which is checked by this.
```csharp
byte[] ilasByteArray = typeof(Program).GetMethod("InitialCheck", BindingFlags.Static | BindingFlags.NonPublic).GetMethodBody().GetILAsByteArray();
byte[] array = File.ReadAllBytes(Assembly.GetExecutingAssembly().Location);
int[] array2 = array.Locate(Encoding.ASCII.GetBytes("THIS_IS_CSCG_NOT_A_MALWARE!"));
MemoryStream memoryStream = new MemoryStream(array);
memoryStream.Seek((long)(array2[0] + Encoding.ASCII.GetBytes("THIS_IS_CSCG_NOT_A_MALWARE!").Length), SeekOrigin.Begin);
byte[] array3 = new byte[memoryStream.Length - memoryStream.Position];
memoryStream.Read(array3, 0, array3.Length);
byte[] rawAssembly = Program.AES_Decrypt(array3, ilasByteArray);
object obj = Assembly.Load(rawAssembly).GetTypes()[0].GetMethod("Check", BindingFlags.Static | BindingFlags.Public).Invoke(null, new object[]
{
	args
});
```

# Solve
The first part of getting the `array3` value is very easy I can copy the part into my C# project change the path of the read and that should work. The tricky part is to to get the value of `ilasByteArray`. Il stands for intermediate language it is the language which the C# code gets compiled to. The bytes can be read directly out of the dll but I need to know which bytes I need.

To get this I first used a program called `ildasm`. There I can import a dll file and it will tell me the il bytes of a specific method. [Here](https://stackoverflow.com/questions/11282749/how-to-find-method-in-assembly-file-in-hex) is an explanation of how to read the bytes in the correct order. I wrote down the first few bytes and the last few and searched for them in a hex editor. I found out that the il code of the method is beteween 0x4x8 and 0x5e8. I copied the bytes and inserted them into my program. Then after decryption I wrote them to a new dll file.
```csharp
static void Main(string[] args)
{
	byte[] ilasByteArray = new byte[] { 0x00, 0x28, 0x10, 0x00, 0x00, 0x06, 0x00, 0x28, 0x2F, 0x00, 0x00, 0x0A, 0x0C, 0x08, 0x2C, 0x14, 0x00, 0x72, 0xC3, 0x00, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x17, 0x0A, 0x28, 0x32, 0x00, 0x00, 0x0A, 0x6F, 0x33, 0x00, 0x00, 0x0A, 0x12, 0x00, 0x28, 0x08, 0x00, 0x00, 0x06, 0x26, 0x06, 0x0D, 0x09, 0x2C, 0x14, 0x00, 0x72, 0xC3, 0x00, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x28, 0x09, 0x00, 0x00, 0x06, 0x13, 0x04, 0x11, 0x04, 0x2C, 0x14, 0x00, 0x72, 0xC3, 0x00, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x02, 0x8E, 0x16, 0xFE, 0x01, 0x13, 0x05, 0x11, 0x05, 0x2C, 0x14, 0x00, 0x72, 0xCD, 0x00, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x02, 0x16, 0x9A, 0x72, 0x11, 0x01, 0x00, 0x70, 0x28, 0x13, 0x00, 0x00, 0x06, 0x28, 0x34, 0x00, 0x00, 0x0A, 0x13, 0x06, 0x11, 0x06, 0x2C, 0x16, 0x00, 0x72, 0xC3, 0x00, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x2B, 0x10, 0x00, 0x72, 0x6B, 0x01, 0x00, 0x70, 0x02, 0x16, 0x9A, 0x28, 0x35, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x72, 0xE3, 0x01, 0x00, 0x70, 0x28, 0x0A, 0x00, 0x00, 0x06, 0x0B, 0x07, 0x7E, 0x36, 0x00, 0x00, 0x0A, 0x28, 0x37, 0x00, 0x00, 0x0A, 0x13, 0x07, 0x11, 0x07, 0x2C, 0x37, 0x00, 0x07, 0x72, 0xFD, 0x01, 0x00, 0x70, 0x28, 0x0B, 0x00, 0x00, 0x06, 0x13, 0x08, 0x11, 0x08, 0x28, 0x38, 0x00, 0x00, 0x0A, 0x20, 0xE9, 0x00, 0x00, 0x00, 0xFE, 0x01, 0x13, 0x09, 0x11, 0x09, 0x2C, 0x14, 0x00, 0x72, 0x33, 0x02, 0x00, 0x70, 0x28, 0x30, 0x00, 0x00, 0x0A, 0x00, 0x15, 0x28, 0x31, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x2A };

	byte[] array = File.ReadAllBytes(@"C:\Users\Daniel\Desktop\REME1\ReMe.dll");
	int[] array2 = array.Locate(Encoding.ASCII.GetBytes("THIS_IS_CSCG_NOT_A_MALWARE!"));
	MemoryStream memoryStream = new MemoryStream(array);
	memoryStream.Seek((long)(array2[0] + Encoding.ASCII.GetBytes("THIS_IS_CSCG_NOT_A_MALWARE!").Length), SeekOrigin.Begin);
	byte[] array3 = new byte[memoryStream.Length - memoryStream.Position];
	memoryStream.Read(array3, 0, array3.Length);
	byte[] rawAssembly = Program.AES_Decrypt(array3, ilasByteArray);

	Assembly assembly = Assembly.Load(rawAssembly);

	using (FileStream fileStream = new FileStream(@"C:\Users\Daniel\Desktop\REME1\inner.dll", FileMode.Create))
	{
		// Write the data to the file, byte by byte.
		for (int i = 0; i < rawAssembly.Length; i++)
		{
			fileStream.WriteByte(rawAssembly[i]);
		}
	}
}

public static byte[] AES_Decrypt(byte[] bytesToBeDecrypted, byte[] passwordBytes)
{
	byte[] result = null;
	byte[] salt = new byte[]
	{
1,
2,
3,
4,
5,
6,
7,
8
	};
	using (MemoryStream memoryStream = new MemoryStream())
	{
		using (RijndaelManaged rijndaelManaged = new RijndaelManaged())
		{
			rijndaelManaged.KeySize = 256;
			rijndaelManaged.BlockSize = 128;
			Rfc2898DeriveBytes rfc2898DeriveBytes = new Rfc2898DeriveBytes(passwordBytes, salt, 1000);
			rijndaelManaged.Key = rfc2898DeriveBytes.GetBytes(rijndaelManaged.KeySize / 8);
			rijndaelManaged.IV = rfc2898DeriveBytes.GetBytes(rijndaelManaged.BlockSize / 8);
			rijndaelManaged.Mode = CipherMode.CBC;
			using (CryptoStream cryptoStream = new CryptoStream(memoryStream, rijndaelManaged.CreateDecryptor(), CryptoStreamMode.Write))
			{
				cryptoStream.Write(bytesToBeDecrypted, 0, bytesToBeDecrypted.Length);
				cryptoStream.Close();
			}
			result = memoryStream.ToArray();
		}
	}
	return result;
}
```

Now that I had the inner dll I could import it into dnSpy and see the flag check
```csharp
public static void Check(string[] args)
{
	bool flag = args.Length <= 1;
	if (flag)
	{
		Console.WriteLine("Nope.");
	}
	else
	{
		string[] array = args[1].Split(new string[]
		{
			"_"
		}, StringSplitOptions.RemoveEmptyEntries);
		bool flag2 = array.Length != 8;
		if (flag2)
		{
			Console.WriteLine("Nope.");
		}
		else
		{
			bool flag3 = "CSCG{" + array[0] == "CSCG{n0w" && array[1] == "u" && array[2] == "know" && array[3] == "st4t1c" && array[4] == "and" && Inner.CalculateMD5Hash(array[5]).ToLower() == "b72f3bd391ba731a35708bfd8cd8a68f" && array[6] == "dotNet" && array[7] + "}" == "R3333}";
			if (flag3)
			{
				Console.WriteLine("Good job :)");
			}
		}
	}
```
From this I could quickly extract the flag except for the one part which needed a md5 crack. That could be done with the help of the website [crackstation](https://crackstation.net/).

# Prevention
The problem here is that the password check is encrypted with a symmetric encryption method which can be decrypted easily so it doesn't give any security.

It would be much better and simpler if the password would be encrypted with an unsymmetric method and the input would be encrypted too. Then the two encrypted strings can be compared.