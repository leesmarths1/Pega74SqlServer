#FROM microsoft/mssql-server-linux:2017-GDR
FROM microsoft/mssql-server-linux:2017-latest
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app/

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/import-data.sh

CMD /bin/bash ./entrypoint.sh