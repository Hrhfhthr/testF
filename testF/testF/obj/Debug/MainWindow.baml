   M S B A M L   `   `   `  ����@  <testF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:testFtestF  5   	       testF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:testF     5   	     � Title$  Продукты��5   	   $	��495��6   $
��1038��6'   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DataG��5
      $��10,39,178,10q�6"      AutoGenerateColumns .     CanUserAddRows .     
IsReadOnly .    ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6}   $��2��6�    � 	Resources 5      )  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property	 �� Value��%a   '        �� 5      "  6   .�5      ��  � ��	 63   �� *Color+6M   5      5      
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Наименование��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Name+6V     5      $ Поставщик��6%    68   �� *Vendor+6U     5      $ Цена��6%    63   �� *Price+6O     5      $ Скидка��6%    65   �� *
Discount+6T   4  .System.Windows.Controls.DataGridTemplateColumn  5      $" Цена со скидкой��6)      CellTemplate 5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6)   .+�5   "   �� $��Strikethrough{�6C   ��6,   �� *Price+6e   �� 5   "   $�� ��6,   67   �� 5   "   ��6,   �� *	PriceWDis+6I   5      5      5        5       $ Кол-во��6%    65   �� *Count+6Q     5!      $ Описание��6%    67   �� *Description+6Y     5"      $ 
Изобр��6)    5#      �� 5$      .R�5%      �� $��45��6?   $��45��6J   ��6$   �� *	ImgPath+6X   5&      5(      5*      �� 5+   
   -   5         ��Name$ 
CountLabel��5+      $��-��6$   $
��Left=�60   $��10,5,0,0q�6K   $	��Top=�6]   $��18(�6u   $��1��6�   �� 5,   
   -   5         ��Name$ panel��5,      $��
0,93,10,10q�6$   $��Right=�68   $	��163��6T   .+�5-      �� -   5         ��Name$ NameTB��5-      $
��Wrap=�6(   $��-��6<   $��18(�6E    �� TextAlignment$ Center=�6S   �� 5.      -   5         ��Name$ imgProd��5.      $	��100��6%   $	��100��62   �� 5/      -   5        $ 	WoutDisTB��5/      $
��Wrap=�6+   $��-��6?   $��18(�6H   $��Strikethrough{�6V   $ Center=�6v   �� 50      -   5        $ WDisTB��50      $
��Wrap=�6(   $��-��6<   $��18(�6E   $ Center=�6S   52      �� 53   
   -   5         ��Name$ CBSort1��53      $��	0,39,10,0q�6$   $��22��67   $	��Top=�6C   $��Right=�6[   $	��163��6w   $��3��6�   .@�54      �� .��6   
0%-9,99%6%   �� 55      .��6   
10%-14,99%6'   �� 56      .��6   15% и более6(   �� 57      .��6   Все диапазоны6*   58      �� 59   
   -	   5        $ CBSort2��59      $��	0,66,10,0q�6$   $��22��67   $	��Top=�6C   $��Right=�6[   $	��163��6w   $��4��6�   .@�5:      �� .��6   75Сортировать по убыванию цены69   �� 5;      .��6   =;Сортировать по возрастанию цены6<   5<      5>      5?      