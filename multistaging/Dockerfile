FROM ubuntu AS fichier

WORKDIR /app
RUN touch monfichier.txt

FROM ubuntu AS fichier2

WORKDIR /app
COPY --from=fichier /app/monfichier.txt .
RUN echo "init" > monfichier.txt
CMD ["cat", "monfichier.txt"]

FROM fichier2

RUN echo "mon fichier final" > monfichier.txt

CMD ["cat", "monfichier.txt"]