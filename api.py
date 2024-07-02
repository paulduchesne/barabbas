import flask
import json
import mariadb
import pandas

app = flask.Flask(__name__)
app.config["DEBUG"] = True

credentials = {
    'host': 'mariadb',
    'port': 3306,
    'user': 'root',
    'password': 'testpass',
    'database': 'barabbas'
}

@app.route('/api/work/<work_id>', methods=['GET'])
def work_records(work_id):
   
   connection = mariadb.connect(**credentials)
   df = pandas.read_sql(f"select * from work where work_id = {work_id}", connection)
   
   return df.to_json(orient='records')

if __name__ == "__main__":
    app.run(debug=True, port=5000)