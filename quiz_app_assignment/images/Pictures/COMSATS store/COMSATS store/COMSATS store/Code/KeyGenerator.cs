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
            chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray(); //string converted to character array so the random number generated between this characters
                byte[] data= new byte[maxSize];
                using (RNGCryptoServiceProvider crypto= new RNGCryptoServiceProvider())
                {
                    crypto.GetNonZeroBytes(data);
                }
            StringBuilder result = new StringBuilder();
            foreach(byte b in data)    //get each element of array
            {
                result.Append(chars[b %(chars.Length)]);  //Append function concatenate byte with string
            }
            return result.ToString();
        }
    }
}