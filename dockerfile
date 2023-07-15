# FROM nginx:latest
# RUN apk add python3
# #RUN apk update  
# RUN apk add python3-pip -y
# COPY . ./myapp 
# WORKDIR ./myapp
# RUN pip3 install -r requirements.txt 
# RUN pip3 install gunicorn
# RUN cp gunicorn.service /etc/systemd/system
# RUN rm /etc/nginx/sites-enabled/default
# COPY default /etc/nginx/sites-enabled/
# EXPOSE 5000

FROM python:latest
COPY . ./app
WORKDIR ./app
RUN pip3 install -r requirements.txt
CMD ["python3" , "app.py"]