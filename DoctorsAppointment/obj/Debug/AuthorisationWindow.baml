   M S B A M L   `   `   `  ����M  IDoctorsAppointment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DoctorsAppointmentDoctorsAppointment  5   	   ,    &DoctorsAppointment.AuthorisationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:DoctorsAppointment     5   	     � Title$  AuthorizationWind��5   	   $	��400��6#   $	��500��60    � 
ResizeMode$ NoResize=�6<    � WindowStartupLocation$ CenterScreen=�6R    � WindowStyle$
 None=�6w   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      .+�5   
   �� $��Авторизация��6   $��40(�6'   $��Center=�5      $��Center=�61   �� 5   
   $��1��6   $��Center=�6"   $��Center=�6?   .+�5      �� $��
Логин��6   �� 5      -   5         ��Name$ tbName��5      $��20��6&   $	��400��62   5      �� 5   
   $��2��6   $��Center=�6"   $��Center=�6?   .+�5      �� $��Пароль��6   G� 5      -   5         G�Name$ 
pbPassword��5      $��20��6.   $	��400��6:   5      �� 5    
   -   5         ��Name$ btnClose��5       $��3��6:   $��50,0,0,0q�6G   $��25��6Y   $��70��6e   $��Закрыть��6p   $
��Left=�6�   �� 5!   
   -   5        $ btnLogin��5!      $��3��6:   $��0,0,50,0q�6G   $��25��6Y   $��70��6e   $��
Войти��6p   $��Right=�6�   5"      5#      