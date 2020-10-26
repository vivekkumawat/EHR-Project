// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Reports {
    uint256 public ReportCount = 0;
    // Patients Model
    struct Report {
        uint256 id;
        string reportPdf;
        string reportDesc;
        uint256 Prescription;
        uint256 doctorID;
        uint256 patientID;
    }

    mapping(uint256 => Report) public reports;

    // Broadcasting when an report event is created
    event ReportCreated(
        uint256 id,
        string reportPdf,
        string reportDesc,
        uint256 PrescriptionID,
        uint256 doctorID,
        uint256 patientID
    );

    // Constructor which initializes default values
    constructor() public {
        createReport("reportHASH", "SomeDescriptionAboutReport", 1, 1, 1);
    }

    // A funnction to create patients

    function createReport(
        string memory _reportPdf,
        string memory _reportDesc,
        uint256 _PrescriptionID,
        uint256 _doctorID,
        uint256 _patientID
    ) public {
        ReportCount++;
        reports[ReportCount] = Report(
            ReportCount,
            _reportPdf,
            _reportDesc,
            _PrescriptionID,
            _doctorID,
            _patientID
        );
        emit ReportCreated(
            ReportCount,
            _reportPdf,
            _reportDesc,
            _PrescriptionID,
            _doctorID,
            _patientID
        );
    }
}
