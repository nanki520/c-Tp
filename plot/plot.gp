# Gnuplot script example
set terminal png
set output 'combined_plot.png'

# 设置坐标范围
set xrange [0:10]
set yrange [0:0.4]

# Add labels and title
set xlabel "t"
set ylabel "u"
set title "Solutions"

a_data = 'U0.data'
b_data = 'Unp1.data'
c_data = 'U_ref.data'
d_data = 'unp1_2nd_order.data'


# 绘制函数图
plot a_data using (0.1*$0):1 with lines title 'Initial Condition', \
     b_data using (0.1*$0):1 with lines title 'First Order upwind solution',\
     c_data using (0.1*$0):1 with lines title 'exact solution',\
     d_data using (0.1*$0):1 with lines title 'Second Order Lax-Wendroff solution'

