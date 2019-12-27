import tkinter as tk
from tkinter import messagebox
from tkinter import Grid
from tkinter import ttk
import TravelGuide as tg
import json

### db instance .....
db = tg.Database('travel_guide')

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

def sqlCommand(event):
    commandList.delete(0, tk.END)
    if(commandText.get() ==""):
        messagebox.showerror("Required Field", "Please insert command!")
        return
    else:
        response = db.GiveSqlCommand(commandText.get())
        response = json.loads(response)
        if(response["error"] != ""):
            print(response["error"])
            messagebox.showerror("Command Error", response["error"])
        else:
            print(response["res"])
            commandList.insert(tk.END, response["res"])

def selectItem(event):
    global selectedItem
    index = commandList.curselection()[0]
    selectedItem = commandList.get(index)
    print(selectedItem)

#################################################################################################################
######### create window object
app = tk.Tk()

app.title("Travel Guide DB system")
app.geometry("720x500")
app.configure(background='grey25')
app.iconbitmap('favicon.ico')

##### responsive grid
Grid.rowconfigure(app, 0, weight=1)
Grid.columnconfigure(app, 0, weight=1)

frame1 = tk.Frame(app, background="grey25")
frame1.grid(row=0, column=0, sticky=tk.N)

frame2 = tk.Frame(app, background="grey25")
frame2.grid(row=1, column=0, sticky=tk.S+tk.N+tk.E+tk.W)
Grid.rowconfigure(frame2, 0, weight=1)
Grid.columnconfigure(frame2, 0, weight=1)

### command Text....
commandText = tk.StringVar()
commandLabel = tk.Label(frame1, text="SQL command", font=("bold", 16),
    pady=14, padx=14, background='grey25', fg="white")
commandLabel.grid(row=0, column=1)
commandEntry = tk.Entry(frame1, textvariable=commandText, width=50)
commandEntry.grid(row=0, column=2)

### Listbox (listbox)
commandList = tk.Listbox(frame2, height=15, width=100, border=0)
commandList.grid(row=0, column=0, columnspan=3, rowspan=6, pady=14, padx=14, sticky=tk.S+tk.N+tk.E+tk.W)
commandList.bind("<<ListboxSelect>>", selectItem)

### create scroll bar...
scrollbar = tk.Scrollbar(frame2)
scrollbar.grid(row=0, column=2, sticky=tk.N)
commandList.configure(yscrollcommand=scrollbar.set)
scrollbar.configure(command=commandList.yview)

### Buttons....
sqlBtn = tk.Button(frame1, text="Execute SQL command", width=20)
sqlBtn.bind("<Button-1>", sqlCommand)
sqlBtn.grid(row=1, column=1, pady=14, padx=14)

sightsBtn = tk.Button(frame1, text="Show Sights", width=20)
sightsBtn.bind("<Button-1>", populateListSights)
sightsBtn.grid(row=1, column=2, pady=14, padx=14)

hotelsBtn = tk.Button(frame1, text="Show Hotels", width=20)
hotelsBtn.bind("<Button-1>", populateListHotels)
hotelsBtn.grid(row=1, column=3, pady=14, padx=14)

foodBtn = tk.Button(frame1, text="Show Restaurants", width=20)
foodBtn.bind("<Button-1>", populateListRestaurants)
foodBtn.grid(row=2, column=1, pady=14, padx=14)

transpBtn = tk.Button(frame1, text="Show Transportation", width=20)
transpBtn.bind("<Button-1>", populateListTransports)
transpBtn.grid(row=2, column=2, pady=14, padx=14)

packetsBtn = tk.Button(frame1, text="Show Packets", width=20)
packetsBtn.bind("<Button-1>", populateListTouristPackets)
packetsBtn.grid(row=2, column=3, pady=14, padx=14)

packetsBtn = tk.Button(frame1, text="Delete Item", width=20)
packetsBtn.bind("<Button-1>", populateListTouristPackets)
packetsBtn.grid(row=3, column=2, pady=14, padx=14)

#### line seperator
ttk.Separator(frame1, orient=tk.VERTICAL).grid(column=0, row=0, rowspan=4, sticky='ns')
ttk.Separator(frame1, orient=tk.VERTICAL).grid(column=4, row=0, rowspan=4, sticky='ns')
ttk.Separator(frame1, orient=tk.HORIZONTAL).grid(row=4, columnspan=4, sticky="ew")


#### responsive grid
for x in range(0):
  Grid.columnconfigure(frame2, x, weight=1)
for y in range(1):
  Grid.rowconfigure(frame2, y, weight=1)

#### start program
app.mainloop()

