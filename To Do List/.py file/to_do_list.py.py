from tkinter import*

tdl = Tk()

#Changing the title of the application.
tdl.title('To-Do-List')

#Determining the dimensions of the application:
tdl.geometry('500x620')
tdl.resizable(False,False)

#Creating all the button commands:
def add_button():
    global tasks_list
    task = entry.get()
    if task!='':
        lb.insert(END,'╰┈➤ ' + task)
        entry.delete(0,END)

def del_button():
    lb.delete(ANCHOR)

def complete_button():
    index = lb.curselection()
    item = lb.get(index[0])
    lb.delete(ANCHOR)
    lb.insert(index[0],item)
    lb.itemconfig(index[0],{'fg':'#C0C0C0'})

def priority_b1():
    index = lb.curselection()
    item = lb.get(index[0])
    lb.delete(ANCHOR)
    lb.insert(index[0],item + '    ✩')

def priority_b2():
    index = lb.curselection()
    item = lb.get(index[0])
    lb.delete(ANCHOR)
    lb.insert(index[0],item + '    ✩✩')

def priority_b3():
    index = lb.curselection()
    item = lb.get(index[0])
    lb.delete(ANCHOR)
    lb.insert(index[0],item + '    ✩✩✩')

#Setting the main background colour.
bg = Label(tdl,width=500,height=620,bg='#FFDEEE')
bg.place(x=0,y=0)

#Adding a cute checker-board pattern:
p1 = Label(bg,width=500,height=3,bg='#F2B4D1')
p1.place(x=0,y=0)
p2 = Label(bg,width=500,height=3,bg='#F2B4D1')
p2.place(x=0,y=90)
p3 = Label(bg,width=500,height=3,bg='#F2B4D1')
p3.place(x=0,y=180)
p4 = Label(bg,width=500,height=3,bg='#F2B4D1')
p4.place(x=0,y=270)
p5 = Label(bg,width=500,height=3,bg='#F2B4D1')
p5.place(x=0,y=360)
p6 = Label(bg,width=500,height=3,bg='#F2B4D1')
p6.place(x=0,y=450)
p7 = Label(bg,width=500,height=3,bg='#F2B4D1')
p7.place(x=0,y=540)

#Creating the main frame and a frame for the frame:
border= Frame(tdl, width=424, height= 584, bg='#BC8F8F')
border.place(x=38,y=18)
mframe = Frame(tdl,width=420,height=580,bg='#FFCCE5')
mframe.place(x=40,y=20)

#Adding a small title for the application.
border_hd = Label(mframe,width=420,height=4,bg='#DF9ABA')
border_hd.place(x=0,y=20)
header = Label(mframe,width=32,height=2,text="-ˋˏ ༻❁ A&K'S TO-DO-LIST ❁༺ ˎˊ-",font='timesnewroman 16 bold',bg='#E4A4C4',fg='black')
header.place(x=0,y=25)

#Creating the lsit box where the users inputs can be displayed.
iframe = Frame(mframe,width =270,height=370)
iframe.place(x=20,y=145)
lb = Listbox(iframe,width=35,height=19,font='Timesnewroman 12',bg='#FFECF9',selectbackground='#D8BFD8')
lb.pack(fill=BOTH,expand=TRUE)

#Creating the entry and add button:
entry = StringVar()
entry = Entry(mframe,width=36,font='timesnewroman 9',bg='#FFECF9')
entry.place(x=20,y=100)
entry.focus()

#Creating the buttons and adding them to the interface:
help = Button(mframe,text='HELP',font='timesnewroman 11 bold',bg='#DF9ABA',fg='#202020',command=add_button)

add = Button(mframe,text='ADD',font='timesnewroman 11 bold',bg='#DF9ABA',fg='#202020',command=add_button)
add.place(x=288,y=100)

del_b = Button(mframe,text='DELETE',font='timesnewroman 11 bold',bg='#DF9ABA',fg='#202020',command=del_button)
del_b.place(x=60,y=530)

comp_b=Button(mframe,text='COMPLETED',font='timesnewroman 11 bold',bg='#DF9ABA',fg='#202020',command=complete_button)
comp_b.place(x=170,y=530)

#Creating the priorities button and label:
announcement = Label(mframe,text='⁀➷FOCUS:',font='timesnewroman 11 bold',bg='#E4A4C4')
announcement.place(x=339,y=155)

pb_lvl1 = Button(mframe,text='    ✩    ',font='timesnewroman 10 bold',bg='#FF79C1',fg='#202020',command=priority_b1)
pb_lvl1.place(x=355,y=200)

pb_lvl2 = Button(mframe,text='  ✩✩  ',font='timesnewroman 10 bold',bg='#D82C88',fg='#202020',command=priority_b2)
pb_lvl2.place(x=355,y=270)

pb_lvl3 = Button(mframe,text='✩✩✩',font='timesnewroman 10 bold',bg='#97155A',fg='#202020',command=priority_b3)
pb_lvl3.place(x=355,y=340)

tdl.mainloop()