FROM amazonlinux:2

# Atualiza pacotes e instala os necessários
RUN yum update -y 
RUN yum install -y httpd python3 python3-pip python3-mod_wsgi.x86_64

# Copia os arquivos necessários para os diretórios do container
RUN pip3 install Flask
COPY app.py /var/www/html/web1/
COPY flaskapp.wsgi /var/www/html/web1/
COPY vhost.conf /etc/httpd/conf.d/

EXPOSE 80
# Comando para iniciar o Apache (httpd) e garantir que ele reinicie ao rodar o container
CMD ["httpd", "-D", "FOREGROUND"]
