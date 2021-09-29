# Config NeoVim For Windows

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

## Phím tắt
- `,f` (leader): format file 
- `:e *`: nhấn tab để tìm kiếm 1 file
- `<C-o>`: đi tới vị trí trước đó
- `<C-i>`: đi tới vị trí sau đó
- Di chuyển giữa các tab
    ```
    :bf            # Go to first file.<br/>
    :bl            # Go to last file<br/>
    :bn            # Go to next file.<br/>
    :bp            # Go to previous file.<br/>
    :b number  # Go to n'th file (E.g :b 2)<br/>
    :bw            # Close current file.<br/>
    ```

## Install with PlugInstall
- Download NVim
  - [Git](https://github.com/neovim/neovim/releases/tag/nightly)
  - [Nvim 0.6 GG Drive](https://drive.google.com/file/d/14JuitC9dE7uXDbm57sZa8sCAeu7L0QBq)
- Add path to Environment
- Download setting:
```
git clone --single-branch --branch nvim1 https://github.com/danglai/vim ~/AppData/Local/nvim
```
- Open README.md with nvim, `:PlugInstall` 2 times

## Config Python with Coc
- `pip install jedi-language-server`
- `:CocInstall coc-jedi`
- `:CocInstall coc-pyright` (Cài [autopep8](https://pypi.org/project/autopep8/) trong command trước `pip install --upgrade autopep8`)

## Not Important
- Show config path of nvim: `:echo stdpath('config')`
- Install Npm for Coc
```
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
```
