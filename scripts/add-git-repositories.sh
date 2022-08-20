#!/bin/bash
echo "Getting qtile repositories..."
qtile_dir=$HOME/qtile-all/
mkdir $qtile_dir
git clone https://github.com/qtile/qtile.git $qtile_dir/qtile
git clone https://github.com/elParaguayo/qtile-extras.git $qtile_dir/qtile-extras

