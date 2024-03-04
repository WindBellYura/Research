import matplotlib.pyplot as plt

# 数据
cpu_frequencies = [240, 160, 80]
cpu_idle_states = [0.206954103, 0.1704, 0.140411127]

# 绘图
plt.bar(cpu_frequencies, cpu_idle_states, color='skyblue', width=10, edgecolor='black')

# 添加连接线
plt.plot(cpu_frequencies, cpu_idle_states, marker='o', linestyle='-', color='black')

# 添加标题和标签
plt.title('Relationship between Frequency and Power Consumption')
plt.xlabel('CPU Frequency')
plt.ylabel('CPU\'s Idle State Energy Consumption(With OS)')

# 设置横轴刻度
plt.xticks(cpu_frequencies)

# 显示图形
plt.show()
