import os
import mlflow
from random import random, randint

from mlflow import log_metric, log_param, log_artifacts


if __name__ == "__main__":
    print("Running mlflow_tracking.py")

    remote_server_uri = "http://mlf-mlfl-1uwakolwv4vok.qka77hxkue.us-west-2.elasticbeanstalk.com/"
    mlflow.set_tracking_uri(remote_server_uri)

    # print(mlflow.get_artifact_uri())

    log_param("param1", randint(0, 100))
    
    log_metric("foo", random())
    log_metric("foo", random() + 1)
    log_metric("foo", random() + 2)

    if not os.path.exists("outputs"):
        os.makedirs("outputs")
    with open("outputs/test2.txt", "w") as f:
        f.write("hello world 2!")

    log_artifacts("outputs")