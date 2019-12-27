import pymysql
import json
# from prettytable import PrettyTable
# from prettytable import from_db_cursor

class Database:

    def __init__(self, db):

        host = 'localhost'

        try:
            self.con = pymysql.connect(host = host, port=3306,
                 user='root', passwd=None, db=db, charset='utf8')
        except pymysql.Error as e:
            print ('Σφάλμα', e)
        else:
            self.con.isolation_level = None
            self.cur = self.con.cursor()
            self.cur.execute('select version()')
            print('Εκδοση βάσης δεδομένων: {}'.format(self.cur.fetchone()))
            print('Kάλωσήρθατε στην βάση δεδομένων του ταξιδιώτικου οδηγού')


    def GiveSqlCommand (self, command):
        # buffer = ""
        response = {"header": "", "res": "", "error": ""}
        print (command)
        try:
            command = command.strip()
            if command.lstrip().upper().startswith("SELECT"):
                # count=0
                self.cur.execute(command)
                desc = [x[0] for x in self.cur.description]
                print(*desc, sep='\t')
                rows = self.cur.fetchall()
                response.update({"header": desc, "res": rows})
                response = json.dumps(response)
                return response

            else:
                self.cur.execute(command)
                self.cur.execute('commit')
                print ("σύνολο :", self.cur.rowcount )
                response.update({"res": self.cur.rowcount})
                response = json.dumps(response)
                return response

        except pymysql.Error as e:
            print ("An error occurred:", e)
            response.update({"error": "An error occurred, check again!"})
            response = json.dumps(response)
            return response

    def PrintSights (self):
        self.cur.execute("SELECT onoma FROM aksiotheata")
        # mytable=from_db_cursor(self.cur)
        # print(mytable)
        rows = self.cur.fetchall()
        return rows

    def PrintRestaurant (self):
        self.cur.execute("SELECT onoma,dieuthunsi,type FROM estiasi")
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

    db = Database('travel_guide')


