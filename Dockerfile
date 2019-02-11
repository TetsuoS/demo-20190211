FROM python:3.6

ARG project_dir=/app/

# ADD requirements.txt $project_dir
ADD api_demo.py $project_dir

WORKDIR $project_dir

RUN pip install flask
# RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "api_demo.py"]
