sudo nala install -y \
	curl \
	python-is-python3 \
	python3-pip \
	python3-cffi \
	"libyaml-cpp0.6" \
	libpulse-dev \
	fonts-firacode \
	interception-tools \
	interception-caps2esc \
	libwlroots-dev \
	fish \
	vifm \
	alacritty \
	neovim \
	picom \
	nitrogen \
	i3lock-fancy \

# Get vim-plug
sh -c 'curl -fLo "$HOME/.local/share"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# xcffib must be installed before cairocffi
python -m pip install --user \
	xcffib

python -m pip install --user \
	cairocffi \
	dbus-next \
	pywayland \
	pywlroots \
	xkbcommon \
	dbus-next \

python -m pip install --user --upgrade
	typing-extras \

cd $HOME/qtile-all/qtile
python -m pip install --user .

cd $HOME/qtile-all/qtile-extras
python -m pip install --user .

echo "Please log out and select Qtile in your session."

