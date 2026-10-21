using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WinFormsApp1;

namespace WinFormsApp2
{
    public partial class OrdersForm : Form
    {
        public OrdersForm(string role)
        {
            InitializeComponent();
            LoadData();
            if (role != "Администратор")
            {
                btnSave.Enabled = false;
            }
        }

        static string connectionString = DBHelper.connectionString;
        private NpgsqlDataAdapter adapter;
        private DataTable dataTable;
        private NpgsqlConnection connection;

        private void LoadData()
        {
            try
            {
                string query = "SELECT * FROM orders ORDER BY id ASC;";
                connection = new NpgsqlConnection(connectionString);
                adapter = new NpgsqlDataAdapter(query, connection);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                dataGridView1.EndEdit();
                using (NpgsqlCommandBuilder builder = new NpgsqlCommandBuilder(adapter))
                {
                    adapter.Update(dataTable);
                }
                MessageBox.Show("Запись произведена успешно!", "Успех!", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            base.OnFormClosing(e);
            if (connection != null)
            {
                connection.Dispose();
            }
        }
    }
}
