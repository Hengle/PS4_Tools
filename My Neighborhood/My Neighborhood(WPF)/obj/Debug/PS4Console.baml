   M S B A M L   `   `   `  ����H  DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   O KMy Neighborhood(WPF), Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:My_Neighborhood_WPF_My_Neighborhood_WPF_ 5   	   %   My_Neighborhood_WPF_.PS4Console   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   RControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:My_Neighborhood_WPF_     5   	   -   5          � Title$  Console��5	   	   $��1299.3��6   $	��480��6(    � Icon$ Images/Obris.ico��65    � WindowStartupLocation$ CenterScreen=�6M   &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   +  %System.Windows.Controls.Ribbon.Ribbon  -   5          Name$ Ribbon��5      
������� �� SelectedIndex$ 1��64   
���   � J� RenderTransformOrigin$ 0.5,0.5&�6Y      HelpPaneContent 5      1  +System.Windows.Controls.Ribbon.RibbonButton  5      	   SmallImageSource$	 Images/icons8-help-64.png��6   
   ApplicationMenu
 5      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5      5  /System.Windows.Controls.Ribbon.RibbonMenuButton   SmallImageSource$ Images\favicon.ico��6(      Label$
 File��6N   $y�	Collapsed=�6[   .@�5       >  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  -   5          Name$ 	MenuItem1��5!   7   $��Hello _Ribbon��5    0   3  -System.Windows.Controls.Ribbon.RibbonMenuItem   ImageSource$ Images\Hood1.png��5"   7   5#      .@�5%      .  (System.Windows.Controls.Ribbon.RibbonTab  -   5          Name$ FileTab��5%      $
��File��5&        5'      -   5        $ HomeTab��5'      $
��Home��5(      .@�5*      0	  *System.Windows.Controls.Ribbon.RibbonGroup	  -   5         	 Name$ rgbxClipboard��5*      $��	Clipboard��5+   %   .@�5,        -   5          Name$ btnCopy��5,   #      LargeImageSource$ Images\icons8-copy-52.png��5-   *      Label$
 Copy��5.   *   67     5/      -   5        $ btnPaste��5/   #   $ 	 Images\icons8-paste-96.png��65   $ Paste��6c     50      -	   5        $ btnSelectAll��50   #   $$	 Images\icons8-check-all-96.png��69   $ 
Select all��6k   6~   3
  -System.Windows.Controls.Ribbon.RibbonCheckBox
  51      -
   5         
 Name$ btnCopyTimeStamp��51   7    d� 	IsChecked$
 TrueY�6&    
  Label$ Copy time stamp��6Q   52      	  53      -   5        $ rgbxRun��53      $��	Processes��54   %   .@�55        -   5        $ btnClearAll��55   #   $#	 Images\icons8-multiply-52.png��68   $ 	Clear all��6i   6{     56      -   5        $ btnRefreshProcesses��56   #   $/	 )Images\icons8-update-left-rotation-96.png��6@   $ Refresh processes��6}   6�     57      -   5          Name$ btnProcessChanVis��57   '   $ Images\icons8-eye-96.png��6B   $  Process channel visibility��6n   {�.  .@�58        59      5:      	  5;      -   5        $ rgbxTargets��5;      $��Channel��5<   %   .@�5=      
  -   5        $ cbxWordwrap��5=   %   $
 TrueY�5>   *   $ 	Word wrap��5?   *   
  5@      -   5        $ cbxshowtime��5@   %   $
 TrueY�5A   *   $ Show time stamps��5B   *     5C      -   5        $ txtEscapeChar��5C   '   $ Images\icons8-line-96.png��5D   )   $ Unknown ESC��5E   *   .@�5F        5G      
  5H      -   5        $ cbxEmptyHide��5H   %   $
 TrueY�5I   *   $ Auto-hide empty channels��5J   *   
  5K      -   5        $ cbxPreventoutput��5K   %   $ FalseY�5L   *   $  Prevent interleaved output��5M   *   
  5N      -   5        $ cbxEchoConsoleimput��5N   %   $
 TrueY�5O   *   $ Echo console input��5P   *   
  5Q      -   5        $ cbxScrollimput��5Q   %   $
 TrueY�5R   *   $ Auto-Scroll��5S   *   $��Auto-Scroll
��6�   $��	0,0,0,0.4q�6�   5T      	  5U      -   5        $ rgbxData��5U      $
��Data��5V   %   .@�5W        -   5        $ btnPreferences��5W   #   $# Images\icons8-settings-96.png��5X   *   $ Preferences��5Y   *   6>     5Z      -   5        $ btnResetlayout��5Z   #   $!	 Images\icons8-layout-96.png��5[   *   $ Reset layout��5\   *     5]      -   5        $ btnOpenLogDirectory��5]   #   $(	 "Images\icons8-opened-folder-96.png��5^   *   $ Open log directory��5_   *   6E     5`      -   5        $ btnTheme��5`   '   $' !Images\icons8-change-theme-96.png��5a   *   $ Theme��5b   *   .@�5c        5d      5e      5f      5g      �� 5h   
   -   5         ��Name$ 
tabControl��5h      $��2��6)   $��0,138,-0.2,0.4q�6:   $ 0.5,0.5&�6R   .@�5i      �� $	��All��6   
��� ���+   %MahApps.Metro.Controls.ControlsHelper   HeaderFontSize$ 12Q�67   .��5j      � ���	#FFE5E5E5 � ColumnDefinitions 5k      �� 5l      $	��21* �6+   �� 5m      $
��264* �6+   �� 5n      $	��11* �6+   �� 5o      $
��991* �6+   .+�5q      �� -   5         ��Name$ rtbAll��5q   "   $��4��62   $��0,0,-0.8,-0.6q�6F   $ �� HorizontalScrollBarVisibility$ Visible=�6]   " �� VerticalScrollBarVisibility$
 Auto=�6�   . �5r      /� .T�5s      J� .*�6(   .*�5t   "   �� -   5         ��Name$ rtbText��5t   &   $� ��67   5u      5v      5w      5x      5y      5}      � 5~   
   $
��Left=�6   $��45��6*   $��10,266.6,0,0q�66   $��1��6L   $	��Top=�6Y   $
��1273��6q   5�      5�      