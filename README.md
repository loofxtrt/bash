pros scripts daqui funcionarem o ~/.bashrc precisa ter uma linha que carrega esse diretório recursivamente  
supondo que a raíz desse repo seja `/mnt/seagate/bash`, as linhas no .bashrc deveriam ser:
```
# ler todos os arquivos .sh de um diretório recursivamente e integrar eles como parte do bashrc
while IFS= read -r file; do
    [ -f "$file" ] && source "$file"
done < <(find /mnt/seagate/bash -type f -name "*.sh")
```