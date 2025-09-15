import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

os.makedirs("data/processed", exist_ok=True)
os.makedirs("figures", exist_ok=True)

x = np.arange(1, 11)
y = np.log(x)

df = pd.DataFrame({"x": x, "y": y})
df.to_csv("data/processed/py_data.csv", index=False)

plt.figure()
plt.plot(x, y, marker="o")
plt.title("Demo plot (Python)")
plt.xlabel("x"); plt.ylabel("log(x)")
plt.tight_layout()
plt.savefig("figures/py_plot.png", dpi=150)
print("Wrote data/processed/py_data.csv and figures/py_plot.png")
