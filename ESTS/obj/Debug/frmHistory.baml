   M S B A M L   `   `   `  ����  ESTS    ESTS.frmHistory   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  6F     � Title$  History��5   	   $	��550��6   $
��1000��6&    � WindowStartupLocation$ CenterScreen=�63    � Icon$ iconwifi.png��6X    � 	Resources 5	       �� MergedDictionaries �� Source�� 5
   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $z tpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.DeepPurple.xaml?�6%   �� 5      $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�6%   %    5      ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ White��6   � 5      $ 	#FF579DE4��6   	 � Offset$	 1Q�6-   5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $
��455* �6   �� 5      $��80 �6   .+�5   
   � 
 5      �� 5       $
��172* �6    �� 5!      $
��269* �6    .+�5#      &   System.Windows.Controls.DataGrid  -   5          Name$
 grid��5&         AutoGenerateColumns .  $��20q�5'         CanUserSortColumns .    CanUserReorderColumns .     CanUserAddRows .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�5,         ColumnHeaderPadding$ 8q�5-      $��1��69   $��2��6M   ��5(      �� *Users+��5-   ^   Z�    Columns 5/      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6)      Header$
 Date��66   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *
col_Date+  52      $
 Auto 6)   $
 Time��66    6D   �� *
col_Time+  53      $
 Auto 6)   $ Wi_Fi Adapter��66    6M   �� *col_WifiAdapter+  54      $
 Auto 6)   $ Area Network��66    6L   �� *col_AreaWirelessNetwork+  55      $
 Auto 6)   $ Security Issues��66    6O   �� *col_SecurityLoginProblem+  56      $
 Auto 6)   $ Ethernet��66    6H   �� *col_WorksOnEthernet+  57      $
 Auto 6)   $ Default Settings��66    6P   �� *col_RouterDefaultSetting+  58      $
 Auto 6)   $ Interferers Signals��66    6S   �� *col_InterfererSignal+  59      $
 Auto 6)   $ Firmwork UpToDate��66    6Q   �� *col_RouterFirmworkUpdated+  5:      $
 Auto 6)   $ Firewall Blocking��66    6Q   �� *col_BlockedByFirewall+  5;      $
 Auto 6)   $ Caples Issues��66    6M   �� *
col_Cables+  5<      $
 Auto 6)   $ Router Internet��66    6O   �� *col_RouterInternet+  5=      $
 Auto 6)   $ 
Adapter on��66    6J   �� *col_WifiAdapterOn+  5>      $
 Auto 6)   $ Active Router��66    6M   �� *col_RouterActive+  5?      $
 Auto 6)   $
 Home��66    6D   �� *col_IsNetworkHome+  5@      $
 Auto 6)   $ Other Networks��66    6N   �� *col_GetOtherNetwork+  5A      $
 Auto 6)   $ Support GHz��66    6K   �� *col_Support5GHz+  5B      $
 Auto 6)   $ Close Router��66    6L   �� *col_CloseRouter+   RowDetailsTemplate 5D      �� 5E      .R�5F      �� $��0,0,0,2q�6!    �� Padding$ 10q�6;   
����������	#FF081B93._�5G      ��  �� Orientation$ Vertical=�6)   .+�5H   "   �� $ 
Horizontal=�6-   .+�5I   &   �� $��15(�60   $��Goal: ��6>   $
��Bold"�6L   
���p�$��Center=�6x   �� 5J   &   $��15(�60   
���p�$��Center=�6r   ��6X   �� *
col_Goal+6r   5K   #   5M      5N      5O      5Q      5R      � 5S   
   $��1��6   .+�5T      �� -   5         ��Name$ 
btnHistory��5T      $��Center=�6)   $
��Left=�6D   $��47��6_   $
��20,0q�6k   $	��185��6y   ���	#FF212427���	#FF222528.��5U      �� $ Vertical=�6   .+�5V      �� $��18(�6    $��Segoe UI Symbol)�6.   �� 6L   $�Clear History��6P   6h   5W      5X      �� 5Y      -   5        $ 	btnGoBack��5Y      $��Center=�6(   $
��Left=�6C   $��47��6^   $��220,0q�6j   $	��185��6y   
�������
����������	#DD000000.��5Z      �� $ Vertical=�6   .+�5[      �� $��18(�6    $��Segoe UI Symbol)�6.   �� 6L   $�Go Back��6P   6b   5\      5]      �� 5^      -   5        $ btnExit��5^      $��Right=�6'   $��47��6C   $
��20,0q�6O   $��Center=�6]   $	��185��6x   
���������6�   Z� ��6�   Z� .��5_      �� $ Vertical=�6   .+�5`      �� $��18(�6    $��Segoe UI Symbol)�6.   �� 6L   $�Exit System��6P   6f   5a      5b      5c      5d      5e      