# https://catppuccin.com/palette/
black = '#313244'
light_black = '#45475a'
dark_gray = '#585b70' # bright-black
gray = 'green'
white = '#cdd6f4'

end = ''
#end = ''

# as barras precisam ser escapadas duas vezes
# pra que uma delas permaneça no arquivo final
contents = f'''format = """
$username\\
[{end}](fg:{gray} bg:{dark_gray})\\
$hostname\\
[{end}](fg:{dark_gray} bg:{light_black})\\
$directory\\
[{end}](fg:{light_black}) \\
""" # a última linha tem espaço pra separar o cursor

[username]
show_always = true
style_user = "bg:{gray} fg:{black}"
style_root = "bg:{gray} fg:{white}"
format = '[ $user ]($style)'

[hostname]
ssh_only = false
style = "bg:{dark_gray} fg:{white}"
format = '[ @ $hostname ]($style)'

[directory]
style = "fg:{white} bg:{light_black}"
format = "[ $path ]($style)"
truncation_length = 3
truncation_symbol = "…/"
'''

# escrever o arquivo de configuração
with open('/mnt/seagate/bash/starship.toml', 'w') as f:
    f.write(contents)