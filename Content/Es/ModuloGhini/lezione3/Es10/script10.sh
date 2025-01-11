#Aggiunta funzionalità per partire da una cartella a piacere


NEWPATH=$1
cd ${NEWPATH};


for name in *;
do
    echo "file is ${name}"
    ls -ld ${name}
done