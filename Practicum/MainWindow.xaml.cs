using System;
using System.Windows;
using System.Linq;

namespace Practicum
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string custId = CustomerIdTextBox.Text.ToUpper();

            var customerDetails = DataStore.GetCustomerDetails(custId);
            CustomerDetailsTextBlock.Text = customerDetails;

            var diveEvents = DataStore.GetCustomerDiveEvents(custId);
            DiveEventsListBox.ItemsSource = diveEvents;
        }
    }
}
