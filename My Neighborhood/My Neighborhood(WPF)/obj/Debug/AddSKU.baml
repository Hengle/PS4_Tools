   M S B A M L   `   `   `  ����O  KMy Neighborhood(WPF), Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:My_Neighborhood_WPF_My_Neighborhood_WPF_  5   	   !    My_Neighborhood_WPF_.AddSKU   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:My_Neighborhood_WPF_     5   	     � Title$  Add SKU��5   	   $��230.737��6   $��591.479��6*    � Icon$ Images/favicon (1).ico��6:    � WindowStartupLocation$ CenterScreen=�6X   .��5	      � .+�5
   
   �� -   5         ��Name$ groupBox��5
      $��Add a new SKU��6%   $
��Left=�6<   $��	10,10,0,0q�6W   $	��Top=�6j   $	��181��6�   $	��551��6�   .��5      � $��0,0,-0.4,-12.8q�6   .+�5      �� -   5         ��Name$ label��5      $��Target name :��6'   $
��Left=�6?   $��	10,10,0,0q�6Z   $	��Top=�6m   �� 5      $��IP address :��6   $
��Left=�6/   $��	10,41,0,0q�6J   $	��Top=�6]   �� 5      $��File serving directory :��6   $
��Left=�6;   $��	10,72,0,0q�6V   $	��Top=�6i   �� 5      -   5         ��Name$ txtTargetname��5      $
��Left=�61   $��23��6L   $��
176,10,0,0q�6X    �� TextWrapping$
 Wrap=�6l   $�� ��6�   $	��Top=�6�   $	��352��6�   �� 5      -   5        $ txtipaddress��5      $
��Left=�60   $��23��6K   $��
176,41,0,0q�6W   $
 Wrap=�6k   $�� ��6   $	��Top=�6�   $	��318��6�   �� 5      -   5        $ txtfileserdir��5      $
��Left=�61   $��23��6L   $��
176,72,0,0q�6X   $
 Wrap=�6l   $�� ��6�   $	��Top=�6�   $	��318��6�   �� 5      -   5         ��Name$ 
btnAddItem��5      $��Add SKU��6-   $
��Left=�6?   $��453,114,0,0q�6Z   $	��Top=�6o   $��75��6�   6�   �� 5      -   5        $ 
btnLoadIPs��5      $	��...��6-   $
��Left=�6;   $��
499,41,0,0q�6V   $	��Top=�6j   $��29��6�   6�   �� 5      -   5        $ btnDirBrowser��5      $	��...��60   $
��Left=�6>   $��
499,70,0,0q�6Y   $	��Top=�6m   $��29��6�   6�   5      5      5      5      