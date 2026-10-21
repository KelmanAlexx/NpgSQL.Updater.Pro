using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinFormsApp1
{
    public partial class plitka : UserControl
    {
        public plitka()
        {
            InitializeComponent();
        }

        public void ImportData(string[] input)
        {
            string articule, name, izmerenie, supplyer, manufacturer, category, description, photo;
            int price, discount, unit;
            articule = input[0];
            name = input[1];
            izmerenie = input[2];
            price = int.Parse(input[3]);
            supplyer = input[4];
            manufacturer = input[5];
            category = input[6];
            discount = int.Parse(input[7]);
            unit = int.Parse(input[8]);
            description = input[9];
            photo = input[10];

            lblCategoryName.Text = $"{category} | {name}";
            lblDescription.Text = $"Описание: {description}";
            lblManufacturer.Text = $"Производитель: {manufacturer}";
            lblSypplyer.Text = $"Поставщик: {supplyer}";
            if (discount == 0)
            {
                lblPrice.Text = $"Цена: {price}";
            }
            else
            {
                lblPrice.Text = $"Цена: {price} -> {price - price * discount / 100}";
                lblPrice.Font = new Font(lblPrice.Font, FontStyle.Strikeout);
                lblPrice.ForeColor = Color.Red;
            }
            lblIzmerenie.Text = $"Ед.измерения: {izmerenie}";
            lblUnit.Text = $"Осталось на складе: {unit}";
            lblDiscount.Text = $"Ваша скидка:\n{discount}%";
            if (unit == 0)
            {
                tableLayoutPanel1.BackColor = Color.LightBlue;
            }
            else if (discount > 15)
            {
                tableLayoutPanel1.BackColor = ColorTranslator.FromHtml("#2E8B57");
            }
            try
            {
                pbPhoto.Image = Image.FromFile($"C:\\Users\\student\\Desktop\\{photo}");
            }
            catch (Exception ex)
            {
                pbPhoto.Image = Image.FromFile("C:\\Users\\student\\Desktop\\picture.png");
            }
        }

        private void pbPhoto_Click(object sender, EventArgs e)
        {

        }
    }
}
