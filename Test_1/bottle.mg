{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.1.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Meshing": "7.0",
            "FeatureMatching": "2.0",
            "DepthMapFilter": "3.0",
            "Texturing": "6.0",
            "FeatureExtraction": "1.1",
            "DepthMap": "3.0",
            "PrepareDenseScene": "3.0",
            "CameraInit": "9.0",
            "ImageMatching": "2.0",
            "MeshFiltering": "3.0",
            "StructureFromMotion": "2.0"
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
                "0": "4d6dcb99eaa4f14cbd089c7fc3c5cbe3d321b797"
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
                "0": "590e3921a6c68e0b831d123eec99232439d0f1e3"
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
                "size": 64,
                "split": 7
            },
            "uids": {
                "0": "e6973f2f515b5e749b293ddf03f2c6c3d2ad1e24"
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
                "size": 64,
                "split": 1
            },
            "uids": {
                "0": "99f6080241f2701dc8b22eb826cd6274ab691737"
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
                "size": 64,
                "split": 2
            },
            "uids": {
                "0": "ad823dfe6e751781c0f2dc700bf03be3458b156f"
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
                "size": 64,
                "split": 1
            },
            "uids": {
                "0": "98a740f4e6701dd8ae01805f27b8f0951f730f99"
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
                "size": 64,
                "split": 2
            },
            "uids": {
                "0": "f1714e104ef71f8271271cd665a11dde8c70db75"
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
                "size": 64,
                "split": 1
            },
            "uids": {
                "0": "8ce61a47625760257a7d3207d21bb39c6724d7bd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 14218305,
                        "poseId": 14218305,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150644.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:44\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"146\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
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
                        "viewId": 60549878,
                        "poseId": 60549878,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150744.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:44\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"155\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 136506466,
                        "poseId": 136506466,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150646.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:46\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"141\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 316497620,
                        "poseId": 316497620,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150733.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:33\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"168\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 335587973,
                        "poseId": 335587973,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150745.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:45\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"155\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 342267265,
                        "poseId": 342267265,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150643.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:43\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"146\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 408417938,
                        "poseId": 408417938,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150734_HDR.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:34\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"173\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 471074085,
                        "poseId": 471074085,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150741.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:41\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"182\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 473283700,
                        "poseId": 473283700,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150649.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:49\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 593050755,
                        "poseId": 593050755,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150740.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:40\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"172\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 779860855,
                        "poseId": 779860855,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150743.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:43\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"182\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 789266616,
                        "poseId": 789266616,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150650.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:50\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 841732694,
                        "poseId": 841732694,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150648.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:48\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 854202792,
                        "poseId": 854202792,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150748.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:48\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"159\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 1004082851,
                        "poseId": 1004082851,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150641.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:06:41\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"191\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.97\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 6, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 1636750778,
                        "poseId": 1636750778,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150750.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:50\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"183\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1655868890,
                        "poseId": 1655868890,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150737.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:37\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"189\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 1734107045,
                        "poseId": 1734107045,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150735.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:35\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"208\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 1808428837,
                        "poseId": 1808428837,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150730.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:30\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"146\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 45.99\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.43\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 14\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                        "viewId": 2053505553,
                        "poseId": 2053505553,
                        "path": "C:/Users/uqecarr3/Desktop/bottle/drive-download-20230515T045041Z-001/IMG_20230504_150747.jpg",
                        "intrinsicId": 1099847069,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"Exif:ApertureValue\": \"1.8\", \"Exif:DateTimeOriginal\": \"2023:05:04 15:07:47\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"4.26\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+10:00\", \"Exif:OffsetTimeDigitized\": \"+10:00\", \"Exif:OffsetTimeOriginal\": \"+10:00\", \"Exif:PhotographicSensitivity\": \"159\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.03\", \"FNumber\": \"1.8\", \"GPS:DateStamp\": \"2023:05:04\", \"GPS:ImgDirection\": \"0\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"27, 29, 46.09\", \"GPS:LatitudeRef\": \"S\", \"GPS:Longitude\": \"153, 0, 39.62\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"5, 7, 34\", \"Make\": \"HMD Global\", \"Model\": \"Nokia G21\", \"Orientation\": \"6\", \"Software\": \"00WW_1_570_SP02\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
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
                "size": 64,
                "split": 22
            },
            "uids": {
                "0": "1ce98658dd60116a8abde8a4e265162348536729"
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
                "0": "1f4b3a8ada3cacea506e743f64ac243d8cc245d1"
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
                "size": 64,
                "split": 4
            },
            "uids": {
                "0": "edc46087d3434bebfd102ce849839b43b7f4c711"
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
        }
    }
}