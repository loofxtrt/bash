pros scripts daqui funcionarem o ~/.bashrc precisa ter uma linha que carrega esse diretório recursivamente  
supondo que a raíz desse repo seja `/caminho/dos/scripts`, as linhas no .bashrc deveriam ser:
```
# ler todos os arquivos .sh de um diretório recursivamente e integrar eles como parte do bashrc
while IFS= read -r file; do
    [ -f "$file" ] && source "$file"
done < <(find /caminho/dos/scripts -type f -name "*.sh")
```
  
- `./global/` scripts globais que **precisam ser carregados toda vez que o bash é aberto**
- `./internal/` scripts úteis especificamente pra esse repo e suas configurações
- `./scripts/` scripts chamáveis manualmente pelo terminal e que **não devem ser automaticamente carregados**. todos eles devem ter a shebang `#!/usr/bin/env bash` e não devem ter a extensão `.sh` pra serem mais fáceis de digitar
    
> [!IMPORTANT]
> a maioria dos scripts usa caminhos absolutos baseados em `/mnt/seagate`
> se esse disco for montado de outra forma, os scripts devem ser alterados