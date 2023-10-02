if [ -d "$HOME/.oh-my-zsh" ]; then
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

script_dir=$(dirname "$(readlink -f "$0")")

cp -r "$script_dir" ~/.local/share/omzz

touch .zprofile
echo "source ~/.local/share/omzz/main.sh" >> ~/.zprofile

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf "$script_dir"
