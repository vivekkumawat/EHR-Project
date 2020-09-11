// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Doctors {
    uint256 public DoctorCount = 0;
    // Patients Model
    struct Doctor {
        uint256 doctorID;
        string name;
        string specialistType;
        string phone;
        string email;
        string addr;
    }

    mapping(uint256 => Doctor) public doctors;

    // Broadcasting when an patient event is created
    event DoctorCreated(
        uint256 doctorID,
        string name,
        string specialistType,
        string phone,
        string email,
        string addr
    );

    // Constructor which initializes default values
    constructor() public {
        createDoctor(
            "Vivek",
            "Psychologist",
            "8054845360",
            "vivekkumawat360@gmail.com",
            "Ajmer"
        );
    }

    // A funnction to create patients

    function createDoctor(
        string memory _name,
        string memory _specialistType,
        string memory _phone,
        string memory _email,
        string memory _addr
    ) public {
        DoctorCount++;
        doctors[DoctorCount] = Doctor(
            DoctorCount,
            _name,
            _specialistType,
            _phone,
            _email,
            _addr
        );
        emit DoctorCreated(
            DoctorCount,
            _name,
            _specialistType,
            _phone,
            _email,
            _addr
        );
    }
}
