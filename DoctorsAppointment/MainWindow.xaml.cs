﻿using System;
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

namespace DoctorsAppointment
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Visibility = Visibility.Hidden;
            AuthorisationWindow authorization = new AuthorisationWindow(this);
            authorization.Show();
            UpdateCardsList();
        }

        public void UpdateCardsList() => DGridCards.ItemsSource = Context.GetContext().AppointmentCards.ToList();

        private void Btn_Create_Click(object sender, RoutedEventArgs e)
        {
            CardWindow wind = new CardWindow(this);
            wind.Show();
        }

        private void DataGridRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            CardWindow wind = new CardWindow(this, DGridCards.SelectedItem as AppointmentCard);
            wind.Show();
        }
    }
}
