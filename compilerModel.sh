rm -rf out
python3 cvtTMFile.py /content/drive/MyDrive/datasets/$1
python3 train.py -t classifier -d /content/drive/MyDrive/datasets/$1.datasets train
python3 getKmodel.py /content/drive/MyDrive/datasets/$1