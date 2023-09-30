if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HanSo-Hee/Evamaria.git /Evamaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Evamaria
fi
cd /Evamaria
pip3 install -U -r requirements.txt
echo "Starting Evamaria...."
python3 bot.py
