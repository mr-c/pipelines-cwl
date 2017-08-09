{
    "cwlVersion": "draft-3",
    "inputs": [
        {
            "id": "#input_file",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "class": "Workflow",
    "requirements": [],
    "steps": [
        {
            "outputs": [
                {
                    "id": "#md5.report"
                }
            ],
            "run": "md5.1.cwl",
            "id": "#md5",
            "inputs": [
                {
                    "id": "#md5.input_file",
                    "source": [
                        "#input_file"
                    ]
                }
            ]
        },
        {
            "outputs": [
                {
                    "id": "#validatefiles.report"
                }
            ],
            "run": "validate.10.cwl",
            "id": "#validatefiles",
            "inputs": [
                {
                    "id": "#validatefiles.input_file",
                    "source": [
                        "#input_file"
                    ]
                },
                {
                    "id": "#validatefiles.type"
                }
            ]
        }
    ],
    "outputs": [
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#validatefiles_report",
            "source": [
                "#validatefiles.report"
            ]
        },
        {
            "type": [
                "null",
                "File"
            ],
            "id": "#md5_report",
            "source": [
                "#md5.report"
            ]
        }
    ]
}