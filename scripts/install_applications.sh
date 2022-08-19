sudo nala install \
	"libyaml-cpp0.6" \
	interception-tools \
	wlroots \
	fish \
	vifm \
	alacritty \

# xcffib must be installed before cairocffi
python -m pip install \
	cffi \
	xcffib

python -m pip install \
    cairocffi \
	dbus-next \
	pywayland \
	pywlroots \
	xkbcommon

cd qtile
python -m pip install .

cd ../qtile-extras
python -m pip install .

echo "Please log out and select Qtile in your session."

