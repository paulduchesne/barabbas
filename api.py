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

@app.route('/api/work', methods=['GET'])
def work_records():
   
   connection = mariadb.connect(**credentials)
   df = pandas.read_sql("select * from work", connection)
   
   return df.to_json(orient='records')

@app.route('/api/agent', methods=['GET'])
def agent_records():
   
   connection = mariadb.connect(**credentials)
   df = pandas.read_sql("select * from agent", connection)
   
   return df.to_json(orient='records')

if __name__ == "__main__":
    app.run(debug=True, port=5000)