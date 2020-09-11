const Patients = artifacts.require("./Patients.sol");
const Reports = artifacts.require("./Reports.sol");
const Prescriptions = artifacts.require("./Prescriptions.sol");
const Doctors = artifacts.require("./Doctors.sol");

module.exports = function (deployer) {
  deployer.deploy(Patients);
  deployer.deploy(Reports);
  deployer.deploy(Prescriptions);
  deployer.deploy(Doctors);
};
