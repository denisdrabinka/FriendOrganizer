   M S B A M L   `   `   `  ����M  IFriendOrganizer.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:FriendOrganizer.UI.ViewFriendOrganizer.UI.View  5      .    (FriendOrganizer.UI.View.FriendDetailView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:FriendOrganizer.UI.View     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   �� $��	Firstname��6   $��
10 10 10 0q�6$   �� 5   
   $��1��6   $��
10 0 10 10q�5   :   ��5      �� *Friend.FirstName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5   :   �� 5   
   $��2��6   $��Lastname��6   $
��10 0q�60   �� 5   
   $��3��6   $��
10 0 10 10q�5   ;   ��5      �� *Friend.LastName+$ TwoWay=�$ PropertyChanged=�5   ;   �� 5    
   $��4��6   $��Email��6   $
��10 0q�6-   �� 5!   
   $��5��6   $��
10 0 10 10q�5"   ;   ��5!      �� *Friend.Email+ �� TargetNullValue$  ��$ TwoWay=�$ PropertyChanged=�5"   ;   �� 5$   
   $��6��6   $��Favorite Language��6   $
��10 0q�69   �� 5%   
   $��7��6    �� DisplayMemberPath$ DisplayMember��5&       �� SelectedValuePath$ Id��5'      $��
10 0 10 10q�5)      ��5%   !   �� *ProgrammingLanguages+ �� SelectedValue 5(      �� *Friend.FavoriteLanguageId+$ TwoWay=�5)      ]� 5+   
   $��8��6   $��10q�6!   .+�5,      �� $��Right=�6   .+�5-      �� $	��Add��6   $	��125��6'   $��10q�64   ��5.      �� *AddPhoneNumberCommand+�� 5/      $��Remove��6   $	��125��6*   $��10q�67   ��50      �� *RemovePhoneNumberCommand+51      &   System.Windows.Controls.DataGrid  52         AutoGenerateColumns .     RowHeaderWidth$ 0Q�54   -   ��52      �� *PhoneNumbers+	 �� SelectedItem	 53      �� *SelectedPhoneNumber+$ TwoWay=�
   Columns
 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$ Phone Numbers��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6@      DataGridColumnStyle1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle# [  57        DataGridEditingColumnStyle   EditingElementStyle# [ 58         Binding 59      �� *Number+$ TwoWay=�$ PropertyChanged=�5;      5<      �� 5>   
   $��9��6    �� Orientation$ 
Horizontal=�6"   .+�5?      �� $
��Save��6   $	��125��6$   $��10q�60   ��5@      �� *SaveCommand+�� 5A      $��Delete��6   $	��125��6&   $��10q�63   ��5B      �� *DeleteCommand+5C      5E      5F      