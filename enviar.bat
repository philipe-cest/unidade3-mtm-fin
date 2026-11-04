@echo off
chcp 65001 >nul
echo ========================================================
echo   Corrigindo credenciais e enviando para o GitHub - UND3
echo ========================================================
echo.

:: Limpando credenciais antigas do Windows para este host
echo [1/7] Limpando credenciais antigas do Windows...
git credential-manager reject https://github.com 2>nul

:: Configurando usuário e e-mail corretos do GitHub
echo [2/7] Configurando usuário e e-mail (philipe-cest)...
git config --local user.name "philipe-cest"
git config --local user.email "316204304+philipe-cest@users.noreply.github.com"

:: Forçando o login correto na URL remota com o token/usuário
echo [3/7] Configurando URL remota autenticada...
git remote remove origin 2>nul
git remote add origin https://philipe-cest@github.com/philipe-cest/unidade3-mtm-fin.git

:: Garantindo que todos os arquivos estão no estágio (caso tenha alterado algo)
echo [4/7] Preparando arquivos e pastas (AULA_1, AULA_2, AULA_3)...
git add .

:: Realizando o commit local caso haja alterações pendentes
echo [5/7] Verificando e salvando alterações (commit)...
git commit -m "Deploy automático: Unidade III - Sistemas de Amortização" 2>nul

:: Forçando a branch main
echo [6/7] Definindo branch principal como main...
git branch -M main

:: Enviando para o GitHub
echo [7/7] Enviando arquivos para o GitHub...
git push -u origin main --force

echo.
echo ========================================================
echo   Processo finalizado! Verifique seu repositório no navegador.
echo ========================================================
pause