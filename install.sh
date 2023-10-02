if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "oh-my-zsh is already installed"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

chsh -s $(which zsh)

script_dir=$(dirname "$(readlink -f "$0")")

cp -r "$script_dir" ~/.local/share/omzz

echo "source ~/.local/share/omzz/main.sh" >> ~/.zshenv
echo "omzz installed"
rm -rf "$script_dir"
