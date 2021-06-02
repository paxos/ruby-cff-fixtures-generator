FROM python
#RUN pip3 install cffconvert
COPY files /files
RUN git clone https://github.com/citation-file-format/cff-converter-python.git
WORKDIR /cff-converter-python
RUN git checkout f1bfd6830f8b0a362fa0bee49fcb2e99471dcaad
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements-dev.txt
RUN pip install twine
RUN python setup.py install
COPY script/script.sh /script/script.sh
CMD [ "sh", "/script/script.sh" ]