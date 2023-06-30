import pandas as pd
import requests
from bs4 import BeautifulSoup

URL = 'https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html'

req = requests.get(URL)
soup = BeautifulSoup(req.text, 'lxml')

weather_table = []
weather = soup.find(
   'table', attrs={ "id": "weather_records"})
weather_rows = weather.find_all('tr')

for tr in weather_rows:
    td = tr.find_all('td')
    row = [tr.text.strip() for tr in td if tr.text.strip()]
    if row:
        weather_table.append(row)
#print(weather_table)

column_names = ['Date and time', 'Temperature', 'Description']
weather_records = (pd.DataFrame(weather_table, columns=column_names))
print(weather_records)    

