using System.Runtime.CompilerServices;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            pbLogo.Image = Image.FromFile("C:\\Users\\student\\Desktop\\icon.png");
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string login, password;
            login = tbLogin.Text;
            password = tbPassword.Text;
            string[] namerole = DBHelper.login(login, password);
            if (namerole != null && namerole.Length > 0)
            {
                MainForm mf = new MainForm(namerole[0], namerole[1]);
                mf.Show();
                this.Hide();
            }
        }

        private void btnGuest_Click(object sender, EventArgs e)
        {
           MainForm mf = new MainForm("guest", "guest");
            mf.Show();
            this.Hide();
        }
    }
}
