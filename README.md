# Config NeoVim 0.6 with packer For Windows

<br/>
<p align='right'><em>Đặng Quốc Lai</em></p>

## Cách cài đặt nvim0.7 theo packer:
- Cài python, nodejs, git, download nvim0.7
- Download setting: 
  ```cmd
  git clone --single-branch --branch nvim1 https://github.com/danglai/nvim0.6 ~/AppData/Local/nvim
  ```
- Mở 1 file bằng vim, -> vim sẽ tự tải packer -> đóng file lại
- Mở lại file -> `:ps` để cài các thư viện -> đóng file
- Mở lại file -> `:Semshi enable` để kích hoạt font. -> `:UpdateRemotePlugins`
- Kiểm tra file và folder nvim-autopairs trong folder lua.
- ```cmd
  pip install --upgrade autopep8 jedi-language-server jedi wheel yarp pynvim
  ```
- ```cmd
  :CocInstall coc-pyright coc-jedi
  ```

- **Lưu ý**: Nếu gặp vấn đề với sonokai theme, vào đường dẫn của README.md hiện tại, chạy lệnh: 
  ```cmd 
  cd %localappdata% && copy /y nvim-data\site\pack\packer\opt\sonokai\autoload\sonokai.vim nvim\autoload
  ```

## Error
### wilder_python..., wilder_function
- Cài thêm **wheel yarp** vào pip, đã thêm ở cách cài.
- Trong ['./core/globals.nvim](./core/globals.vim), thêm dòng `let g:python_host_prog=substitute(exepath('python'), '.exe$', '', 'g')`
- Kiểm tra trong nvim `:echo has('python')`, nếu ra 1 là ok.
- Download toàn bộ **site-packages** trong [link](https://github.com/danglaiacc/kn/commit/7b9870f099d346427caf36734feccf88c119b49a) rồi copy vào thư mục **%localappdata%\Programs\Python\Python39\Lib**, check file /build/index.js của coc trong nvim-data.
- Dùng lệnh `:checkhealth` trong vim để kiểm tra.
- Dùng lệnh `:UpdateRemotePlugins`, rồi khởi động lại nvim là được.

## Multi cursor
### Thay đổi nhiều từ cùng lúc
- Chọn từ giống nhau: `Ctrl` `n`
- `cw`: chuyển sang mode chỉnh sửa
- Nhập nội dung thay đổi
## Phím tắt
- Tắt phân tích cú pháp cho 1 dòng trong python, thêm vào cuối dòng đó: `# type: ignore`
- Paste từ vim sang Colab trong Normal mode: `Ctrl` + `Shift` + `v`
- `C`: Xóa đến cuối dòng
- `,` `C`: Cắt đến cuối dòng 
- Word Wrap: `Alt` `z`
- [Copy](https://stackoverflow.com/questions/35108243)
  - Copy nhanh 1 từ: `yiw`
  - Tìm kiếm 1 từ: `*` hoặc `#`
  - Copy tới cuối dòng: `y$`
  
- [Di chuyển screen](https://stackoverflow.com/questions/3458689/how-to-move-screen-without-moving-cursor-in-vim):
  - `zt` hoặc `z-enter`: di chuyển dòng hiện tại lên đầu (Top) màn hình
  - `zz` hoặc `z.`: di chuyển dòng hiện tại lên giữa màn hình
  - `zb` hoặc `z-`: di chuyển dòng hiện tại về cuối (Bottom) màn hình
  - `Ctrl` `u`: di chuyển cursor & screen lên ½ trang
  - `Ctrl` `d`: di chuyển cursor & screen xuống ½ trang
  - `Ctrl` `b`: di chuyển screen lên 1 trang, cursor dòng cuối
  - `Ctrl` `f`: di chuyển screen xuống 1 trang, cursor dòng đầu  - 
- Terminal:
  - `,` `vsp`: mở cmd bên trái
  - `,` `sp`: mở cmd bên dưới
  - Trong chế độ terminal, jj để về normal mode
- [Split Window](https://gist.github.com/Starefossen/5957088):
  - Nhân đôi 1 cửa sổ: Ctrl-W v
  - Đảo vị trí 2 cửa số: Ctrl-Wrr
  - Đóng tất cả các cửa số khác: Ctrl-W o
- `,` `f` (leader): format file 
- `,` `s` (start): go to start line = `0`
- `,` `e` (end): go to end line = `$` 
- `:e *`: nhấn tab để tìm kiếm 1 file
- `<C-o>`: đi tới vị trí trước đó
- `<C-i>`: đi tới vị trí sau đó
- Di chuyển giữa các tab
    ```vim
    :bf                     |" Go to first file.<br/>
    :bl                     |" Go to last file<br/>
    :bn                     |" Go to next file.<br/>
    :bp                     |" Go to previous file.<br/>
    :b number               |" Go to n'th file (E.g :b 2)<br/>
    :bw                     |" Close current file.<br/>
    ```
- Xem đường dẫn của file đang mở
    ```vim
    :echo @%                |" directory/name of file
    :echo expand('%:t')     |" name of file ('tail')
    :echo expand('%:p')     |" full path
    :echo expand('%:p:h')   |" directory containing file ('head')
    ```
    
## Config Python with Coc
- `pip install jedi-language-server`
- `:CocInstall coc-jedi`
- `:CocInstall coc-pyright` (Cài [autopep8](https://pypi.org/project/autopep8/) trong command trước `pip install --upgrade autopep8`)
