days = int(input("Input the age in days:\n"))

years = days // 365
days %= 365

months = days // 30
days %= 30

print(f"{years} Years")
print(f"{months} Months")
print(f"{days} Days")
