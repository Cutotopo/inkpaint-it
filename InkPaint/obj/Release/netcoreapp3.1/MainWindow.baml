   M S B A M L   `   `   `  ���� C  ?InkPaint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:InkPaintInkPaint      InkPaint.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:InkPaint     M IFluent, Version=8.0.0.0, Culture=neutral, PublicKeyToken=3e436e32a8c5546fFluenturn:fluent-ribbon    � Title$  InkPaint Beta 0.0.0.1��$	��450��$	��800��.���  � ColumnDefinitions �� $
��399* ��� $
��401* �.+��� -    ��Name$ InkPanel�� �� 
Background
 ���� $	��Top=�$��2��$
��1080��$
��Left=�$
��1920��  Fluent.Ribbon  -     Name$ FRibbon��$��0��$��2��   Menu   Fluent.Backstage     Content.    Fluent.BackstageTabControl  .@�  Fluent.Button  -      Header$ Nuova tavola��  -   $
 Apri��  $ Salva��  Fluent.BackstageTabItem     Header$ Salva con nome��
	 � Tag$	 InkPaint.Views.Blank2Page��  $ Evidenziatore��  $ Input��  $ Sfondo��  $ Stampa��  -   $ Chiudi��  -   $ Versione precedente��
   Tabs.
   Fluent.RibbonTabItem     Header$ Penna��   Groups.   Fluent.RibbonGroupBox  $��Spessore del tratto��.@�  Fluent.ComboBox  $	��150��.@��� -   $	��1,0�� �� 
IsSelected$ False���� -    ��Name$ Thickness15Item��$��1,5 (predefinito)��$ False���� -	   $	��2,0��$ False���� -
   $	��2,5��$ False���� -   $	��3,0��$ False���� -   $	��3,5��$ False���� -   $	��4,0��$ False���� -   $	��4,5��$ False���� -   $	��5,0��$ False���� -   $	��5,5��$ False���� -   $	��6,0��$ False���� -   $	��6,5��$ False��  -   $ 
Ripristina��   	LargeIcon$ ./Icons/Default.png��  $��Colore del tratto��.@�  -   
���   �  -   
����  �  -   
���  ��  -   
��� ���  -   
��� � �  $ 	Strumenti��.   $��Penna��.@�  -   $ Gomma��$ ./Icons/Gomma.png��  $��Colore��.@�	  Fluent.CheckBox	  -    	  Header$ Evidenziatore��  $ Visualizzazione��.   $
��Zoom��.@�  -   $ Ingrandisci��$ ./Icons/zoomin.png��  -   $ Rimpicciolisci��$ ./Icons/zoomout.png��  $��Guide��.@�	  $ 	Righe (d)��	  $ Quadretti (d)��  $ Sfondo��.   $��Gestione file��.@�  $ Carica immagine (d)��$ ./Icons/loadback.png��  $ Rimuovi immagine (d)��$ ./Icons/removeback.png����  �� Orientation$ 
Horizontal=�$��20��$��Bottom=�
�������$��2��.+��� -    ��Name$ LatestEvent��
������ $	��256��$
��Left=�$��20��$	��Top=�
�������${�False���� -   $ LatestEventTime��
������ $	��256��$
��Left=�$��20��$	��Top=�
�������${�False���� -   $ BackgroundPath��
������ $	��256��$
��Left=�$��20��$	��Top=�
�������${�False��