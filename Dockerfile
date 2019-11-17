FROM ubuntu

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY vm.py /home/akshaykr/hello_flask
