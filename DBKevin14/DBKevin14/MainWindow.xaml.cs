using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace DBKevin14
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private OBSERVABLEEntities myEntities = new OBSERVABLEEntities();
        private bool modifyExistings = false;
        private bool addingNewRow = false;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ShowCourses_Click(object sender, RoutedEventArgs e)
        {
            MyDisplay.ItemsSource = new ObservableCollection<Course>(myEntities.Courses);
        }

        private void MyDisplay_BeginningEdit(object sender, DataGridBeginningEditEventArgs e)
        {
            modifyExistings = true;
        }

        private void MyDisplay_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            if (modifyExistings)
            {
                modifyExistings = false;
                myEntities.SaveChanges();
            }
            if (addingNewRow)
            {
                addingNewRow = false;
                myEntities.Courses.Add( (Course) e.Row.DataContext);
                myEntities.SaveChanges();
            }
        }

        private void MyDisplay_AddingNewItem(object sender, AddingNewItemEventArgs e)
        {
            addingNewRow = true;
        }

        private void MyDisplay_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            
            //User presses Delete key, but doesn't modify rows
            if (e.Key == Key.Delete && !modifyExistings && MyDisplay.SelectedItem != null)
            {
                myEntities.Courses.Remove( (Course) MyDisplay.SelectedItem);
                myEntities.SaveChanges();
            }
        }
    }
}
 