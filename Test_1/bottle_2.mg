{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "CameraInit": "9.0",
            "FeatureMatching": "2.0",
            "DepthMap": "3.0",
            "StructureFromMotion": "2.0",
            "ImageMatching": "2.0",
            "MeshFiltering": "3.0",
            "Texturing": "6.0",
            "ConvertSfMFormat": "2.0",
            "DepthMapFilter": "3.0",
            "Meshing": "7.0",
            "FeatureExtraction": "1.1",
            "PrepareDenseScene": "3.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "87ede92f5669794f29ef4b7ccbf3bedad6d395aa"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "f9ef7eb433397c10a1e4a878c20dbfb7402139d9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 44,
                "split": 5
            },
            "uids": {
                "0": "a8ab65c85c4ee883d9431dd46c5039ff39905752"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 44,
                "split": 1
            },
            "uids": {
                "0": "fd8979d885f8a08963933fe1d507d5d2d43fec4e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 44,
                "split": 2
            },
            "uids": {
                "0": "3052dd048b5c701fb48031068580cedf041fb68b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 44,
                "split": 1
            },
            "uids": {
                "0": "e8039d343ddc9ad446d5fc50fea52e798b9bb5c2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 44,
                "split": 2
            },
            "uids": {
                "0": "a49c39f6ac63f405e87d947ec3a6b689a85552d2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 44,
                "split": 1
            },
            "uids": {
                "0": "61dfb939918f3aac3ef2228ade117f93b2c28b2b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 28932609,
                        "poseId": 28932609,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150705.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:05\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"156\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 151505672,
                        "poseId": 151505672,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150704.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:04\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"147\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 296323348,
                        "poseId": 296323348,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150759.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:59\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"210\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.42\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 385625085,
                        "poseId": 385625085,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150758.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:58\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"210\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.42\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 410821006,
                        "poseId": 410821006,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150638.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:38\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"154\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 620792094,
                        "poseId": 620792094,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150639.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:39\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"199\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 750906347,
                        "poseId": 750906347,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150651.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:51\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"187\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 762907987,
                        "poseId": 762907987,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150653.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:53\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"187\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 769472556,
                        "poseId": 769472556,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150629.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:29\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"157\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 798366356,
                        "poseId": 798366356,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150719.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:19\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"168\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 845419584,
                        "poseId": 845419584,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150715.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:15\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"164\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 846073232,
                        "poseId": 846073232,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150628.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:28\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"162\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 860223882,
                        "poseId": 860223882,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150727.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:27\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"138\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1008883102,
                        "poseId": 1008883102,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150729.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:29\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"146\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1016642727,
                        "poseId": 1016642727,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150640.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:40\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"199\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1170908781,
                        "poseId": 1170908781,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150754.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:54\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"194\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.42\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1208394781,
                        "poseId": 1208394781,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150657.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:57\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"186\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1213352963,
                        "poseId": 1213352963,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150756.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:56\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"223\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.42\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1251523574,
                        "poseId": 1251523574,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150654.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:54\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"181\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1297365783,
                        "poseId": 1297365783,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150655.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:55\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"186\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1319860339,
                        "poseId": 1319860339,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150630.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:30\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"152\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1514578943,
                        "poseId": 1514578943,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150709.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:09\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"169\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1542176755,
                        "poseId": 1542176755,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150637.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:37\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"159\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1542605325,
                        "poseId": 1542605325,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150753.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:53\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1543244278,
                        "poseId": 1543244278,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150708.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:08\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"169\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1596082485,
                        "poseId": 1596082485,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150635.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:35\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"170\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1631040774,
                        "poseId": 1631040774,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150701.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:01\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"147\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1635771676,
                        "poseId": 1635771676,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150725.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:25\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"153\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1664842199,
                        "poseId": 1664842199,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150751.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:51\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"183\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1686582879,
                        "poseId": 1686582879,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150700.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:00\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"147\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1724844846,
                        "poseId": 1724844846,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150706.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:06\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"156\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1726818761,
                        "poseId": 1726818761,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150707.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:07\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"165\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1727530773,
                        "poseId": 1727530773,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150634.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:34\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"176\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1734765309,
                        "poseId": 1734765309,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150626.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:26\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"169\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1812702155,
                        "poseId": 1812702155,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150716.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:16\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"164\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1876044806,
                        "poseId": 1876044806,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150703.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:03\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"147\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1943568164,
                        "poseId": 1943568164,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150713.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:13\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"173\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1963948716,
                        "poseId": 1963948716,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150710.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:10\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"185\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2010772691,
                        "poseId": 2010772691,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150633.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:33\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"152\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2046001218,
                        "poseId": 2046001218,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150717.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:17\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"168\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2084164192,
                        "poseId": 2084164192,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150714.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:14\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"164\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2111158059,
                        "poseId": 2111158059,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150632.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:32\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"152\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.41\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2125417642,
                        "poseId": 2125417642,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150711.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:11\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"185\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.45\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 54\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2145287357,
                        "poseId": 2145287357,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150720.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:20\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"173\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 1099847069,
                        "initialFocalLength": 4.26,
                        "focalLength": 4.26,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4080,
                        "height": 3060,
                        "sensorWidth": 36.0,
                        "sensorHeight": 27.0,
                        "serialNumber": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001_HMD Global_Nokia G21",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 44,
                "split": 15
            },
            "uids": {
                "0": "d705b67d94c3e0cc890e49a282d02b9c0fe467fc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_scale2_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "179897243fea8d355c9093a2d336a7fa42ebb865"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 44,
                "split": 3
            },
            "uids": {
                "0": "9b6e12945852497ce9e92ae5ddb8992081776dc3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ConvertSfMFormat_1": {
            "nodeType": "ConvertSfMFormat",
            "position": [
                1000,
                144
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 44,
                "split": 1
            },
            "uids": {
                "0": "08f0171b009e5178be0f0d441d596e5f76f8a958"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "fileExt": "ply",
                "describerTypes": [
                    "dspsift"
                ],
                "imageWhiteList": [],
                "views": true,
                "intrinsics": true,
                "extrinsics": true,
                "structure": true,
                "observations": true,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.{fileExtValue}"
            }
        }
    }
}