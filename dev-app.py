import flask 
import requests

app = flask.Flask(__name__)

@app.route('/work/<work_id>')
def render_work(work_id):

    r = requests.get(f'http://localhost:5000/api/work/{work_id}')
    if r.status_code != 200:
        raise Exception('API call failed.')

    return flask.render_template('work.html', data=r.json())

if __name__ == '__main__':
    app.run(debug=True, port=5002)
