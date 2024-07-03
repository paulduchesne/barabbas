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
    df = pandas.read_sql(f"select * from work where work_id = 1", connection)
    if len(df) != 1:
        raise Exception('HELP')
    else:
        data = json.loads(df.to_json(orient='records'))[0]

    df = pandas.read_sql(f"select * from work_agent where work_id = 1 and work_agent_activity = 'Cast'", connection)
    data['cast'] = json.loads(df.to_json(orient='records'))

    return data

if __name__ == "__main__":
    app.run(debug=True, port=5000)