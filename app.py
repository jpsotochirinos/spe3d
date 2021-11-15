import jaxnerf.train as train
from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/train/',methods=['POST'])
async def basic_train():
    new_flags={
        "data_dir": request.json['data_dir'],
        "train_dir": request.json['train_dir'],
        "config": request.json['config']
    }
    try:
       #await train.run_train(new_flags)
       #cambiar el estado del proceso de pending o progress bar a terminado
       print("finish")
    except ValueError:
        print(ValueError)
        #cambiar el estado a error
        #get last step
    return  jsonify({"status":"200",
                     "message": "succes"})

if __name__ == '__main__':
    app.debug = True
    app.run(host = '127.0.0.1',port= 3000)