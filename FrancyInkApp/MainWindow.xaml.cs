using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace FrancyInkApp
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

        private void TastoDestro(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Matrix m = new Matrix();
            m.Scale(1.1d, 1.1d);
            ((InkCanvas)sender).Strokes.Transform(m, true);
        }

        protected override void OnClosing(CancelEventArgs e)
        {
            e.Cancel = true;
            MessageBoxResult result = MessageBox.Show("Salvare il documento prima di uscire?", "FrancyINK", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    SaveFileDialog saveFileDialog1 = new SaveFileDialog();
                    saveFileDialog1.Filter = "File di FrancyINK (*.fink)|*.fink";

                    if (saveFileDialog1.ShowDialog() == true)
                    {
                        FileStream fs = new FileStream(saveFileDialog1.FileName,
                                                       FileMode.Create);
                        System.Windows.Ink.StrokeCollection strokes = FrancyINK.Strokes;
                        strokes.Save(fs);
                        fs.Close();
                    }
                    break;
                case MessageBoxResult.No:
                    System.Windows.Application.Current.Shutdown();
                    break;
                case MessageBoxResult.Cancel:
                    break;
            }
        }


        private void ClickApri(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.Filter = "File di FrancyINK (*.fink)|*.fink";

            if (openFileDialog1.ShowDialog() == true)
            {
                FileStream fs = new FileStream(openFileDialog1.FileName,
                                               FileMode.Open);
                FrancyINK.Strokes = new StrokeCollection(fs);
                fs.Close();
            }
        }

        private void ClickSalva(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            saveFileDialog1.Filter = "File di FrancyINK (*.fink)|*.fink";

            if (saveFileDialog1.ShowDialog() == true)
            {
                FileStream fs = new FileStream(saveFileDialog1.FileName, FileMode.Create);
                System.Windows.Ink.StrokeCollection strokes = FrancyINK.Strokes;
                strokes.Save(fs);
                fs.Close();
            }
        }

        private void ClickIngrandisci(object sender, RoutedEventArgs e)
        {
            Matrix m = new Matrix();
            m.Scale(1.1d, 1.1d);
            ((InkCanvas)FrancyINK).Strokes.Transform(m, true);
        }

        private void ClickRiduci(object sender, RoutedEventArgs e)
        {
            Matrix m = new Matrix();
            m.Scale(0.9d, 0.9d);
            ((InkCanvas)FrancyINK).Strokes.Transform(m, true);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Color = Colors.Black;
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Color = Colors.Green;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            foreach (var stroke in FrancyINK.Strokes)
            {
                FrancyINK.DefaultDrawingAttributes.Color = Colors.Blue;
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            foreach (var stroke in FrancyINK.Strokes)
            {
                FrancyINK.DefaultDrawingAttributes.Color = Colors.Yellow;
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Color = Colors.Red;
        }

        private void dimensione_1(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Width = 1;
            FrancyINK.DefaultDrawingAttributes.Height = 1;
        }

        private void dimensione_2(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Width = 10;
            FrancyINK.DefaultDrawingAttributes.Height = 10;
        }

        private void dimensione_3(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Width = 20;
            FrancyINK.DefaultDrawingAttributes.Height = 20;
        }

        private void dimensione_4(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Width = 30;
            FrancyINK.DefaultDrawingAttributes.Height = 30;
        }

        private void dimensione_5(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.Width = 40;
            FrancyINK.DefaultDrawingAttributes.Height = 40;
        }

        private void ClickElimina(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("La tavola verrà eliminata. Continuare?", "FrancyINK", MessageBoxButton.YesNo, MessageBoxImage.Question);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    FrancyINK.Strokes.Clear();
                    
                    break;
                case MessageBoxResult.No:
                    break;
            }
        }

        private void Evidenzia(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.IsHighlighter = true;
        }
        private void NoEvidenzia(object sender, RoutedEventArgs e)
        {
            FrancyINK.DefaultDrawingAttributes.IsHighlighter = false;
        }

        private void testbutton(object sender, RoutedEventArgs e)
        {

        }
    }
}
