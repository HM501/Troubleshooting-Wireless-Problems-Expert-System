using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ESTS
{
    public partial class frmHistory : Window
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HDatabaseExpert.mdf;Integrated Security=True");
        DataTable dt = new DataTable();
        public frmHistory()
        {
            InitializeComponent();
            dt.Clear();
            SqlCommand cmd = new SqlCommand("select * from Results", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            sda.Dispose();
            grid.ItemsSource = dt.DefaultView;
            grid.Items.Refresh();
            con.Close();
        }
        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();   
        }
        private void btnGoBack_Click(object sender, RoutedEventArgs e)
        {
            var main = new MainWindow();
            main.Show();
            this.Close();
        }
        private void btnHistory_Click(object sender, RoutedEventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Results ", con);
            cmd.ExecuteNonQuery();
            dt.Clear();
            con.Close();
        }
    }
}
