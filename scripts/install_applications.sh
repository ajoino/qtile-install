sudo nala install -y \
	python-is-python3 \
	python3-pip \
	python3-cffi \
	"libyaml-cpp0.6" \
	fonts-firacode \
	interception-tools \
	libwlroots-dev \
	fish \
	vifm \
	alacritty \
	neovim \

# xcffib must be installed before cairocffi
python -m pip install \
	xcffib

python -m pip install \
	cairocffi \
	dbus-next \
	pywayland \
	pywlroots \
	xkbcommon \
	typing-extras \

cd $HOME/qtile-all/qtile
python -m pip install .

cd $HOME/qtile-all/qtile-extras
python -m pip install .

echo "Please log out and select Qtile in your session."

