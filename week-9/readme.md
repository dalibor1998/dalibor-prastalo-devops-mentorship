## TASK-8: Implement SSL Let's Encrypt, migrate to AWS SSM

- [x] Kreiran DNS record dalibor-prastalo.awsbosnia.com pomoću mini skripte prizane na screenshotu,nakon čega je ispisan rekord u AWS Route53 zoni za imporovani CNAME.


- ![img-1](/week-9/screenshots/Route53_CNAME.png) 
 

- [x] Na EC2 instanci ec2-dalibor-prastalo-task-8 kreirao sam Let's Encrypt SSL certifikat i isti importovao u AWS Certificate Manager, koji sam dodjelio putem ALB-a
mojoj EC2 instanci, na nivou target grupe omogućio sam forward saobraćaja sa porta HTTP 80 na port HTTPS 443, aplikacija uspješno aktivna sa SSL-om.

- ![img-2](/week-0/screenshots/AWS-cert-mngr.png)
- ![img-2](/week-0/screenshots/SSL_Lets_Encrypt.png)

- [x] Omogućen autorenewal SSL certifikata gdje je kreiran cronjob putem skriptehttps://eff-certbot.readthedocs.io/en/stable/using.html#setting-up-automated-renewal
-  Skripta 
    - SLEEPTIME=$(awk 'BEGIN{srand(); print int(rand()*(3600+1))}'); echo "0 0,12 * * * root sleep $SLEEPTIME && certbot renew -q" | sudo tee -a /etc/crontab > /dev/null 
    

- [x] Koristeci openssl komande prikazao sam koji SSL certitikat koristim i datum njegovog isteka. 

- Komanda:
- `openssl s_client -showcerts -connect husein-bajrektarevic.awsbosnia.com:443`
- Komanda:
- `openssl s_client -showcerts -connect bajrektarevic-husein.awsbosnia.com:443 2>/dev/null | openssl x509 -noout -text`


- [x] Open SSL komandom prikazan certifikat koji se trenunto koristi

- openssl s_client -showcerts -servername dalibor-prastalo.awsbosnia.com -connect dalibor-prastalo.awsbosnia.com:443 2>/dev/null | openssl x509 -inform pem -noout -text`

- ![img-3](/week-9/screenshots/open_SSL.png)


- [x] Kreiran AMI image pod nazivom ami-ec2-dalibor-prastalo-task-8.

- ![img-2](/week-0/screenshots/AMI_image.png)

