FROM tensorflow/serving:latest

COPY ./output/serving_model /models/cc-model

ENV MODEL_NAME=cc-model
ENV MODEL_BASE_PATH=/models
ENV PORT=8080

ENTRYPOINT ["/usr/bin/tensorflow_model_server", 
            "--rest_api_port=8080", 
            "--model_name=cc-model", 
            "--model_base_path=/models/cc-model"]
