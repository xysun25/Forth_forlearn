program main
    implicit none
    ! һά���飬�������������� �������������С��
    integer arr(10)  ! һά����arr������װ10������
    ! ��ά���飬�������������� ��������size1,size2��
    integer arr(2,3)   ! ��ά��������
    integer arr(1:5)
    ! һά���鸳ֵ����
    integer a(5)
    data a/1,2,3,4,5/
    ! ��
    integer a(5)
    data a/5*3/   ! 5��3
    ! ��
    integer::a(5)=(/1,2,3,4,5/)
    ! ������ʽ
    integer a(5)
    integer i 
    data (a(i),i=1,4)/1,2,3,4/   ! i=1,4��ʾ����,1��4��a5û�и�ֵ
    
    ! ����ʽѭ��Ӧ���ڶ�ά����ĸ�ֵ
    integer a(2,2)
    integer i,j
    data ��(a(i,j),i=1,2),j=1,2)/1,2,3,4/   ! a(1,1)=1 a(2,1)=2 a(1,2)=3 a(2,2)=4
    
    integer::i,j   ! �����������ͱ���i,j
    integer::arr(3,4)   ! ����һ����ά����arr����������
    ! ��ʼ��
    data((a(i,j),i=1,3),j=1,4)/1,2,3,4,5,6,7,8,9,10,11,12/
    ! 1  2  3  4          ! 1 4 7 10
    ! 5  6  7  8          ! 2 5 8 11
    ! 9  10  11  12       ! 3 6 9 12
    write(*,*)a(2,4)
    
     implicit none 
     integer:: i,j
     integer::a(4),b(3,4)   ! ����һ��һά����a��һ����ά����b
     ! ��һ��ѭ��
     first:forall(i=1,4)   ! i��1ѭ����4
         a(i)=3            ! a(1)=3,a(2)=3, a(3)=3
     end forall first
     write(*,*)a
     ! �ڶ���ѭ��
     second: forall(i=1:3,j=1,4)   ! i ��1ѭ����3��j��1ѭ����4
         b(i,j)=i+j              ! i+j��ֵ����b(i,j)
     end forall second
     write(*,*)b
     ! ������ѭ��
     third: forall(i=1:3,j=1:4,b(i,j)<5)    ! ��������һ�������жϣ���ѭ����������ʱ
         b(i,j)=0                           ! ��ִ�к������
     end forall third
     write(*,*)b
    
     
     
    
    
    
    
    
    
    
    
    