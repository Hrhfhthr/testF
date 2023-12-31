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

namespace testF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public void Load_DB()
        {
            DataG.ItemsSource = App.DBProd.ProdTest.ToList();
        }
        public void CountAll()
        {
            CountLabel.Content = DataG.Items.Count + " из " + App.DBProd.ProdTest.Count();
        }
        public void CheckCB()
        {
            if (DataG.Items.Count == 0)
            {
                MessageBox.Show("Нет товаров с такими параметрами!");
            }
        }
        public void SetInfo(ProdTest a)
        {
            NameTB.Text = a.Name;
            imgProd.Source = new BitmapImage(new Uri($"{a.ImgPath}", UriKind.Relative));
            WoutDisTB.Text = a.Price.ToString();
            WDisTB.Text =a.PriceWDis.ToString();
            var bc = new BrushConverter();
            panel.Background= (Brush)bc.ConvertFrom(a.Color);

        }
        public MainWindow()
        {
            InitializeComponent();
            Load_DB();
            CountAll();
        }

        private void CBSort1_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CBSort1.SelectedIndex == 0)
            {
                DataG.ItemsSource = App.DBProd.ProdTest.Where(a => a.Discount >= 0 && a.Discount <= 9.99).ToList();
                CountAll();
                CheckCB();
            }
            else if (CBSort1.SelectedIndex == 1)
            {
                DataG.ItemsSource = App.DBProd.ProdTest.Where(a => a.Discount >= 10 && a.Discount <= 14.99).ToList();
                CountAll();
                CheckCB();
            }
            else if (CBSort1.SelectedIndex == 2)
            {
                DataG.ItemsSource = App.DBProd.ProdTest.Where(a => a.Discount >= 15).ToList();
                CountAll();
                CheckCB();
            }
            else if (CBSort1.SelectedIndex == 3)
            {
                if (DataG.Items.Count != App.DBProd.ProdTest.Count())
                {
                    if (MessageBox.Show("Вы уверены что хотите сбросить выбор?", "?", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                    {
                        Load_DB();
                        CountAll();
                        CheckCB();
                    }
                    else
                    {

                    }
                }
                else
                {
                    Load_DB();
                    CountAll();
                    CheckCB();
                }
                
            }
        }

        private void CBSort2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CBSort2.SelectedIndex == 0)
            {
                var ex = App.DBProd.ProdTest.ToList();
                var sorted = from i in ex
                             orderby i.Price descending
                             select i;
                DataG.ItemsSource = sorted;
                CountAll();
            }
            else if (CBSort2.SelectedIndex == 1)
            {
                var ex = App.DBProd.ProdTest.ToList();
                var sorted = from i in ex
                             orderby i.Price 
                             select i;
                DataG.ItemsSource = sorted;
                CountAll();
            }

        }

        private void DataG_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            ProdTest SelectedProduct = DataG.SelectedItem as ProdTest;
            SetInfo(SelectedProduct);
        }
    }
}
