import matplotlib.pyplot as plt
import numpy as np

# 数据
categories = ['for+1nop', 'load', 'store', 'add', 'sub', 'mul', 'udiv']
freq_80_cost = [6.866271893, 0.437631458, 1.312894373, 0.397138302, 0.399244468, 0.76064858, 1.026935191]
freq_160_cost = [6.503184, 0.4466592, 1.3399776, 0.371592, 0.37074, 0.547332, 0.98166]
freq_240_cost = [7.01561057, 0.468380529, 1.405141586, 0.399070932, 0.39493185, 0.57493185, 0.839115438]

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
