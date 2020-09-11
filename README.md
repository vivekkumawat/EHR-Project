# EHR-Project

## How To Run
### Prerequisites
1. Node.js & NPM
2. Truffle framework
3. Ganache

### Procedure
1. Git clone the repository
use command in terminal:- git clone git@github.com:vivekkumawat/EHR-Project.git
2. cd into folder and run:- npm install
3. Start Ganache and setup a workspace
   - Make sure to add project's truffle-config.js into Ganache workspace
4. Run command:- truffle compile into project folder to compile the code
5. Run command:- truffle migrate to deploy code on Ethereum network
6. To run the smart contracts
   - In terminal run command:- truffle console
   - Create an instance of smart contract for ex:- patientsList = await Patients.deployed()
   - To fetch the smart contract details:- fetchPatients =   await patientsList.patients(1)
   - Now simply type fetchPatients variable to fetch out all the patient details with id 1  