FROM python:3

WORKDIR /root/

# Copy the dependency list and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the web application script
COPY web.py .

# Expose port 5000
EXPOSE 5000

# Set the default command to run your web application
ENTRYPOINT ["python"]
CMD ["web.py"]
