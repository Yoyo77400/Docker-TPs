FROM ubuntu AS fichier

WORKDIR /app
RUN touch monfichier.txt

FROM ubuntu AS fichier2

COPY --from=fichier /app/monfichier.txt /app
RUN echo "mon fichier" > monfichier.txt

FROM fichier2

RUN echo "/mon fichier modifier encore" >> monfichier.txt

CMD ["cat", "monfichier.txt"]