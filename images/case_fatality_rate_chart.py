import matplotlib.pyplot as plt

# Output of Query #3: case fatality rate = total_deaths / total_cases * 100
cfr = {
 'Algeria':2.5312,'Angola':1.8352,'Benin':0.5819,'Botswana':0.8481,'Burkina Faso':1.7954,
 'Burundi':0.0701,'Cabo Verde':0.646,'Cameroon':1.5781,'CAR':0.7353,'Chad':2.5192,
 'Comoros':1.7675,'Congo':1.5212,'Djibouti':1.2046,'DRC':1.5026,'Egypt':4.7697,
 'Equatorial Guinea':1.0622,'Eritrea':1.0109,'Eswatini':1.9057,'Ethiopia':1.5117,'Gabon':0.6266,
 'Gambia':2.9463,'Ghana':0.8513,'Guinea':1.2136,'Guinea-Bissau':1.8411,'Ivory Coast':0.9452,
 'Kenya':1.654,'Lesotho':2.0782,'Liberia':3.6465,'Libya':1.2689,'Madagascar':2.0855,
 'Malawi':3.0211,'Mali':2.2412,'Mauritania':1.5648,'Mauritius':2.4496,'Morocco':1.277,
 'Mozambique':0.9609,'Namibia':2.3826,'Niger':3.1417,'Nigeria':1.1831,'Rwanda':1.1022,
 'Sao Tome and Principe':1.2127,'Senegal':2.2143,'Seychelles':0.3377,'Sierra Leone':1.6233,
 'Somalia':4.9791,'South Africa':2.5168,'South Sudan':0.7513,'Sudan':7.8852,'Tanzania':1.9639,
 'Togo':0.7339,'Tunisia':2.5511,'Uganda':2.1137,'Zambia':1.1649,'Zimbabwe':2.1517}

top = sorted(cfr.items(), key=lambda x: x[1], reverse=True)[:15][::-1]
names = [t[0] for t in top]; vals = [t[1] for t in top]
colors = ['#C0392B' if i >= len(vals)-3 else '#4A7FB5' for i in range(len(vals))]

fig, ax = plt.subplots(figsize=(10, 7), dpi=200)
bars = ax.barh(names, vals, color=colors)
for b, v in zip(bars, vals):
    ax.text(v + 0.08, b.get_y() + b.get_height()/2, f'{v:.2f}%', va='center', fontsize=10)
ax.set_title('Top 15 African Countries by COVID-19 Case Fatality Rate', fontsize=15, fontweight='bold', loc='left')
ax.set_xlabel('Case fatality rate (total deaths / total cases × 100)', fontsize=11)
ax.set_xlim(0, max(vals) * 1.15)
for s in ('top', 'right'): ax.spines[s].set_visible(False)
ax.xaxis.grid(True, alpha=0.3); ax.set_axisbelow(True)
fig.text(0.01, 0.01, 'Source: africa_covid table (MySQL, DB Fiddle) | Query #3', fontsize=8, color='gray')
plt.tight_layout(rect=(0, 0.02, 1, 1))
plt.savefig('/mnt/user-data/outputs/case_fatality_rate_top15.png')
