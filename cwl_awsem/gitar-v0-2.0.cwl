{
    "requirements": [],
    "outputs": [
        {
            "id": "#sorted_bam_pe",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.sorted_bam_pe"
            ]
        },
        {
            "id": "#HiC_project_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_project_object_hdf5"
            ]
        },
        {
            "id": "#HiC_distance_function_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_distance_function_hdf5"
            ]
        },
        {
            "id": "#normalized_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_fend_contact_matrix"
            ]
        },
        {
            "id": "#normalized_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
            ]
        },
        {
            "id": "#expected_enrich_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_enrich_contact_matrix"
            ]
        },
        {
            "id": "#split_bam2",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam2"
            ]
        },
        {
            "id": "#split_bam1",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_fastq2bam.split_bam1"
            ]
        },
        {
            "id": "#fend_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.fend_object_hdf5"
            ]
        },
        {
            "id": "#HiC_norm_binning_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
            ]
        },
        {
            "id": "#HiC_data_object_hdf5",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_bam2hdf5.HiC_data_object_hdf5"
            ]
        },
        {
            "id": "#observed_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.observed_contact_matrix"
            ]
        },
        {
            "id": "#expected_fend_contact_matrix",
            "type": [
                "null",
                "File"
            ],
            "source": [
                "#hictool_hdf52matrix.expected_fend_contact_matrix"
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_fastq2",
            "type": [
                "File"
            ]
        },
        {
            "id": "#input_fastq1",
            "type": [
                "File"
            ]
        },
        {
            "id": "#bowtie_index",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#RE_bed",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#chrlen_file",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#contact_matrix_binsize",
            "type": [
                "int"
            ]
        },
        {
            "id": "#chromosome",
            "type": [
                {
                    "items": "string",
                    "type": "array"
                }
            ]
        }
    ],
    "steps": [
        {
            "run": "fastq2bam.14.cwl",
            "outputs": [
                {
                    "id": "#hictool_fastq2bam.split_bam2"
                },
                {
                    "id": "#hictool_fastq2bam.split_bam1"
                },
                {
                    "id": "#hictool_fastq2bam.sorted_bam_pe"
                }
            ],
            "inputs": [
                {
                    "id": "#hictool_fastq2bam.output_dir"
                },
                {
                    "id": "#hictool_fastq2bam.input_fastq2",
                    "source": [
                        "#input_fastq2"
                    ]
                },
                {
                    "id": "#hictool_fastq2bam.input_fastq1",
                    "source": [
                        "#input_fastq1"
                    ]
                },
                {
                    "id": "#hictool_fastq2bam.bowtie_index",
                    "source": [
                        "#bowtie_index"
                    ]
                }
            ],
            "id": "#hictool_fastq2bam"
        },
        {
            "run": "bam2hdf5.4.cwl",
            "outputs": [
                {
                    "id": "#hictool_bam2hdf5.fend_object_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_project_object_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_distance_function_hdf5"
                },
                {
                    "id": "#hictool_bam2hdf5.HiC_data_object_hdf5"
                }
            ],
            "inputs": [
                {
                    "id": "#hictool_bam2hdf5.output_dir"
                },
                {
                    "id": "#hictool_bam2hdf5.input_bam2",
                    "source": [
                        "#hictool_fastq2bam.split_bam2"
                    ]
                },
                {
                    "id": "#hictool_bam2hdf5.input_bam1",
                    "source": [
                        "#hictool_fastq2bam.split_bam1"
                    ]
                },
                {
                    "id": "#hictool_bam2hdf5.RE_bed",
                    "source": [
                        "#RE_bed"
                    ]
                }
            ],
            "id": "#hictool_bam2hdf5"
        },
        {
            "run": "bam2matrix2.7.cwl",
            "outputs": [
                {
                    "id": "#hictool_hdf52matrix.observed_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.normalized_fend_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.expected_fend_contact_matrix"
                },
                {
                    "id": "#hictool_hdf52matrix.expected_enrich_contact_matrix"
                }
            ],
            "inputs": [
                {
                    "id": "#hictool_hdf52matrix.output_dir"
                },
                {
                    "id": "#hictool_hdf52matrix.fend_object_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.fend_object_hdf5"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.contact_matrix_binsize",
                    "source": [
                        "#contact_matrix_binsize"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.chromosome",
                    "source": [
                        "#chromosome"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.chrlen_file",
                    "source": [
                        "#chrlen_file"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.HiC_norm_binning_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
                    ]
                },
                {
                    "id": "#hictool_hdf52matrix.HiC_data_object_hdf5",
                    "source": [
                        "#hictool_bam2hdf5.HiC_data_object_hdf5"
                    ]
                }
            ],
            "scatter": "#hictool_hdf52matrix.chromosome",
            "id": "#hictool_hdf52matrix"
        }
    ],
    "cwlVersion": "draft-3",
    "class": "Workflow"
}