   M S B A M L   `   `   `  ����M  IDoctorsAppointment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DoctorsAppointmentDoctorsAppointment  5   	   #    DoctorsAppointment.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:DoctorsAppointment     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��31 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��1��6.   $��Center=�6;   .+�5      �� -   5         ��Name$ 
Btn_Create��5      $��Создать��6)   $��	15,3,15,3q�6;   6N   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
DGridCards��5      $��0��6'      AutoGenerateColumns .     
IsReadOnly . ��5      �� 5       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5      -   5        5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Дата��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5      `� 5       �� StringFormat$ {0}.{1}.{2}��6'   .1�5      ��  �� Path$ Date.Day�6&   �� 5      $ 
Date.Month�6&   �� 5      $ 	Date.Year�6&   5      5         5!      $	 Врач��6%   $
 * 6S    63   �� *Doctor.Name+6S     5"      $	 Пациент��6%   $
 * 6W    66   �� *Pacient.Name+6W   5$      5%      5&      