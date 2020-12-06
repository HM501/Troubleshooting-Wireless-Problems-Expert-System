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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;

namespace ESTS
{
    public partial class MainWindow : Window
    {
        static string g1 = "Contact support to install one";
        static string g2 = "Turn it ON, Most laptops have a switch or button on the case that powers the wireless network devices. The wireless button or switch is (usually) located in one of three places: Top of the keyboard, side of the computer, or on the front of the computer";
        static string g3 = "Try to re-enter the encryption password";
        static string g4 = "Try to enable the router , the active LED should inducate the activity. you can try another laptop in the same room";
        static string g5 = "Make sure that the firewall setting allow you to access the internet. Or restore default settings";
        static string g6 = "Change the cable that provide the router with internet";
        static string g7 = "either setting or Laptop hardware issue";
        static string g8 = "Try to reboot router, If nothing happen then it is ISP or Hardware failure";
        static string g9 = "Try to change the laptop location by moving it away from interference region";
        static string g10 = "You should try to reset the router to its factory condition and then run the manufacturer''s setup program to configure the router";
        static string g11 = "Possibly ISP problem, or wind and weather effecting the siginal";
        static string g12 = "Upgrade the router firmware to the latest version";
        static string g13 = "The problem might be due to router failure or overheating, try to reset the router to its factory condition and then run the manufacturer''s setup program to configure the router";
        static string g14 = "Some WiFi use the 5GHz connection. Make sure your router is on the 2.4 GHz mode";
        static string g15 = "Possible wireless adapter failure, try to reinstall driver, If problem stays the same, try to use different connection software(WiFi utilities) to connect";
        static string g16 = "Sometimes the coroporate network might be hidden, ask the network admin for the network setting";
        static string g17 = "You might be on the other edge of the coverage area, get closer to the router";

