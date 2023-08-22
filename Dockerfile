
FROM python:3.9


WORKDIR /app


COPY . /app


RUN pip install flask

# Make port 80 available to the world outside this container
EXPOSE 5000


# Run app.py when the container launches
CMD ["python", "app.py"]
