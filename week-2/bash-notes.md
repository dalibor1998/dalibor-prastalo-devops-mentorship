# Level 0

$ ls # provjeramo sta imamo od fajlova

$ cat readme #ispis sadrzaja fajla koji sadrzi password za sljedeci nivo

![Level0](https://user-images.githubusercontent.com/123886701/221371849-dc1d55fb-87c1-4bca-9fb0-81bfb80882df.png)


# Level 1

$ ls # provjeramo sta imamo od fajlova

$ cat < - #ispis sadrzaja fajla koji sadrzi password za sljedeci nivo


![Level1](https://user-images.githubusercontent.com/123886701/221372285-5d934fdd-f06b-4e92-aba5-bf413a777a29.png)


# Level 2


$ ls # provjeramo sta imamo od fajlova

$ cat spaces\ in\ this\ filename #ispis sadrzaja fajla koji sadrzi password za sljedeci nivo

![Level2](https://user-images.githubusercontent.com/123886701/221371888-c1d88682-319b-44bf-8ef4-90040f59e295.png)


# Level 3

$ ls # provjeramo sta imamo od fajlova

$ ls -la inhere/ #provjeravamo detaljnije informacije o fajlovima unutar direktorijima, permisije, vrijeme kreiranja...gdje možemo primjetiti skriveni fajl

$ cat inhere/.hidden #ispis sadrzaja .hidden fajla koji sadrzi password za sljedeci nivo


![Level3](https://user-images.githubusercontent.com/123886701/221371923-313ecc27-ae32-46ec-8769-f8da30573500.png)


# Level 4


$ ls # provjeramo sta imamo od fajlova

$ file inhere/* - prikazujemo sve tipove fajlova unutar direktorijuma inhere, gdje možemo primjetiti tip fajla ASCII text u fajlu -file07

$ cat inhere/-file07 #ispis sadrzaja fajla -file07

![Level4](https://user-images.githubusercontent.com/123886701/221371947-dbe18610-81e1-478e-b380-f46fe54551c2.png)


# Level 5

$ ls # provjeramo sta imamo od fajlova

$ find . -type f -size 1033c #trazimo fajl cija je veličina 1033byte,

$ cat ./inhere/maybehere07/.file2 #nakon naredbe find, nalazimo .file2 i ispisujemo njegov sadrzaj gdje se nalazi password za sljedeci nivo


![Level5](https://user-images.githubusercontent.com/123886701/221371975-94b91eeb-ea05-4caa-9340-9af46760a08b.png)


# Level 6

$ ls # provjeramo sta imamo od fajlova

$ find / -type f -size 33c 2> /dev/null | grep bandit7.password #trazimo fajl velicine 33 byte, stderr preusmjeren u /dev/null da bi zadovoljili rezultat pretrage bez "Permission denied" jer nemamo dozvole da pristupimo svim direktorijumima na serveru i da mi prikaže samo lokaciju fajla koji sadrži bandit7.password

$ cat /var/lib/dpkg/info/bandit7.password - ispis sadržaja fajla odnosno passworda za next level

![Level6](https://user-images.githubusercontent.com/123886701/221372000-ed8969ea-9300-4308-a148-d72437056986.png)


# Level 7

$ ls # provjeramo sta imamo od fajlova

$ cat data.txt | grep millionth #ispis sadržaja data.txt, samo sa millionth dijelom u kome se nalazi password za sljedeci nivo

![Level7](https://user-images.githubusercontent.com/123886701/221372016-f6138c47-1793-4240-8a39-f087d11b6d08.png)


# Level 8

$ ls # provjeramo sta imamo od fajlova

$ cat data.txt | sort | uniq -u #ispis sadrzaja fajla data.txt, ispis linije koja se samo jednom ponavlja

![Level8](https://user-images.githubusercontent.com/123886701/221372030-f7933880-2c42-4295-b940-faa7d0239899.png)


# Level 9

$ ls # provjeramo sta imamo od fajlova

$ strings data.txt | grep == #ispisuje citljivih stringova iz data.txt, komandom grep tražimo podatak koji smo dobili kao informaciju u zadatku

![Level9](https://user-images.githubusercontent.com/123886701/221372057-bb16e28d-fc71-4e1f-8f8f-53aa50e7caca.png)


# Level 10


$ base64 data.txt #dekodiranje fajl data.txt i ispisuje rezultat

![Level10](https://user-images.githubusercontent.com/123886701/221372093-9b44c05d-4934-4a8f-b758-1d592ca7ebf2.png)

