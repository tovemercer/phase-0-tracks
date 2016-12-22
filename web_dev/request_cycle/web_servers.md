1. What are some of the key design philosophies of the Linux operating system?

The philosophy Linux was built on was that the user would be computer literate and know what they are doing. A different approach from other OS where the philosophy was to protect the user for the complexity of computers.

- the power is in the hands of the user
- you can do just about anything
- open source
- each program does one thing well
- prototype as soon as possible
- portability over efficiency
- store data in flat text files
- use software leverage
- shell scripts to increase leverage and portability
- avoid captive user interfaces
- make every program a filter 


2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

VPS's are virtual machines sold as a service by an Internet hosting service. It runs it's own copy of an operating system allowing almost any software to be installed. Functionally similar to a detached physical server and more easily created and configured. The price of a VPS is much lower than a physical server.


Optional bonus question: 
Why is it considered a bad idea to run programs as the root user on a Linux system?

It is best practice on nay OS to run applications on a user level and leave admin tasks to the root. 

On Linux, it goes against the security model, applications are meant to be run with non-admin security. Running on the root would open up the possibilities of attacks.