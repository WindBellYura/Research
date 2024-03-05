import matplotlib.pyplot as plt

# 命令执行次数
command_counts = [10000, 100000, 1000000, 10000000, 100000000, 1000000000]

# 误差数据（转化为百分比，保留小数点后三位）
errors = [error * 100 for error in [0.090803715, 0.039181288, 0.033417149, 0.032857402, 0.032799025, 0.032793196]]

# 创建图形和坐标轴对象
fig, ax = plt.subplots(figsize=(8, 6))

# 绘制误差曲线
ax.plot(command_counts, errors, marker='o', linestyle='-', color='b', label='Error')

# 使用对数坐标显示x轴
ax.set_xscale('log')

# 设置图形标题
ax.set_title('Relationship Between Command Execution Count and Error', fontsize=14)

# 设置x轴和y轴标签
ax.set_xlabel('Command Execution Count (Log Scale)', fontsize=12)
ax.set_ylabel('Error (%)', fontsize=12)

# 添加网格线
ax.grid(True)

# 添加图例
ax.legend(loc='upper right', fontsize=12)

# 调整坐标轴上的字体大小
ax.tick_params(axis='both', labelsize=10)

# 添加误差标签（避免相交）
for i in range(len(command_counts)):
    ax.annotate(f'{errors[i]:.3f}%', (command_counts[i], errors[i]), textcoords="offset points", xytext=(0, 10), ha='center', fontsize=10,
                arrowprops=dict(arrowstyle="->", connectionstyle="arc3,rad=0.2"))

# 保存图形为图像文件（可选）
plt.savefig('error_plot.png', dpi=300, bbox_inches='tight')

# 显示图形
plt.show()