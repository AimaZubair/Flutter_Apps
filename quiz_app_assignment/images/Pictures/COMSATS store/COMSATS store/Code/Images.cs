using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace COMSATS_store.Code
{
    public class Images
    {
        public static readonly string[] validExtension = { ".jpg", ".jpeg", ".png" };
        public static bool CheckExtension(string extension)
        {
            return validExtension.Contains(extension);
        }
    }
}