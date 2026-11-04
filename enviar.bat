@echo off
chcp 65001 >nul
echo ========================================================
echo   Iniciando automação de envio para o GitHub - UND3
echo ========================================================
echo.

:: Configurando credenciais locais fornecidas
echo [1/6] Configurando usuário e e-mail do Git...
git config --local user.name "philipe-cest"
git config --local user.email "316204304+philipe-cest@users.noreply.github.com"

:: Inicializando repositório Git local (caso não exista)
echo [2/6] Inicializando repositório Git...
git init

:: Conectando ao repositório remoto no GitHub
echo [3/6] Conectando ao repositório remoto...
git remote remove origin 2>nul
git remote add origin https://github.com/philipe-cest/unidade3-mtm-fin.git

:: Adicionando todos os arquivos e pastas (AULA_1, AULA_2, AULA_3, index.html)
echo [4/6] Adicionando arquivos e pastas (AULA_1, AULA_2, AULA_3)...
git add .

:: Realizando o commit local
echo [5/6] Realizando commit dos arquivos da Unidade III...
git commit -m "Deploy automático: Unidade III - Sistemas de Amortização"

:: Enviando para a branch main no GitHub
echo [6/6] Enviando arquivos para o GitHub (branch main)...
git branch -M main
git push -u origin main --force

echo.
echo ========================================================
echo   Processo concluído com sucesso! Verifique seu repositório.
echo ========================================================
pause