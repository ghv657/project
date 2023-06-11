from flask import Flask, render_template, request
from matplotlib.figure import Figure
from data import plotting, database_con
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def main():
    data = {
        "ejendom": ["somhus", "famhus", "ejerlejl"],
        "region": ["hoved_staden", "hele_landet"],
        "groups": ['"15-19"','"20-24"','"25-29"','"30-34"','"35-39"','"40-44"','"45-49"','"50-54"','"55-59"','"60-64"','"65-69"'],
        "image": None
    }
    if request.method == "POST":
        fig = Figure()
        ax = fig.subplots()
        avg = request.form.get('avg') == "on"
        region = request.form.get("region")
        indkomst_groups = ",".join(request.form.getlist("indkomst"))
        ejendom_item = request.form.get("ejendom")
        ag_ind = request.form.get('indkomst_aggregate') == "on"
        if avg & (indkomst_groups != ""):
            ax = plotting.plot_avg_years_for_type(indkomst_groups, region, ejendom_item, ax, ag_ind)
        else:
            loen_groups = ",".join(request.form.getlist("loen"))
            ag_loen = request.form.get('loen_aggregate') == "on"
            if (indkomst_groups != ""):
                ax = plotting.plot_indkomst(indkomst_groups, region, ax, ag_ind)
            if (loen_groups != ""):
                ax = plotting.plot_loen(loen_groups, region, ax, ag_loen)
            ax = plotting.plot_ejendom(ejendom_item, region, ax)
        data['image'] = plotting.generate_png(ax, fig, avg)


    return render_template('template.html', data=data)


if __name__ == '__main__':
    database_con.open()
    app.run()