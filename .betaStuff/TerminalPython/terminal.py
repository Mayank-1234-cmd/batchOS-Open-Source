from random import *
print()
print("Python Terminal")
print()
print("Type $help for help information")
def terminal():
  command=input("Enter Command >>>  ")
  if command== ("$help"):
    print()
    print("Python Terminal Help Information")
    print()
    print("$help")
    print("Displays this help information")
    print()
    print("$random")
    print("Displays a random number")
    print()
    print("$exit")
    print("Exits the Terminal")
    print()
    terminal()
  elif command== ("$random"):
    randomnumber= randint(1,999999999999999999999999999999)
    print()
    print("Randomly Generated Number:")
    print(randomnumber)
    print()
    terminal()
  elif command==("$exit"):
    exit()
  
terminal()
