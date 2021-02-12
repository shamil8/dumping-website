#!/bin/bash

destdir=./data.txt

for i in {1..2}
do
   # we got title from example.com two times
   echo $(curl "https://example.com") | grep -o -P '(?<=<title>).*(?=<\/title>)'  >> "$destdir"
 
   # get some pages in your website
  #echo $(curl "https://reestr.nopriz.ru/reestr?us_registrationNumber=&us_fullDescription=&s_title=%D0%AF%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D1%87%D0%BB%D0%B5%D0%BD%D0%BE%D0%BC&m_fullDescription=&m_inn=&m_ogrnip=&m_registryRegistrationDate=&m_director=&sort=us.registrationNumber&direction=asc&page=$i") | grep -o -P '(?<=<tbody>).*(?=<\/tbody>)'  >> "$destdir"
 
   # to get all data
  #echo $(curl "https://reestr.nopriz.ru/reestr?us_registrationNumber=&us_fullDescription=&s_title=%D0%AF%D0%B2%D0%BB%D1%8F%D0%B5%D1%82%D1%81%D1%8F%20%D1%87%D0%BB%D0%B5%D0%BD%D0%BE%D0%BC&m_fullDescription=&m_inn=&m_ogrnip=&m_registryRegistrationDate=&m_director=&sort=us.registrationNumber&direction=asc&page=$i") >> "$destdir"
done
