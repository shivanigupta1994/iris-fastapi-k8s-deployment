#use official python base image
FROM python:3.10-slim

#set working directory
WORKDIR /app

#copy files
COPY . /app

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#expose port
EXPOSE 8200

#command to run the server
CMD ["uvicorn", "iris_fastapi_v2:app", "--host", "0.0.0.0", "--port", "8200"]
