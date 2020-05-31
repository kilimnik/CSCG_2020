# First thoughts
The challenge is to reverse a dll file. This can be opened with a program like dnSpy.

# Solve
On opening the file I saw that the `InitialCheck` method gets called as one of the first things. Inside the input gets compared against `StringEncryption.Decrypt("D/T9XRgUcKDjgXEldEzeEsVjIcqUTl7047pPaw7DZ9I=")`. If the comparison returns true the input gets printed out as the flag. So I created a new C# project and inserted the `Decrypt` method and just called `Decrypt("D/T9XRgUcKDjgXEldEzeEsVjIcqUTl7047pPaw7DZ9I=")` which resulted in the flag.

```csharp
static void Main(string[] args)
{
	string flag1 = (Decrypt("D/T9XRgUcKDjgXEldEzeEsVjIcqUTl7047pPaw7DZ9I="));

	Console.WriteLine("There you go. Thats the first of the two flags! CSCG{{{0}}}", flag1);

	Console.ReadLine();
}

public static string Decrypt(string cipherText)
{
	string password = "A_Wise_Man_Once_Told_Me_Obfuscation_Is_Useless_Anyway";
	cipherText = cipherText.Replace(" ", "+");
	byte[] array = Convert.FromBase64String(cipherText);
	using (Aes aes = Aes.Create())
	{
		Rfc2898DeriveBytes rfc2898DeriveBytes = new Rfc2898DeriveBytes(password, new byte[]
		{
			73,
			118,
			97,
			110,
			32,
			77,
			101,
			100,
			118,
			101,
			100,
			101,
			118
		});
		aes.Key = rfc2898DeriveBytes.GetBytes(32);
		aes.IV = rfc2898DeriveBytes.GetBytes(16);
		using (MemoryStream memoryStream = new MemoryStream())
		{
			using (CryptoStream cryptoStream = new CryptoStream(memoryStream, aes.CreateDecryptor(), CryptoStreamMode.Write))
			{
				cryptoStream.Write(array, 0, array.Length);
				cryptoStream.Close();
			}
			cipherText = Encoding.Unicode.GetString(memoryStream.ToArray());
		}
	}
	return cipherText;
}
```

# Prevention
The problem here is that the password is encrypted with a symmetric encryption method rather than an unsymmetric method. Also it isn't good to compare the input to the decrypted password. It would be much better to encrypt the input and compare that to the encrypted password. Altough that doesn't change anything when used with a symmetric encryption method.