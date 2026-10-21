using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;
using WinFormsApp2;

namespace WinFormsApp1
{
    public partial class MainForm : Form
    {
        public static string rol;
        public MainForm(string name, string role)
        {
            InitializeComponent();
            rol = role;
            Main("id");
            pictureBox1.Image = Image.FromFile("C:\\Users\\student\\Desktop\\icon.png");
            if (role == "Администратор")
            {
                this.Text = $"Добро пожаловать, {name}!";
                lblName.Text = name;
            }
            else if (role == "Менеджер")
            {
                this.Text = $"Добро пожаловать, {name}!";
                lblName.Text = name;
                btnAdmin.Hide();
            }
            else if (role == "Авторизированный клиент")
            {
                this.Text = $"Добро пожаловать, {name}!";
                lblName.Text = name;
                btnAdmin.Hide();
                btnManager.Hide();
            }
            else
            {
                btnAdmin.Hide();
                btnManager.Hide();
                lblName.Hide();
                cbSort.Hide();
            }
            this.Text = $"Добро пожаловать, Гость!";
            flowLayoutPanel1.BackColor = ColorTranslator.FromHtml("#BBD9B2");
        }

        public void Main(string input)
        {
            flowLayoutPanel1.Controls.Clear();
            string[][] main = DBHelper.Start(input);
            foreach (string[] s in main)
            {
                plitka pl = new plitka();
                pl.ImportData(s);
                flowLayoutPanel1.Controls.Add(pl);
            }
        }

        private void cbSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbSort.SelectedIndex == 0)
            {
                Main("id");
            }
            else if (cbSort.SelectedIndex == 1)
            {
                Main("name");
            }
            else if (cbSort.SelectedIndex == 2)
            {
                Main("price");
            }
            else if (cbSort.SelectedIndex == 3)
            {
                Main("discount");
            }
            else
            {
                MessageBox.Show("Не верный запрос!", "Ошибка!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void btnManager_Click(object sender, EventArgs e)
        {
            OrdersForm of = new OrdersForm(rol);
            of.Show();
        }

        private void btnAdmin_Click(object sender, EventArgs e)
        {
            CreateTovarForm ctv = new CreateTovarForm();
            ctv.Show();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            f1.Show();
            this.Hide();
        }

        private void btnManager_Click_1(object sender, EventArgs e)
        {
            OrdersForm of = new OrdersForm(rol);
            of.Show();
        }
    }
}
