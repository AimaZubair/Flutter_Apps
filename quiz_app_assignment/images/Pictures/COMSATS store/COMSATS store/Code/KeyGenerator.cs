using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace COMSATS_store.Code
{
    public class KeyGenerator
    {
        public static string GetUniqueKey(int maxSize)
        {
            char[] chars = new char[62];
            chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
                byte[] data= new byte[maxSize];
                using (RNGCryptoServiceProvider crypto= new RNGCryptoServiceProvider())
                {
                    crypto.GetNonZeroBytes(data);
                }
            StringBuilder result = new StringBuilder();
            foreach(byte b in data)
            {
                result.Append(chars[b %(chars.Length)]);
            }
            return result.ToString();
        }
    }
}