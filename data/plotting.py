import data.database_con as con
from matplotlib import pyplot as plt
from matplotlib.figure import Figure
from matplotlib.axes import Axes
from matplotlib.ticker import FuncFormatter
import numpy as np
from io import BytesIO
import base64

def plot_ejendom(item: str, region: str, ax: Axes) -> Axes:
    """
        Plots ejendoms data
        Args:
            item: the item to gather (somhus, famhus, ejerlejl) 
            region: region to get data (hoved_staden, hele_landet)
            ax: The axis to plot the data on
        Returns:
            Returns axis with the plottet data
    """
    data = con.fetch_ejendom(region, f'year, {item}', 'WHERE year <= 2021')
    year = [x[0] for x in data]
    price = [x[1]*1000 for x in data]
    ax.plot(year, price, label=item)
    return ax

def plot_indkomst(gruppe: list[str], region: str, ax: Axes, aggregate: bool = False) -> Axes:
    """
        Plots indkomst data
        Args:
            gruppe: the groups to print data in sorted order ("15-19","20-24","25-29","30-34","35-39","40-44","45-49","50-54","55-59","60-64","65-69")
            region: region to get data (hoved_staden, hele_landet)
            ax: The axis to plot the data on
            aggregate: calculates the mean among the groups, and creates a label with that interval
        Returns:
            Returns axis with the plottet data
    """
    item = f"year, {gruppe}"
    data = con.fetch_loen_or_indkomst('indkomst', region, item, 'WHERE year <= 2021')
    year = [x[0] for x in data]
    gruppe = gruppe.replace(" ", "")
    groups = gruppe.split(',')
    if aggregate:
        # calculate the mean for each year, excluding the year column
        year_mean = [np.mean(x[1:]) for x in data]
        # the label will be the first two ints, aswell as the last 2 ints in all the groups
        label = gruppe[0:3] + "-" + gruppe[-3:]
        ax.plot(year, year_mean, label= "Indkomst: " + label)
    else:
        for i, group in enumerate(groups):
            # i +1 to skip the year column in each
            val = [x[i+1] for x in data]
            ax.plot(year, val, label="Indkomst: " + group)
    return ax

def plot_loen(gruppe: list[str], region: str, ax: Axes, aggregate: bool = False) -> Axes:
    """
        Plots indkomst data
        Args:
            gruppe: the groups to print data in sorted order ("15-19","20-24","25-29","30-34","35-39","40-44","45-49","50-54","55-59","60-64","65-69")
            region: region to get data (hoved_staden, hele_landet)
            ax: The axis to plot the data on
            aggregate: calculates the mean among the groups, and creates a label with that interval
        Returns:
            Returns axis with the plottet data
    """
    item = f"year, {gruppe}"
    data = con.fetch_loen_or_indkomst('loen', region, item, 'WHERE year <= 2021')
    year = [x[0] for x in data]
    gruppe = gruppe.replace(" ", "")
    groups = gruppe.split(',')
    if aggregate:
        # calculate the mean for each year, excluding the year column
        year_mean = [np.mean(x[1:]) for x in data]
        # the label will be the first two ints, aswell as the last 2 ints in all the groups
        label = gruppe[0:3] + "-" + gruppe[-3:]
        ax.plot(year, year_mean, label="Løn: " + label)
    else:
        for i, group in enumerate(groups):
            # i +1 to skip the year column in each
            val = [x[i+1] for x in data]
            ax.plot(year, val, label="Løn: " + group)
    return ax

def plot_avg_years_for_type(gruppe: list[str], region: str, item: str, ax: Axes, aggregate: bool = False) -> Axes:
    indkom_fetch = f"year, {gruppe}"
    data = con.fetch_loen_or_indkomst('indkomst', region, indkom_fetch, 'WHERE year <= 2021')
    data1 = con.fetch_ejendom(region, f'year, {item}', 'WHERE year <= 2021')
    price = np.array([x[1]*1000 for x in data1])
    year = [x[0] for x in data]

    gruppe = gruppe.replace(" ", "")
    groups = gruppe.split(',')
    if aggregate:
        # calculate the mean for each year, excluding the year column
        year_mean = np.array([np.mean(x[1:]) for x in data])
        # the label will be the first two ints, aswell as the last 2 ints in all the groups
        label = gruppe[0:3] + "-" + gruppe[-3:]
        val = price/year_mean
        ax.plot(year, val, label=f"{item}/Indkomst: " + label)
    else:
        for i, group in enumerate(groups):
            # i +1 to skip the year column in each
            val = np.array([x[i+1] for x in data])
            val = price/val
            ax.plot(year, val, label=f"{item}/Indkomst: " + group)
    return ax

def generate_png(ax: Axes, fig: Figure, avg: bool = False):
    if not avg:
        ax.get_yaxis().set_major_formatter(FuncFormatter(lambda x, p: format(int(x), ',')))
    ax.legend(frameon=False, loc="upper left")
    buf = BytesIO()
    fig.savefig(buf, format="png")
    data = (base64.b64encode(buf.getbuffer())).decode("ascii")
    return data


def show_figure(fig):
    dummy = plt.figure()
    new_manager = dummy.canvas.manager
    new_manager.canvas.figure = fig
    fig.set_canvas(new_manager.canvas)

if __name__ == "__main__":
    fig = Figure()
    ax = fig.subplots()
    # plot_loen('"15-19","20-24","25-29","30-34","35-39","40-44","45-49","50-54","55-59","60-64","65-69"', 'hoved_staden', ax, aggregate=False)
    # plot_ejendom('famhus', 'hoved_staden', ax)
    plot_avg_years_for_type('"20-24"', 'hoved_staden', 'ejerlejl', ax)
    ax.get_yaxis().set_major_formatter(FuncFormatter(lambda x, p: format(int(x), ',')))
    show_figure(fig)
    plt.legend(frameon=False)
    plt.show()
    con.close()