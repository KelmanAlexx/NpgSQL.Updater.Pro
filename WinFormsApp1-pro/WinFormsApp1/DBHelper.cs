using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;

namespace WinFormsApp1
{
    public class DBHelper
    {
        public static string connectionString = "Host=localhost;Port=5432;Database=exam_v1;Username=padmin;Password=1";
        public static string[][] Start(string sotrtType)
        {
            List<string[]> main = new List<string[]>();
            try
            {
                using (var conn = new NpgsqlConnection(connectionString))
                {
                    conn.Open();
                    string sqlQuery = "";
                    if (sotrtType == "id")
                    {
                        sqlQuery = "SELECT * FROM tovar;";
                    }
                    else if (sotrtType == "name")
                    {
                        sqlQuery = "SELECT * FROM tovar ORDER BY name;";
                    }
                    else if (sotrtType == "price")
                    {
                        sqlQuery = "SELECT * FROM tovar ORDER BY price - price * (discount / 100);";
                    }
                    else if (sotrtType == "discount")
                    {
                        sqlQuery = "SELECT * FROM tovar ORDER BY discount DESC;";
                    }
                    else
                    {
                        MessageBox.Show("Не верный параметр сортировки!", "Ошибка при запросе к базе данных!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    using (var cmd = new NpgsqlCommand(sqlQuery, conn))
                    {
                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string[] temp = new string[11];
                                string articule, name, izmerenie, price, supplyer, manufacturer, category, discount, unit, description, photo;
                                articule = reader["articule"].ToString();
                                name = reader["name"].ToString();
                                izmerenie = reader["value"].ToString();
                                price = reader["price"].ToString();
                                supplyer = reader["supplyer"].ToString();
                                manufacturer = reader["manufacturer"].ToString();
                                category = reader["category"].ToString();
                                discount = reader["discount"].ToString();
                                unit = reader["units"].ToString();
                                description = reader["description"].ToString();
                                photo = reader["photo"].ToString();

                                temp[0] = articule;
                                temp[1] = name;
                                temp[2] = izmerenie;
                                temp[3] = price;
                                temp[4] = supplyer;
                                temp[5] = manufacturer;
                                temp[6] = category;
                                temp[7] = discount;
                                temp[8] = unit;
                                temp[9] = description;
                                temp[10] = photo;
                                
                                main.Add(temp);
                            }
                            return main.ToArray();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка при запросе к базе данных!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                //return [];
                return null;
            }
        }

        public static string[] login(string inputLogin, string inputPassword)
        {
            List<string> list = new List<string>();
            try
            {
                using (var conn = new NpgsqlConnection(connectionString))
                {
                    conn.Open();
                    string sqlQuery = "SELECT * FROM users";
                    using (var cmd = new NpgsqlCommand(sqlQuery, conn))
                    {
                        using (var Reader = cmd.ExecuteReader())
                        {
                            while (Reader.Read())
                            {
                                string login, password, role, name;
                                login = Reader["login"].ToString();
                                password = Reader["password"].ToString();
                                role = Reader["role"].ToString();
                                name = Reader["full_name"].ToString();

                                if (login == inputLogin && password == inputPassword)
                                {
                                    list.Add(name);
                                    list.Add(role);
                                    break;
                                }
                            }
                            if (list.Count == 0)
                            {
                                throw new Exception("Пользователь с таким логином и паролем не найден!");
                            }
                            else
                            {
                                return list.ToArray();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка при запросе к базе данных!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
        }
    }
}
