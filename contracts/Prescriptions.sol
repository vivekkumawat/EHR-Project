// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Prescriptions {
    uint256 public PrescriptionCount = 0;
    // Patients Model
    struct Prescription {
        uint256 id;
        string prescriptionPDF;
    }

    mapping(uint256 => Prescription) public prescriptions;

    // Broadcasting when an patient event is created
    event PrescriptionCreated(uint256 id, string namprescriptionPDF);

    // Constructor which initializes default values
    constructor() public {
        createPrescription("hashForPDF");
    }

    // A funnction to create patients

    function createPrescription(string memory _prescriptionPDF) public {
        PrescriptionCount++;
        prescriptions[PrescriptionCount] = Prescription(
            PrescriptionCount,
            _prescriptionPDF
        );
        emit PrescriptionCreated(PrescriptionCount, _prescriptionPDF);
    }
}
