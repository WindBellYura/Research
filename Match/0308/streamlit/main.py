"""
# My first app
Here's our first attempt at using data to create a table:
"""

import streamlit as st
import pandas as pd
import numpy as np
import time

st.title('Data Analysis')

st.write("""
# My first app
Hello *world!*""")


df = pd.DataFrame(
np.random.randn(50, 20),
columns=('col %d' % i for i in range(20)))
st.dataframe(df)  # Same as st.write(df)

#----------------------------------#
map_data = pd.DataFrame(
    np.random.randn(1000, 2) / [50, 50] + [37.76, -122.4],
    columns=['lat', 'lon'])

st.map(map_data)
#----------------------------------#


#----------------------------------#
if st.checkbox('Show dataframe'):
    chart_data = pd.DataFrame(
       np.random.randn(20, 3),
       columns=['a', 'b', 'c'])

    st.line_chart(chart_data)
#----------------------------------#

df = pd.DataFrame({
  'first column': [1, 2, 3, 4],
  'second column': [10, 20, 30, 40]
})
df

st.button(label='select')

#----------------------------------#
option = st.sidebar.selectbox(
    'Which number do you like best?',
     df['first column'])

'You selected:', option
#----------------------------------#

'Starting a long computation...'

# Add a placeholder
latest_iteration = st.empty()
bar = st.progress(0)

for i in range(100):
  
  latest_iteration.text(f'Iteration {i+1}')
  bar.progress(i + 1)
  time.sleep(0.1)

'...and now we\'re done!'

