import pandas as pd
import seaborn as sb
import numpy as np
import matplotlib.pyplot as plot

# create a dataframe
df = pd.DataFrame({'x':np.random.rand(1000),
                    'y':np.random.rand(1000)})

# Take a look
print(df)

# create a plot
sb.scatterplot(data=df, x='x', y='y')
plot.show()