#!/bin/bash



MyHost="$(hostname)"

dockerIp=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  $containerHash)
MailHost=$dockerIp


MailPort=25



function checkStatus {

        read -u 3 sts line

        expect=250

        if [ $# -eq 1 ] ; then

                expect="${1}"

        fi

        if [ $sts -ne $expect ] ; then

                echo "Error: ${line}"

                exit

        fi

}



destino=$1

archivo=$2



#definir  estas variables

FromAddr="juancito@mail.com"

ToAddr="${destino}"

Subject="Mail de logs"

Body="cuerpo del mail"

myfile=`cat ${archivo} | openssl base64`





# Brilliant!!

exec 3<>/dev/tcp/${MailHost}/${MailPort} ; checkStatus 220



echo "HELO ${MyHost}" >&3 ; checkStatus

echo "MAIL FROM: ${FromAddr}" >&3 ; checkStatus

echo "RCPT TO: ${ToAddr}" >&3 ; checkStatus

echo "DATA" >&3 ; checkStatus 354

echo "Subject: ${Subject}" >&3

echo "Content-Type: multipart/mixed; boundary=sep" >&3

echo "--sep" >&3

echo "Content-Type: text/plain; charset=UTF-8" >&3

echo "${Body}" >&3

echo "--sep" >&3

echo "Content--Type: text/x-log; name=\"mytest.log\"" >&3

echo "Content-Disposition: attachment; filename=\"mytest.log\"" >&3

echo "Content-Transfer-Encoding: base64" >&3

echo "" >&3

echo "$myfile" >&3

echo "--sep--" >&3

echo "." >&3 ; checkStatus
