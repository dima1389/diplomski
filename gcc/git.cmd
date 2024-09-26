git init
git add .
git commit -m "First commit"
@REM 4. Kreiranje novog repozitorijuma na GitHub-u
@REM Prijavite se na GitHub.
@REM Kliknite na "New repository" ili posetite direktni link.
@REM Dajte ime vašem repozitorijumu (npr. moj-projekat).
@REM Ostavite ostale opcije podrazumevanim i kliknite na "Create repository".

git remote add origin git@github.com:korisnicko_ime/moj-projekat.git
git push -u origin master
git pull origin master

ls -al ~/.ssh
ssh-keygen -t ed25519 -C "vas_email@example.com"
ssh-keygen -t rsa -b 4096 -C "vas_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/id_rsa

clip < ~/.ssh/id_ed25519.pub

@REM Sada:
@REM Prijavite se na GitHub.
@REM Idite na Settings > SSH and GPG keys.
@REM Kliknite na New SSH key.
@REM Dajte naziv ključa (npr. "Moj računar") i nalepite ključ u polje Key.
@REM Kliknite na Add SSH key.

ssh -T git@github.com
@REM Hi korisnicko_ime! You've successfully authenticated, but GitHub does not provide shell access.
