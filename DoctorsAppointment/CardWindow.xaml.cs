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
    /// <summary>
    /// Логика взаимодействия для CarRentsWindow.xaml
    /// </summary>
    public partial class CardWindow : Window
    {
        public AppointmentCard card;
        MainWindow _mw;

        public CardWindow(MainWindow mw, AppointmentCard card = null)
        {
            _mw = mw;
            if (card is null)
                this.card = new AppointmentCard() 
                { 
                    Id = 0, 
                    Date = DateTime.Now
                };
            else
                this.card = card;

            InitializeComponent();
            DataContext = this.card;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e) => Save();

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Несохраненные изменения будут утеряны.\nЗакрыть окно?", "Внимание", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                Close();
        }

        private bool Save()
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(dpBeginDate.SelectedDate.ToString()))
                errors.AppendLine("Укажите дату");
            if (string.IsNullOrWhiteSpace(tbDoctor.Text))
                errors.AppendLine("Укажите доктора");
            if (string.IsNullOrWhiteSpace(tbPacient.Text))
                errors.AppendLine("Укажите пациента");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return false;
            }

            if (card.Id == 0)
                Context.GetContext().AppointmentCards.Add(card);

            try
            {
                Context.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
                return false;
            }
        }

        private void BtnSaveAndClose_Click(object sender, RoutedEventArgs e)
        {
            if (Save())
                Close();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _mw.UpdateCardsList();
        }

        private void btnChoicePacient_Click(object sender, RoutedEventArgs e)
        {
            PacientChoiceWindow window = new PacientChoiceWindow(this);
            window.Show();
        }

        private void btnChoiceDoctor_Click(object sender, RoutedEventArgs e)
        {
            DoctorChoiceWindow window = new DoctorChoiceWindow(this);
            window.Show();
        }
    }
}
