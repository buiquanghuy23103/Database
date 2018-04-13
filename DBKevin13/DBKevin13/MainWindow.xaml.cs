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

namespace DBKevin13
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void myChoise_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (myChoise.SelectedIndex)
            {
                case 0:
                    ShowNothing();
                    break;
                case 1:
                    ShowAllStaff();
                    break;
                case 2:
                    ShowStaffABC();
                    break;
                case 3:
                    ShowEstateAgents();
                    break;
                case 4:
                    ShowClientComment();
                    break;
                case 5:
                    ShowTargetByType();
                    break;
                default:
                    break;
            }
        }

        private void ClearDataGrid()
        {
            myDisplay.ItemsSource = null;
            myDisplay.Columns.Clear();
        }
        private void NewColumn(string header, string binding)
        {
            myDisplay.Columns.Add(new DataGridTextColumn
            {
                Header = header,
                Binding = new Binding(binding)
            });
        }
        private void ShowNothing() => ClearDataGrid();
        private void ShowAllStaff()
        {
            //Get access to the database
            ClearDataGrid();
            NewColumn("First Name", "FirstName");
            NewColumn("Family Name", "FamilyName");
            NewColumn("Position", "Position");
            using (DREAMHOMEEntities myEntity = new DREAMHOMEEntities())
            {
                //Use LINQ to make queries
                var chosenColumns = myEntity.Staffs.Select(item => new
                {
                    item.FamilyName,
                    item.FirstName,
                    item.Position
                });
                //Datagrid ItemsSource
                myDisplay.ItemsSource = chosenColumns.ToList();//If you ignore ToList() method you get nothing
            }
        }
        private void ShowStaffABC()
        {
            //Get access to the database
            ClearDataGrid();
            NewColumn("First Name", "FirstName");
            NewColumn("Family Name", "FamilyName");
            NewColumn("Position", "Position");
            using (DREAMHOMEEntities myEntity = new DREAMHOMEEntities())
            {
                //Use LINQ to make queries
                var chosenColumns = myEntity.Staffs
                                    .OrderBy(item => item.FamilyName)
                                    .Select(item => new
                {
                    item.FamilyName,
                    item.FirstName,
                    item.Position
                });
                myDisplay.ItemsSource = chosenColumns.ToList();//If you ignore ToList() method you get nothing
            }
        }
        private void ShowEstateAgents()
        {
            //Get access to the database
            ClearDataGrid();
            NewColumn("First Name", "FirstName");
            NewColumn("Family Name", "FamilyName");
            NewColumn("Salary", "Salary");
            using (DREAMHOMEEntities myEntity = new DREAMHOMEEntities())
            {
                //Use LINQ to make queries
                var chosenColumns = myEntity.Staffs
                                    .Where(item => item.Position.Contains("Estate"))
                                    .Select(item => new
                {
                    item.FamilyName,
                    item.FirstName,
                    item.Salary
                                    });
                //Datagrid ItemsSource
                myDisplay.ItemsSource = chosenColumns.ToList();//If you ignore ToList() method you get nothing
            }
        }
        private void ShowClientComment()
        {
            //Get access to the database
            ClearDataGrid();
            NewColumn("First Name", "FirstName");
            NewColumn("Family Name", "FamilyName");
            NewColumn("Comments", "CommentsGiven");
            using (DREAMHOMEEntities myEntity = new DREAMHOMEEntities())
            {
                //Use LINQ to make queries
                var chosenColumns = myEntity.Clients
                                    .Join(myEntity.Viewings, 
                                    client => client.Id, 
                                    viewing => viewing.ClientId, 
                                    (client, viewing) => new
                {
                    client.FirstName,
                    client.FamilyName,
                    viewing.CommentsGiven
                });
                //Datagrid ItemsSource
                myDisplay.ItemsSource = chosenColumns.ToList();//If you ignore ToList() method you get nothing
            }
        }
        private void ShowTargetByType()
        {
            ClearDataGrid();
            using (DREAMHOMEEntities data = new DREAMHOMEEntities())
            {
                var query = from item in data.PropertyForRents
                            group item by item.TypeOfProperty into targetGroup
                            orderby targetGroup.Key
                            select new
                            {
                                Type = targetGroup.Key,
                                Available = targetGroup.Count()
                            };
                myDisplay.ItemsSource = query.ToList();
            }
            NewColumn("Type", "Type"); NewColumn("Available", "Available");
        }
    }
}
