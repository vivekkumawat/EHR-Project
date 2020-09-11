# EHR-Project
An ethereum powered blockchain network which stores electronic health records.

## How To Run
### Prerequisites
1. Node.js & NPM (To install Node.js visit here <code>https://nodejs.org/en/</code>)
2. Truffle framework (To install framework <code>npm install truffle -g</code> run this command)
3. Ganache (To download Ganache visit here <code>https://www.trufflesuite.com/ganache</code>)

### Procedure
1. Git clone the repository
use command in terminal:- <code>git clone git@github.com:vivekkumawat/EHR-Project.git</code>
2. cd into folder and run:- <code>npm install</code>
3. Start Ganache and setup a workspace
   - Make sure to add project's truffle-config.js into Ganache workspace
4. Run command:- <code>truffle compile</code> into project folder to compile the code
5. Run command:- <code>truffle migrate</code> to deploy code on Ethereum network
6. To run the smart contracts
   - In terminal run command:- <code>truffle console</code>
   - Create an instance of smart contract for ex:- <code>patientsList = await Patients.deployed()</code>
   - To fetch the smart contract details:- <code>fetchPatients =   await patientsList.patients(1)</code>
   - Now simply type <code>fetchPatients</code> variable to fetch out all the patient details with id 1  
