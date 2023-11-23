class Bank:
    def __init__(self, name, balance):
        self.name = name
        self.balance = balance
    def add_money(self):
        money = int(input('How much do you want to add?'))
        self.balance += money
        print(f'New balance: {self.balance}')

    def _kill(self):
        self.balance = 0
        print('Your balance set to 0.')

    def _jackpot(self):
        self.balance *= 10

    def _combine_balance(self, other_balance):
        self.balance += other_balance

bektur = Bank('Beka', 100000)
bektur.add_money()
bektur._jackpot()
bektur._combine_balance(500)
print(f'final balance: {bektur.balance}')
bektur._kill()



