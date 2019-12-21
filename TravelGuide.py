import pymysql
from prettytable import PrettyTable
from prettytable import from_db_cursor

def GiveSqlCommand ():
    print('Δώσε την εντολή mysql (enter για έξοδο)')
    buffer = ""
    while True:
        line = input('>>>')
        if line == "":
            print ("bye")
            break
        buffer += line
        print (buffer)
        if True:
            try:
                buffer = buffer.strip()
                if buffer.lstrip().upper().startswith("SELECT"):
                    count=0
                    cur.execute(buffer)
                    desc = [x[0] for x in cur.description]
                    print(*desc, sep='\t')
                    for row in cur.fetchall():
                        for i in row :
                            print (i, end = '\t')
                        print()
                        count +=1
                        if count%30==0:
                            reply = input ( "....more ? (y/n)")
                            if reply != "y" :
                                break
                            else:
                                print ()
                else:
                    cur.execute(buffer)
                    cur.execute('commit')
                print ("σύνολο :", cur.rowcount )
            except pymysql.Error as e:
                print ("An error occurred:", e)
            buffer = ""

def PrintSights ():
    count=0
    cur.execute("SELECT onoma FROM aksiotheata")
    mytable=from_db_cursor(cur)
    print(mytable)

def PrintRestaurant ():
    count=0
    cur.execute("SELECT onoma,dieuthunsi,type FROM estiasi")
    mytable=from_db_cursor(cur)
    print(mytable)

def PrintHotels ():
    count=0
    cur.execute("SELECT onoma,asteria as 'αξιολόγηση',dieuthunsi,price FROM diamoni")
    mytable=from_db_cursor(cur)
    print(mytable)

def PrintTouristPackets ():
    count=0
    cur.execute("SELECT tourist_routes.title,tourist_routes.dieuthunsi,tourist_routes.price FROM tourist_routes ORDER by tourist_routes.title")
    mytable=from_db_cursor(cur)
    print(mytable)

def PrintTransports ():
    count=0
    cur.execute("SELECT aksiotheata.onoma,metaforika.kwdikos,metaforika.type,metaforika.stasi FROM aksiotheata,metaforika,prosvasi_aks WHERE aksiotheata.kwdikos=prosvasi_aks.kwd_aks AND prosvasi_aks.kwd_meta=metaforika.kwdikos AND metaforika.stasi=prosvasi_aks.stasi ORDER BY aksiotheata.onoma")
    mytable=from_db_cursor(cur)
    print(mytable)

def main_menu():
    print('\nΕΠΙΛΟΓΕΣ (enter για έξοδο)')
    print('1: Πάτηστε 1 για εντολή mysql')
    print('2: Πάτηστε 2 για να εμφανιστούν τα αξιοθέατα')
    print('3: Πάτηστε 3 για να εμφανιστούν οι χώροι εστίασης')
    print('4: Πάτηστε 4 για να εμφανιστούν οι χώροι διαμονής')
    print('5: Πάτηστε 5 για να εμφανιστούν οι Τουριστικες Διαδρομές')
    print('6: Πάτηστε 6 για να εμφανιστούν στάσεις για πρόσβαση προς τα αξιοθέατα')
    answer = ' '
    while not answer in '1 2 3 4 5 6'.split():
        answer = input('επιλογή.....')
        if answer == '': return 0
    else:
        return answer

###########################################################################################################
#Κύριο Πρόγραμμα

def main():
    h = 'localhost'
    global cur

    while True:
        try:
            dbname ='travel_guide'
            con = pymysql.connect(host = h, port=3306,
                 user='root', passwd=None, db=dbname, charset='utf8')
        except pymysql.Error as e:
            print ('Σφάλμα', e)
        else:
            con.isolation_level = None
            cur = con.cursor()
            cur.execute('select version()')
            print('Εκδοση βάσης δεδομένων: {}'.format(cur.fetchone()))
            print('Kάλωσήρθατε στην βάση δεδομένων του ταξιδιώτικου οδηγού')
            break

    buffer = ""
    while True:
        answer = main_menu()
        if not answer: break
        elif answer == '1': GiveSqlCommand()
        elif answer == '2': PrintSights()
        elif answer == '3': PrintRestaurant()
        elif answer == '4': PrintHotels()
        elif answer == '5': PrintTouristPackets()
        elif answer == '6': PrintTransports()

    cur.execute('commit')
    con.close()

if __name__ == '__main__':
    main()

