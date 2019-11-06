FROM python:3

RUN git clone https://github.com/abcapo/SUDOKU.git
COPY requirements.txt /SUDOKU
WORKDIR /SUDOKU


RUN pip install -r requirements.txt
RUN pip install parameterized

CMD [ "python3", "test_sudoku.py"]