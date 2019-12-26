import tkinter as tk
from tkinter import simpledialog
import TravelGuide as tg

### db instance
db = tg.Database()

def add_item():
    print(f'Hellow')

def populateListSights(event):
    commandList.delete(0, tk.END)
    for row in db.PrintSights():
        commandList.insert(tk.END, row)

def populateListRestaurants(event):
    commandList.delete(0, tk.END)
    header = "Name  Address  Type"
    commandList.insert(tk.END, header)
    for row in db.PrintRestaurant():
        commandList.insert(tk.END, row)

def populateListHotels(event):
    commandList.delete(0, tk.END)
    for row in db.PrintHotels():
        commandList.insert(tk.END, row)

def populateListTouristPackets (event):
    commandList.delete(0, tk.END)
    for row in db.PrintTouristPackets():
        commandList.insert(tk.END, row)

def populateListTransports(event):
    commandList.delete(0, tk.END)
    for row in db.PrintTransports():
        commandList.insert(tk.END, row)

def clearText():
    print(f'clear')

# tg.DBConnection();

### create window object
app = tk.Tk()
app.title("Travel Guide DB system")
app.geometry("700x450")
app.configure(background='grey25')
app.iconbitmap('favicon.ico')

### command
commandText = tk.StringVar()
commandLabel = tk.Label(app, text="SQL command", font=("bold", 14),
    pady=14, padx=14, background='grey25', fg="white")
commandLabel.grid(row=0, column=0, sticky=tk.W)
commandEntry = tk.Entry(app, textvariable=commandText, width=50)
commandEntry.grid(row=0, column=1)

### list box (listbox)
commandList = tk.Listbox(app, height=15, width=90, border=0)
commandList.grid(row=3, column=0, columnspan=3, rowspan=6, pady=14)

### create scroll bar...
scrollbar = tk.Scrollbar(app)
scrollbar.grid(row=3, column=2)
commandList.configure(yscrollcommand=scrollbar.set)
scrollbar.configure(command=commandList.yview)

### Buttons....
addBtn1 = tk.Button(app, text="Execute SQL command", width=20, command=add_item)
addBtn1.grid(row=1, column=0, pady=14, padx=14)

sightsBtn = tk.Button(app, text="Show Sights", width=20)
sightsBtn.bind("<Button-1>", populateListSights)
sightsBtn.grid(row=1, column=1, pady=14, padx=14)

hotelsBtn = tk.Button(app, text="Show Hotels", width=20)
hotelsBtn.bind("<Button-1>", populateListHotels)
hotelsBtn.grid(row=1, column=2, pady=14, padx=14)

foodBtns = tk.Button(app, text="Show Restaurants", width=20)
foodBtns.bind("<Button-1>", populateListRestaurants)
foodBtns.grid(row=2, column=0, pady=14, padx=14)

transpBtn = tk.Button(app, text="Show Transportation", width=20)
transpBtn.bind("<Button-1>", populateListTransports)
transpBtn.grid(row=2, column=1, pady=14, padx=14)

packetsBtn = tk.Button(app, text="Show Packets", width=20, command=clearText)
packetsBtn.bind("<Button-1>", populateListTouristPackets)
packetsBtn.grid(row=2, column=2, pady=14, padx=14)


### start program
app.mainloop()

