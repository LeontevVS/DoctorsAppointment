   M S B A M L   `   `   `  ����M  IDoctorsAppointment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DoctorsAppointmentDoctorsAppointment  5   	   #    DoctorsAppointment.CardWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:DoctorsAppointment     5   	   -   5          � Title$  
CardWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $��80 �6   �� 5      �� 5      $��80 �6   �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      .+�5   
   �� $ ��Запись к врачу��6   $��40(�6*   $��5��5      $��Center=�5      $��Center=�61   �� 5   
   $��Дата��6   $��1��6    $��2��60   $
��Left=�6=   $��Center=�6X   �� 5   
   $��Пациент��6   $��1��6#   $��3��63   $
��Left=�6@   $��Center=�6[   �� 5   
   $��Врач��6   $��1��6    $��4��60   $
��Left=�6=   $��Center=�6X   (  "System.Windows.Controls.DatePicker  5    
   -   5          Name$ dpBeginDate��5       $��2��6H   $��2��6X   $��Center=�6e   $��25��6�      FirstDayOfWeek$ Monday=�6�      SelectedDateFormat$
 Long=�6�      SelectedDate 6*   �� *Date+6�   �� 5!   
   -   5         ��Name$ 	tbPacient��5!       �� 
IsReadOnly . $��2��6U   $��3��6e   $��Center=�6r   $��20��6�   ��67   �� *Pacient.Name+6�   �� 5"   
   -   5        	 ��Name$	 btnChoicePacient��5"      $��3��6+   $��3��68   $��20��6H   $��70��6T   $��
Выбор��6_   6o   �� 5#   
   -   5        $ tbDoctor��5#       . $��2��6S   $��4��6c   $��Center=�6p   $��20��6�   ��66   �� *Doctor.Name+6�   �� 5$   
   -   5        $	 btnChoiceDoctor��5$      $��4��6*   $��3��67   $��20��6G   $��70��6S   $��
Выбор��6^   6n   �� 5%   
   $��9��6   $��30��5&      $��5��5'      
 �� Orientation$
 
Horizontal=�5(      $��Center=�5)      .+�5*      �� -   5        $	 BtnSave��5-      $��Сохранить��5*      $	��100��5+      $��30��5,      $��0,0,5,0q�5/      �� 50      -   5        $	 BtnClose��53      $��Закрыть��50      $	��100��51      $��30��52      $��5,0,5,0q�55      �� 56      -	   5        $	 BtnSaveAndClose��59      $*��$Сохранить и закрыть��56      $	��130��57      $��30��58      $��5,0,0,0q�5;      5<      5=      5>      