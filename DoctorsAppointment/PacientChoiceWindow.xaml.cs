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
    public partial class PacientChoiceWindow : Window
    {
        CardWindow _cw;

        public PacientChoiceWindow(CardWindow cw)
        {
            InitializeComponent();
            UpdateCarsList();
            _cw = cw;
        }

        public void UpdateCarsList() => DGridPacients.ItemsSource = Context.GetContext().Pacients.ToList();

        private void SetSelectedCar()
        {
            Pacient pacient = DGridPacients.SelectedItem as Pacient;
            _cw.card.Pacient = pacient;
            _cw.card.PacientId = pacient.Id;
            _cw.tbPacient.Text = pacient.Name;
            Close();
        }

        private void btnChoice_Click(object sender, RoutedEventArgs e)
        {
            if (!(DGridPacients.SelectedItem is null))
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
