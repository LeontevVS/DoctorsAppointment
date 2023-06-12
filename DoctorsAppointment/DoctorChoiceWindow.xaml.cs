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

namespace DoctorsAppointment
{
    public partial class DoctorChoiceWindow : Window
    {
        CardWindow _cw;

        public DoctorChoiceWindow(CardWindow cw)
        {
            InitializeComponent();
            UpdateCarsList();
            _cw = cw;
        }

        public void UpdateCarsList() => DGridDoctors.ItemsSource = Context.GetContext().Doctors.ToList();

        private void SetSelectedCar()
        {
            Doctor doctor = DGridDoctors.SelectedItem as Doctor;
            _cw.card.Doctor = doctor;
            _cw.card.DoctorId = doctor.Id;
            _cw.tbDoctor.Text = doctor.Name;
            Close();
        }

        private void btnChoice_Click(object sender, RoutedEventArgs e)
        {
            if (!(DGridDoctors.SelectedItem is null))
                SetSelectedCar();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void DataGridRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            SetSelectedCar();
        }
    }
}
