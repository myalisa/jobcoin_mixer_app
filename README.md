# README

Exercise: Create a jobcoin mixer that takes in multiple addresses from a user to send jobcoin for later withdrawal. Then once the transaction has been sent, the mixer will move the user's coin to a 'house account' which stores all jobcoin from multiple users. Upon request, the mixer will then evenly distribute the user's indicated amount of coin to the withdrawal addresses they provided previously.

I created my own Rails API with a SQL database where I stored the users and transactions. 

Features:

Transactions: A user sends three addresses, and a jobcoin amount which gets added to the house account

Withdrawals: A user can create a withdrawal with a jobcoin amount, and the mixer will evenly distribute the jobcoin to the addresses indicated previously, and the jobcoin will be coming from the house account


Icebox:

If I had more time, I would try to implement these features:

I would add happy/sad paths to the withdrawal functions. The user will see either "You can withdraw your funds" or "insufficient funds" if they tried to withdraw more than they have.

I would also try to make it so that the user_id is somehow not connected to the withdraw for more anonimity. 

Create a frontend for this app with a send transaction, and withdraw jobcoin form. I would also add more user functionality to login, logout and see your balance.

I would try and work with the API provided in the template.



