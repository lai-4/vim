# Config NeoVim 0.7 for Mac OS

<br/>

# install
1. `brew install nvim`
2. 
```cmd
git clone --single-branch --branch nvim-mac https://github.com/danglai/vim ~/.config/nvim
```
3. 
```cmd
  pip3 install --upgrade autopep8 jedi-language-server jedi wheel yarp pynvim
```
4. Mở 1 file, `:ps` > `:Semshi enable` > `:UpdateRemotePlugins`
5.
```cmd
  :CocInstall coc-pyright coc-jedi
```

- **Lưu ý**: Nếu gặp vấn đề với sonokai theme, vào đường dẫn của README.md hiện tại, chạy lệnh: 
```cmd 
cp ~/.local/share/nvim/site/pack/packer/opt/sonokai/autoload/sonokai.vim ~/.config/nvim/autoload
```

## Error
### wilder_python..., wilder_function
- Cài thêm **wheel yarp** vào pip, đã thêm ở cách cài.
- Trong ['./core/globals.nvim](./core/globals.vim), thêm dòng `let g:python_host_prog=substitute(exepath('python'), '.exe$', '', 'g')`
- Kiểm tra trong nvim `:echo has('python')`, nếu ra 1 là ok.
- Download toàn bộ **site-packages** trong [link](https://github.com/danglaiacc/kn/commit/7b9870f099d346427caf36734feccf88c119b49a) rồi copy vào thư mục **%localappdata%\Programs\Python\Python39\Lib**, check file /build/index.js của coc trong nvim-data.
- Dùng lệnh `:checkhealth` trong vim để kiểm tra.
- Dùng lệnh `:UpdateRemotePlugins`, rồi khởi động lại nvim là được.
