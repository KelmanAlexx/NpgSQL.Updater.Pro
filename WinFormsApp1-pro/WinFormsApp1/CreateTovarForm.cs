using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Npgsql;
using WinFormsApp1;

namespace WinFormsApp2
{
    public partial class CreateTovarForm : Form
    {
        static string connectionString = DBHelper.connectionString;
        public CreateTovarForm()
        {
            InitializeComponent();
        }

        public static void Create(string articule, string name, string value, decimal price, string supplyer, string manufacturer, string category, int discount, int units, string description, string photo)
        {
            string sqlQuery = "INSERT INTO tovar VALUES (@Articule, @Name, @Value, @Price, @Supplyer, @Manufacturer, @Category, @Discount, @Units, @Description, @Photo)";
            try
            {
                using (var conn = new NpgsqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = new NpgsqlCommand(sqlQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@Articule", articule);
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Value", value);
                        cmd.Parameters.AddWithValue("@Price", price);
                        cmd.Parameters.AddWithValue("@Supplyer", supplyer);
                        cmd.Parameters.AddWithValue("@Manufacturer", manufacturer);
                        cmd.Parameters.AddWithValue("@Category", category);
                        cmd.Parameters.AddWithValue("@Discount", discount);
                        cmd.Parameters.AddWithValue("@Units", units);
                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@Photo", photo);

                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex}", "Ошибка добавления!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void CreateTovarForm_Load(object sender, EventArgs e)
        {

        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                string articule = tbArt.Text;
                string name = tbName.Text;
                string value = tbIzmer.Text;
                decimal price = decimal.Parse(tbPrice.Text);
                string supplyer = tbSupp.Text;
                string manufacturer = tbManu.Text;
                string category = tbCat.Text;
                int units = int.Parse(tbUnits.Text);
                int discount = int.Parse(tbDisc.Text);
                string photo = tbPhoto.Text;
                string description = tbDesc.Text;
                Create(articule, name, value, price, supplyer, manufacturer, category, discount, units, description, photo);
                MessageBox.Show($"Запись произошла успешно!", "Успешно!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Проверьте введённые данные на валидность!\n{ex}", "Ошибка запроса!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void tbManu_TextChanged(object sender, EventArgs e)
        {

        }

        private void tbPhoto_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
