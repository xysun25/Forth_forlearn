program main
    implicit none
    ! 一维数组，声明：数据类型 数组名（数组大小）
    integer arr(10)  ! 一维数组arr，可以装10个整数
    ! 二维数组，声明：数据类型 数组名（size1,size2）
    integer arr(2,3)   ! 二维整型数组
    integer arr(1:5)
    ! 一维数组赋值方法
    integer a(5)
    data a/1,2,3,4,5/
    ! 或
    integer a(5)
    data a/5*3/   ! 5个3
    ! 或
    integer::a(5)=(/1,2,3,4,5/)
    ! 或隐含式
    integer a(5)
    integer i 
    data (a(i),i=1,4)/1,2,3,4/   ! i=1,4表示索引,1到4，a5没有赋值
    
    ! 隐含式循环应用于二维数组的赋值
    integer a(2,2)
    integer i,j
    data （(a(i,j),i=1,2),j=1,2)/1,2,3,4/   ! a(1,1)=1 a(2,1)=2 a(1,2)=3 a(2,2)=4
    
    integer::i,j   ! 声明两个整型变量i,j
    integer::arr(3,4)   ! 声明一个二维数组arr，三行四列
    ! 初始化
    data((a(i,j),i=1,3),j=1,4)/1,2,3,4,5,6,7,8,9,10,11,12/
    ! 1  2  3  4          ! 1 4 7 10
    ! 5  6  7  8          ! 2 5 8 11
    ! 9  10  11  12       ! 3 6 9 12
    write(*,*)a(2,4)
    
     implicit none 
     integer:: i,j
     integer::a(4),b(3,4)   ! 定义一个一维数组a和一个二维数组b
     ! 第一个循环
     first:forall(i=1,4)   ! i从1循环到4
         a(i)=3            ! a(1)=3,a(2)=3, a(3)=3
     end forall first
     write(*,*)a
     ! 第二个循环
     second: forall(i=1:3,j=1,4)   ! i 从1循环到3，j从1循环到4
         b(i,j)=i+j              ! i+j的值赋给b(i,j)
     end forall second
     write(*,*)b
     ! 第三个循环
     third: forall(i=1:3,j=1:4,b(i,j)<5)    ! 最后添加了一个条件判断，当循环满足条件时
         b(i,j)=0                           ! 才执行后面代码
     end forall third
     write(*,*)b
    
     
     
    
    
    
    
    
    
    
    
    