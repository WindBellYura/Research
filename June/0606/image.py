import numpy as np
from scipy.stats import linregress

# Frequencies in MHz
frequencies = np.array([133, 266, 400, 0])  # Adding 0 MHz for the intercept calculation
# Average power in mW for each frequency group
average_power = np.array([784.494, 823.0144, 863.8971, 751.035091])

# Perform linear regression
slope, intercept, r_value, p_value, std_err = linregress(frequencies, average_power)

intercept