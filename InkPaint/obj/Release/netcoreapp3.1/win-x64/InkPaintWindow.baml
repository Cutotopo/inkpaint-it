   M S B A M L   `   `   `  ���� C  ?InkPaint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:InkPaintInkPaint      InkPaint.InkPaintWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:InkPaint     M IFluent, Version=8.0.0.0, Culture=neutral, PublicKeyToken=3e436e32a8c5546fFluenturn:fluent-ribbon    � WindowStartupLocation$  CenterScreen=� � Title$: 4InkPaint Beta 0.0.0.1 [francyink compatibility mode]��$	��450��$	��800��.���  � ColumnDefinitions �� .+�� 
�������.+��� -    ��Name$ 	Quadretti��$	��Top=�$
��Left=�$
��1920��$
��1080��$��./squares1920.png��$y�Hidden=��� -   $ Righe��$	��Top=�$
��Left=�$
��1920��$
��1080��$��./rows1920.png��$y�Hidden=��� -   $ Sfondo��$	��Top=�$
��Left=�$
��1920��$
��1080���� -    ��Name$ InkPanel�� �� 
Background
 ���� $	��Top=�$
��1080��$
��Left=�$
��1920��  Fluent.Ribbon  -     Name$ FRibbon��$��0��   Menu   Fluent.Backstage     Content.    Fluent.BackstageTabControl  .@�  Fluent.BackstageTabItem  	   Header$	 Informazioni sul file��.��� 
 � Orientation$
 Vertical=�.+�� $
 
Horizontal=�.+��� 
�������$��Tipo di file:��$��Italic$��� 
�������$ ��File di FrancyInk (*.fink)��  Fluent.SeparatorTabItem    Fluent.Button  -      Header$ Nuova tavola��  -   $
 Apri��  -   $ Salva��  $	 Salva con nome��
 � Tag$ InkPaint.Views.Blank2Page��.��  -	   $ Sfoglia��  $	 Evidenziatore��.��� $
 Vertical=�.+�  -
   $ Attiva evidenziatore��    $	 Input��.��� $
 Vertical=�.+�  $ Entrambi��${�False��
���   �  $ 
Solo mouse��
���   �  $ 
Solo penna��${�False��
���   �    $	 Sfondo��.��� $
 Vertical=�.+�  -   $ Carica immagine��
���   �  -   $ Rimuovi immagine��
���   �    $	 Stampa��.���� 
�������$��Non implementata.��    -   $ Chiudi��   Tabs.   Fluent.RibbonTabItem     Header$ Penna��   Groups.   Fluent.RibbonGroupBox  $��Spessore del tratto��.@�	  Fluent.ComboBox	  $	��150��.@��� -   $	��1,0�� �� 
IsSelected$ False���� -    ��Name$ Thickness15Item��$��1,5 (predefinito)��$ False���� -   $	��2,0��$ False���� -   $	��2,5��$ False���� -   $	��3,0��$ False���� -   $	��3,5��$ False���� -   $	��4,0��$ False���� -   $	��4,5��$ False���� -   $	��5,0��$ False���� -   $	��5,5��$ False���� -   $	��6,0��$ False���� -   $	��6,5��$ False��  -   $ 
Ripristina��  $��Colore del tratto��.@�  -   
���   �  -   
����  �  -   
���  ��  -   
��� ���  -   
��� � �  $��Opzioni��.@��� $	��128��
�������
�������.@��� -    $��Disegno��$
 True���� -!   $��	Seleziona���� -"   $��Gomma���� -#   $��Elimina linea���� -$   $��Sola lettura��  $ 	Strumenti��.   $��Penna��.@�  -%   $ Gomma��  $��Colore��.@�
  Fluent.CheckBox
  -&    
  Header$ Evidenziatore��  $ Visualizzazione��.   $
��Zoom��.@�  -'   $ Aumenta��  -(   $ Riduci��  $��Guide��.@�	  $	��150��.@��� -)   $��Nessuna guida��$
 True���� -*   $��	Quadretti���� -+   $��Righe��  $��Altro��.@�
  -,   $ Schermo intero�� d� 	IsChecked$ FalseY�  $ Sfondo��.   $��Gestione file��.@�  --   $ Carica immagine��  -.   $ Rimuovi immagine����  �� Orientation$ 
Horizontal=�$��20��$��Bottom=�
�������.+��� -/    ��Name$ LatestEvent��
������  �� TextAlignment$ Center=�$	��256��$
��Left=�$��20��$	��Top=�
�������${�False���� -0   $ LatestEventTime��
������ $ Center=�$	��256��$
��Left=�$��20��$	��Top=�
�������${�False���� -1    ��Name$ BackgroundPath��
������ $ ��Nessuna immagine caricata.��$	��256��$
��Left=�$��20��$	��Top=�
���   �${�False��