import numpy as np
import matplotlib.pyplot as plt

# 设置全局字体大小
plt.rcParams.update({'font.size': 15})

# 数据
commands = ['for loop', 'load', 'store', 'add', 'sub', 'mul', 'udiv']
execution_time = [4.007, 2.00225, 1.00125, 1.001, 1.001, 1.001, 5.006]
energy_consumption = [3.24, 1.656, 0.864, 0.864, 0.864, 0.864, 3.888]

x = np.arange(len(commands))  # 为每个命令创建一个索引

width = 0.35  # 柱子的宽度

# 绘制柱状图
fig, ax1 = plt.subplots(figsize=(10, 7))

# 绘制 Execution Time，颜色设为蓝色
rects1 = ax1.bar(x - width/2, execution_time, width, label='Execution Time', color='#C1C7D6')

# 创建第二个坐标轴来绘制 Energy Consumption，颜色设为绿色
ax2 = ax1.twinx()
rects2 = ax2.bar(x + width/2, energy_consumption, width, label='Energy Consumption', color='#0E205E')

# 添加标题和标签
ax1.set_ylabel('Execution Time (clock cycles)', color='black')  # 设置左坐标轴的标签颜色
ax2.set_ylabel('Energy Consumption (nanojoules)', color='black')  # 设置右坐标轴的标签颜色
ax1.set_title('Execution Time and Energy Consumption of Different Commands')
ax1.set_xticks(x)
ax1.set_xticklabels(commands)

# 设置左坐标轴刻度的颜色为蓝色
ax1.tick_params(axis='y', labelcolor='black')
# 设置右坐标轴刻度的颜色为绿色
ax2.tick_params(axis='y', labelcolor='black')

# 移动图例到右上角
lines, labels = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
ax1.legend(lines + lines2, labels + labels2, loc='upper right', bbox_to_anchor=(0.85, 1), fontsize=20)

plt.tight_layout()

plt.show()
