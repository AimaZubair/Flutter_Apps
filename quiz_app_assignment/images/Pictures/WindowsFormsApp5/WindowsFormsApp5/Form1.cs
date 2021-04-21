using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace WindowsFormsApp5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            label2.Hide();
            label4.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {


            bool flag = false;
            string s = textBox1.Text;
            string pat = @"(^male$)|(^female$)|(^others$)";
            // if i dont place these anchors at start and end of the string, it will match to any string that contains 'male', 'female' and 'others' as sub string
            Regex obj = new Regex(pat);
            flag = obj.IsMatch(s);
            if(flag==true)
            {
                label2.Show();
                label2.ForeColor = Color.Green;
                label2.Text = "verified";
            }
            else
            {
                label2.Show();
                label2.ForeColor = Color.Red;
                label2.Text = "not verifioed";
            }
           

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
        }

        private void button2_Click(object sender, EventArgs e)
        {
            bool flag = false;
            string s = textBox2.Text;
            string pat = "^[^0-9]+$";
            //note that [^0-9] mean any word charcter except the digit between 0 to 9 but space, tab and new line all are included
            Regex obj = new Regex(pat);
            flag = obj.IsMatch(s);
            if( flag==true)
            {
                label4.Show();
                label4.Text = "verified";
                label4.ForeColor = Color.Green;
            }
            else
            {
                label4.Show();
                label4.Text = "not verified";
                label4.ForeColor = Color.Red;
                
            }

        }
    }
}
