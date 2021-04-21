using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;
using System.IO;
namespace COMSATS_store.Code
{
    public class Encrypt_Decrypt
    {
        public static string Encrypt(string plaintext)
        {
            string passPharse = "Comsats123@vehari";
            string keyValue = "COMSATSCUI";
            string hashingAlgorithm = "SHA1";
            int pwdIterations = 3;
            string initVector = "@ABHU469efkh93!#";
            int keySize = 256;
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] keyValueBytes = Encoding.UTF8.GetBytes(keyValue);
            //convert plain text  to byte array

            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plaintext);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPharse, keyValueBytes, hashingAlgorithm, pwdIterations);
            // use thhis password t generates the psedo-random bytes for the encryption key.
            byte[] keyBytes = password.GetBytes(keySize / 8);
            //create the unintialized rijndeal encryption object
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor
            (
                keyBytes,
                initVectorBytes
            );
            //define the memory stream which hold the encrypted data
            MemoryStream mstream = new MemoryStream();
            // Define cryptographic stream 
            CryptoStream cryptostream = new CryptoStream
            (
                mstream,
                encryptor,
                CryptoStreamMode.Write
                );
            //start encryption
            cryptostream.Write(plainTextBytes, 0, plainTextBytes.Length);

            //end encryption
            cryptostream.FlushFinalBlock();

            //convert encrypted data from memory stream to bytes array

            byte[] encryptedDataBytes = mstream.ToArray();

            //close both stream

            mstream.Close();
            cryptostream.Close();

            //convert encrypted data into base-encoded string
            string encryptedData = Convert.ToBase64String(encryptedDataBytes);
            return encryptedData;
        }
    }
}