import matplotlib.pyplot as plt
import numpy as np

# 数据
categories = ['for+1nop', 'load', 'store', 'add', 'sub', 'mul', 'udiv']
freq_80_cost = [6.58102978, 0.452043468, 1.356130403, 0.353217878, 0.354621989, 0.688217632, 1.05077859]
freq_160_cost = [6.403296, 0.473796, 1.421388, 0.189204, 0.285936, 0.557952, 0.865428]
freq_240_cost = [6.743148818, 0.468086787, 1.404260362, 0.459972184, 0.562564673, 0.743599444, 1.053179416]

x = np.arange(len(categories))
width = 0.25

fig, ax = plt.subplots()
bars1 = ax.bar(x - width, freq_80_cost, width, label='80MHz')
bars2 = ax.bar(x, freq_160_cost, width, label='160MHz')
bars3 = ax.bar(x + width, freq_240_cost, width, label='240MHz')

ax.set_xlabel('Instruction')
ax.set_ylabel('Power Consumption(nJ)')
ax.set_title('Instruction\'s Power Consumption with Different Frequency')
ax.set_xticks(x)
ax.set_xticklabels(categories)
ax.legend()

def autolabel(bars):
    for bar in bars:
        height = bar.get_height()
        ax.annotate('{}'.format(height),
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3),  
                    textcoords="offset points",
                    ha='center', va='bottom')

plt.show()
