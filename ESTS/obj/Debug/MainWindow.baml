   M S B A M L   `   `   `  ����?  ;ESTS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ESTSESTS  5   	       ESTS.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:ESTS     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$!  Wireless Troubleshooting ES��5	   	   $	��550��6-   $
��1000��6:    � 
ResizeMode$ NoResize=�6G    � WindowStartupLocation$ CenterScreen=�6]    � Icon$ iconwifi.png��6�    � 	Resources 5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $z tpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.DeepPurple.xaml?�6%   �� 5      $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�6%   %    5      ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      � 	 � Color$	 White��6   � 5      $	 	#FF579DE4��6   
 � Offset$
 1Q�6-   5      .��5      �  � RowDefinitions 5   
   �� 5      $��5* �6   �� 5      $��80 �6   .+�5    
   � .+�5"      �� -   5         ��Name$ lblQuestion��5"      $0��*Do you have A wifi adapter in your device?��6)   $
��Left=�6^   $��	50,45,0,0q�6y   $	��Top=�6�   $��25(�6�   $(��"Segoe UI Symbol                   )�6�   $
��Bold"�5#      ��6'   Z� ��5$      �� 5%      $ 0.5,1&�6*   $ 0.5,0&�6;   .��5&      � $	 	#FF3C4853��6'   $
 0.098Q�69   � 5'      $	 	#FE000102��6'   $

 0.96Q�69   5(      5*      �� 5+      -   5         ��Name$ lblGoal��5+      $
��Left=�6)   $��
50,127,0,0q�6D   $	��Top=�6X   $��25(�6p   $
��Wrap=�6~   $	��442��6�   $��OK TEST hello bla bla��6�   $��Segoe UI Symbol)�6�   $��Italic$�6�   ���	#FF07203A$	��304��6  5,      	� 5-      -   5         	�Name$ radioYes��5-      $	��Yes��6,   $
��Left=�6:   $��
50,125,0,0q�6U   $	��Top=�6i   $��25(�6�   $��Center=�6�   ���	#FF3599FF���	#FF3599FF$��Segoe UI Symbol)�6�   $
��Bold"�6  	� 5.      -   5        $ radioNo��5.      $��No��6+   $
��Left=�68   $��202,125,0,0q�6S   $	��Top=�6h   $��25(�6�   $��Center=�6�   ���	#FF3599FF���	#FF3599FF$��Segoe UI Symbol)�6�   $
��Bold"�6  �� 5/       J� RenderTransformOrigin$ 0.639,0.512&�6   $��2,-28,-2,28q�68   z�50      V� 51      .~�52      �� �� 53       �� AngleY$ -0.518Q�6(   �� 54      T� 55       T� Y$
 3.24Q�6-   56      58      �� 59      $��497,-13,-15,-58q�6   $��wifi.png��6-   $
��Fill=�6?   5:      � 5;   
   $��1��6   $��0q�6   .+�5<      �� -   5         ��Name$ btnStartOver��5<      $��Center=�6+   $
��Left=�6F   $��47��6a   $
��20,0q�6m   $	��185��6{   ���	#FF212427���	#FF222528.��5=      ��  �� Orientation$ Vertical=�6   .+�5>      �� $��18(�6    $��Segoe UI Symbol)�6.   �� 6L   $�
Start Over��6P   6e   5?      5@      �� 5A      -   5        $ btnGrid��5A      $��Center=�6&   $
��Left=�6A   $��47��6\   $��220,0q�6h   $	��185��6w   
�������
����������	#DD000000.��5B      �� $ Vertical=�6   .+�5C      �� $��18(�6    $��Segoe UI Symbol)�6.   �� 6L   $�View past history��6P   6l   5D      5E      �� 5F      -   5        $ btnExit��5F      $��Right=�6'   $��47��6C   $
��20,0q�6O   $��Center=�6]   $	��185��6x   
���������6�   Z� ��6�   Z� .��5G      �� $ Vertical=�6   .+�5H      �� $��18(�6    $��Segoe UI Symbol)�6.   Exit System6X   5I      5J      5L      5N      5O      