        static string q_WiFiAdapter = "Do you have A Wi-Fi adapter in your device?"; 
        static string q_AreaWireless = "Is there is a wireless network in the area?"; 
        static string q_SecurityProblem = "Is it a security login problem?";
        static string q_Ethernet = "Works on Ethernet?"; 
        static string q_FirewallSecurity = "Blocked by firewall Security?"; 
        static string q_Caples = "Is the caples are damaged or not connected proberly?";
        static string q_InternetInRouter = "Is there's Internet in the router?"; 
        static string q_DefaultSetting = "Is the Router on the default setting?";  
        static string q_Signal = "Is there interferer signal (like bluetooth devices)?";
        static string q_Firmware = "Is your router firmware updated?"; 
        static string q_AdapterOn = "Is your WiFi adapter turned ON?"; 
        static string q_RouterActiveInArea = "Verify if there's a router in the area?"; 
        static string q_HomeNetwork = "Is this network considered a HOME network?"; 
        static string q_GetNetworks = "Is your device able to get other WiFi networks?";
        static string q_GHz = "Your device support 5GHz?";
        static string q_CloseEnough = "Are you close enough to the router?";
        string[][] arrRule = new string[16][];
        string[] arrBoolAnswers = new string[16];
        string Next = "";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\HDatabaseExpert.mdf;Integrated Security=True");
        public MainWindow() 
        {             
            InitializeComponent();
            con.Open(); 
            arrRule[0] = new string[] { q_WiFiAdapter, q_AreaWireless, g1 }; 
            arrRule[1] = new string[] { q_AreaWireless, q_SecurityProblem, q_AdapterOn }; 
            arrRule[2] = new string[] { q_SecurityProblem, g3, q_Ethernet }; 
            arrRule[3] = new string[] { q_Ethernet, q_DefaultSetting, q_FirewallSecurity }; 
            arrRule[4] = new string[] { q_FirewallSecurity, g5, q_Caples }; 
            arrRule[5] = new string[] { q_Caples, g6, q_InternetInRouter }; 
            arrRule[6] = new string[] { q_InternetInRouter, g7, g8 }; 
            arrRule[7] = new string[] { q_DefaultSetting, q_Signal, g10 }; 
            arrRule[8] = new string[] { q_Signal, g9, q_Firmware }; 
            arrRule[9] = new string[] { q_Firmware, g11, g12 }; 
            arrRule[10] = new string[] { q_AdapterOn, q_RouterActiveInArea, g2 }; 
            arrRule[11] = new string[] { q_RouterActiveInArea, q_HomeNetwork, g4 }; 
            arrRule[12] = new string[] { q_HomeNetwork, q_GetNetworks, g16 }; 
            arrRule[13] = new string[] { q_GetNetworks, q_GHz, g15 }; 
            arrRule[14] = new string[] { q_GHz, q_CloseEnough, g14 }; 
            arrRule[15] = new string[] { q_CloseEnough, g13, g17 }; 
            lblQuestion.Content = arrRule[0][0];
            lblGoal.Text = "  ";
        }
        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();          
        }
        private void btnStartOver_Click(object sender, RoutedEventArgs e)
        {
            lblQuestion.Content = arrRule[0][0];
            for (int z = 0; z < 16; z++)
            {
                arrBoolAnswers[z] = "---";
            }
            lblGoal.Text = "  ";
            radioYes.Visibility = Visibility.Visible;
            radioNo.Visibility = Visibility.Visible;
        }
        public void DoStuff()
        {
            lblQuestion.Content = Next;
            if ((Next == g1) || (Next == g2) || (Next == g3) || (Next == g4) || (Next == g5) || (Next == g6) || (Next == g7) || (Next == g8) || (Next == g9) || (Next == g10) || (Next == g11) || (Next == g12) || (Next == g13) || (Next == g14) || (Next == g15) || (Next == g16) || (Next == g17))
            {
                lblGoal.Text = Next;
                lblQuestion.Content = "Solution Found";
                radioYes.Visibility = Visibility.Hidden;
                radioNo.Visibility = Visibility.Hidden;
                for (int z = 0; z < 16; z++)
                {
                    if (arrBoolAnswers[z] != "Yes" && arrBoolAnswers[z] != "No")
                    {
                        arrBoolAnswers[z] = "---";
                    }
                }
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = 
                    @"insert into Results values ('" + DateTime.Today.ToString("dd-MM-yyyy") + "' ,'" + DateTime.Now.ToString("t") + "' ,'" + arrBoolAnswers[0] + "','" + arrBoolAnswers[1] + "','" + arrBoolAnswers[2] + "','" + arrBoolAnswers[3] + "','" + arrBoolAnswers[4] + "','" + arrBoolAnswers[5] + "','" + arrBoolAnswers[6] + "','" + arrBoolAnswers[7] + "','" + arrBoolAnswers[8] + "','" + arrBoolAnswers[9] + "','" + arrBoolAnswers[10] + "','" + arrBoolAnswers[11] + "','" + arrBoolAnswers[12] + "','" + arrBoolAnswers[13] + "','" + arrBoolAnswers[14] + "','" + arrBoolAnswers[15] + "','" + Next + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            radioYes.IsChecked = false;
            radioNo.IsChecked = false;

        }
        private void radioChecked(object sender, RoutedEventArgs e)
        {    
            for (int i = 0; i < 16; i++ ) 
            {
                if (radioYes.IsChecked == true)
                {
                    if (Convert.ToString(lblQuestion.Content) == arrRule[i][0].ToString())
                    {
                        arrBoolAnswers[i] = "Yes";
                        Next = arrRule[i][1].ToString();
                        if (Next == arrRule[i][1].ToString())
                        {
                            DoStuff();
                        }
                    }
                }
                else if (radioNo.IsChecked == true)
                {
                    if (Convert.ToString(lblQuestion.Content) == arrRule[i][0].ToString())
                    {
                        arrBoolAnswers[i] = "No";
                        Next = arrRule[i][2].ToString();
                        if (Next == arrRule[i][2].ToString())
                        {
                            DoStuff();
                        }
                    }
                }             
            }
        }
        private void btnGrid_Click(object sender, RoutedEventArgs e)
        {
            var hs = new frmHistory(); 
            hs.Show();
            this.Close();
        }
        }
}