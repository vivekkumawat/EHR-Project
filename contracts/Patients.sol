// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Patients {
    uint256 public PatientCount = 0;
    // Patients Model
    struct Patient {
        uint256 id;
        string name;
        string email;
        string phone;
        string gender;
        string age;
        string addr;
    }

    mapping(uint256 => Patient) public patients;

    // Broadcasting when an patient event is created
    event PatientCreated(
        uint256 id,
        string name,
        string email,
        string phone,
        string gender,
        string age,
        string addr
    );

    // Constructor which initializes default values
    constructor() public {
        createPatient(
            "Vivek",
            "vivekkumawat360@gmail.com",
            "8054845360",
            "M",
            "22",
            "Ajmer"
        );
    }

    // A funnction to create patients

    function createPatient(
        string memory _name,
        string memory _email,
        string memory _phone,
        string memory _gender,
        string memory _age,
        string memory _addr
    ) public {
        PatientCount++;
        patients[PatientCount] = Patient(
            PatientCount,
            _name,
            _email,
            _phone,
            _gender,
            _age,
            _addr
        );
        emit PatientCreated(
            PatientCount,
            _name,
            _email,
            _phone,
            _gender,
            _age,
            _addr
        );
    }
}
