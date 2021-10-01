rm -rf out
mkdir -p /content/drive/MyDrive/datasets
mv /content/drive/MyDrive/$1 /content/drive/MyDrive/datasets
python3 cvtTMFile.py /content/drive/MyDrive/datasets/$1
python3 train.py init
python3 train.py -t classifier -d /content/drive/MyDrive/datasets/$1.datasets train
python3 getKmodel.py /content/drive/MyDrive/datasets/$1