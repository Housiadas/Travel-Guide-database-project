import pymysql
from prettytable import PrettyTable
from prettytable import from_db_cursor

class Database:

    def __init__(self):

        host = 'localhost'

        try:
            dbname ='travel_guide'
            self.con = pymysql.connect(host = host, port=3306,
                 user='root', passwd=None, db=dbname, charset='utf8')
        except pymysql.Error as e:
            print ('Σφάλμα', e)
        else:
            self.con.isolation_level = None
            self.cur = self.con.cursor()
            self.cur.execute('select version()')
            print('Εκδοση βάσης δεδομένων: {}'.format(self.cur.fetchone()))
            print('Kάλωσήρθατε στην βάση δεδομένων του ταξιδιώτικου οδηγού')


    def GiveSqlCommand (self):
        # print('Δώσε την εντολή mysql (enter για έξοδο)')
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

    def PrintSights (self):
        self.cur.execute("SELECT onoma FROM aksiotheata")
        # mytable=from_db_cursor(self.cur)
        # print(mytable)

        rows = self.cur.fetchall()
        return rows

    def PrintRestaurant (self):
        self.cur.execute("SELECT onoma,dieuthunsi,type FROM estiasi")
        # mytable=from_db_cursor(self.cur)
        # print(mytable)
        rows = self.cur.fetchall()
        return rows

    def PrintHotels (self):
        self.cur.execute("SELECT onoma,asteria as 'αξιολόγηση',dieuthunsi,price FROM diamoni")
        rows = self.cur.fetchall()
        return rows

    def PrintTouristPackets (self):
        self.cur.execute("SELECT tourist_routes.title,tourist_routes.dieuthunsi,tourist_routes.price FROM tourist_routes ORDER by tourist_routes.title")
        rows = self.cur.fetchall()
        return rows

    def PrintTransports (self):
        self.cur.execute("SELECT aksiotheata.onoma,metaforika.kwdikos,metaforika.type,metaforika.stasi FROM aksiotheata,metaforika,prosvasi_aks WHERE aksiotheata.kwdikos=prosvasi_aks.kwd_aks AND prosvasi_aks.kwd_meta=metaforika.kwdikos AND metaforika.stasi=prosvasi_aks.stasi ORDER BY aksiotheata.onoma")
        rows = self.cur.fetchall()
        return rows

    def __del__(self):
        self.cur.execute('commit')
        self.con.close()


if __name__ == '__main__':

    db = Database()


