// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Prescriptions {
    uint256 public PrescriptionCount = 0;
    // Patients Model
    struct Prescription {
        uint256 id;
        uint256 doctorID;
        uint256 patientID;
        string prescriptionPDF;
    }

    mapping(uint256 => Prescription) public prescriptions;

    // Broadcasting when an patient event is created
    event PrescriptionCreated(uint256 id, uint256 doctorID, uint256 patientID, string namprescriptionPDF);

    // Constructor which initializes default values 1 is for doctorsID
    constructor() public {
        createPrescription(1, 1, "hashForPDF");
    }

    // A funnction to create patients

    function createPrescription(uint256 _doctorID, uint256 _patientID, string memory _prescriptionPDF) public {
        PrescriptionCount++;
        prescriptions[PrescriptionCount] = Prescription(
            PrescriptionCount,
            _doctorID,
            _patientID,
            _prescriptionPDF
        );
        emit PrescriptionCreated(PrescriptionCount, _doctorID, _patientID, _prescriptionPDF);
    }
}
