#!/bin/bash

#set -x # echo invoked commands to std out

# Base dir should point to the experimental_result folder which contains the subfolders:
# - 'smarthome' which contains the traces collected while other devices are idle
# - 'standalone' which contains signatures and the traces used to generate the signatures.
BASE_DIR=$1
readonly BASE_DIR

OUTPUT_DIR=$2
readonly OUTPUT_DIR

SIGNATURES_BASE_DIR="$BASE_DIR/standalone"
readonly SIGNATURES_BASE_DIR

# ==================================================== ARLO CAMERA =====================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/arlo-camera/wlan1/arlo-camera.wlan1.local.pcap"

# Has no device side signature.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/arlo-camera/wlan1/arlo-camera-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/arlo-camera/timestamps/arlo-camera-nov-13-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/arlo-camera/signatures/arlo-camera-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/arlo-camera/signatures/arlo-camera-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/arlo-camera/analyses/arlo-camera-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/arlo-camera/analyses/arlo-camera-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ================================================= BLOSSOM SPRINKLER ==================================================

# DEVICE SIDE
INPUT_PCAP="$SIGNATURES_BASE_DIR/blossom-sprinkler/wlan1/blossom-sprinkler.wlan1.local.pcap"
OUTPUT_PCAP="$OUTPUT_DIR/blossom-sprinkler/wlan1/blossom-sprinkler-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/blossom-sprinkler/timestamps/blossom-sprinkler-jan-14-2019.timestamps"
DEVICE_IP="192.168.1.229"
ON_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler/signatures/blossom-sprinkler-onSignature-device-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler/signatures/blossom-sprinkler-offSignature-device-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler/analyses/blossom-sprinkler-onClusters-device-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler/analyses/blossom-sprinkler-offClusters-device-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="2"
DELETED_SEQUENCES_OFF="3"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"

# PHONE SIDE
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler/signatures/blossom-sprinkler-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler/signatures/blossom-sprinkler-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler/analyses/blossom-sprinkler-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler/analyses/blossom-sprinkler-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="0"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ==================================================== D-LINK PLUG =====================================================
# DEVICE SIDE
INPUT_PCAP="$SIGNATURES_BASE_DIR/dlink-plug/wlan1/dlink-plug.wlan1.local.pcap"
OUTPUT_PCAP="$OUTPUT_DIR/dlink-plug/wlan1/dlink-plug-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/dlink-plug/timestamps/dlink-plug-nov-7-2018.timestamps"
DEVICE_IP="192.168.1.199"
ON_SIGNATURE="$OUTPUT_DIR/dlink-plug/signatures/dlink-plug-onSignature-device-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/dlink-plug/signatures/dlink-plug-offSignature-device-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/dlink-plug/analyses/dlink-plug-onClusters-device-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/dlink-plug/analyses/dlink-plug-offClusters-device-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"

# PHONE SIDE
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/dlink-plug/signatures/dlink-plug-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/dlink-plug/signatures/dlink-plug-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/dlink-plug/analyses/dlink-plug-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/dlink-plug/analyses/dlink-plug-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ==================================================== D-LINK SIREN ====================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/dlink-siren/wlan1/dlink-siren.wlan1.local.pcap"

# Has no device side signature.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/dlink-siren/wlan1/dlink-siren-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/dlink-siren/timestamps/dlink-siren-nov-9-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/dlink-siren/signatures/dlink-siren-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/dlink-siren/signatures/dlink-siren-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/dlink-siren/analyses/dlink-siren-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/dlink-siren/analyses/dlink-siren-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ===================================================== HUE BULB =======================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/hue-bulb/wlan1/hue-bulb.wlan1.local.pcap"

# Has no signature: we need to use the old October PCAP file and timestamp to generate signatures for Hue Bulb.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/hue-bulb/wlan1/hue-bulb-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/hue-bulb/timestamps/hue-bulb-aug-7-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/hue-bulb/signatures/hue-bulb-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/hue-bulb/signatures/hue-bulb-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/hue-bulb/analyses/hue-bulb-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/hue-bulb/analyses/hue-bulb-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ================================================= KWIKSET DOORLOCK ===================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/kwikset-doorlock/wlan1/kwikset-doorlock.wlan1.local.pcap"

# Has no device side signature.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/kwikset-doorlock/wlan1/kwikset-doorlock-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/kwikset-doorlock/timestamps/kwikset-doorlock-nov-10-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/kwikset-doorlock/signatures/kwikset-doorlock-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/kwikset-doorlock/signatures/kwikset-doorlock-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/kwikset-doorlock/analyses/kwikset-doorlock-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/kwikset-doorlock/analyses/kwikset-doorlock-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ================================================= NEST THERMOSTAT ====================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/nest-thermostat/wlan1/nest-thermostat.wlan1.local.pcap"

# Has no device side signature.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/nest-thermostat/wlan1/nest-thermostat-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/nest-thermostat/timestamps/nest-thermostat-nov-15-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/nest-thermostat/signatures/nest-thermostat-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/nest-thermostat/signatures/nest-thermostat-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/nest-thermostat/analyses/nest-thermostat-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/nest-thermostat/analyses/nest-thermostat-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ====================================================== ST PLUG =======================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/st-plug/wlan1/st-plug.wlan1.local.pcap"

# Has no device side signature.
# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/st-plug/wlan1/st-plug-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/st-plug/timestamps/st-plug-nov-12-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/st-plug/signatures/st-plug-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/st-plug/signatures/st-plug-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/st-plug/analyses/st-plug-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/st-plug/analyses/st-plug-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ==================================================== TP-LINK BULB ====================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/tplink-bulb/wlan1/tplink-bulb.wlan1.local.pcap"

# Has LAN signature.
OUTPUT_PCAP="$OUTPUT_DIR/tplink-bulb/wlan1/tplink-bulb-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/tplink-bulb/timestamps/tplink-bulb-nov-16-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/tplink-bulb/signatures/tplink-bulb-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/tplink-bulb/signatures/tplink-bulb-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/tplink-bulb/analyses/tplink-bulb-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/tplink-bulb/analyses/tplink-bulb-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ==================================================== TP-LINK PLUG ====================================================

# DEVICE SIDE (both the 112, 115 and 556, 1293 sequences)
INPUT_PCAP="$SIGNATURES_BASE_DIR/tplink-plug/wlan1/tplink-plug.wlan1.local.pcap"

# LAN signature.
OUTPUT_PCAP="$OUTPUT_DIR/tplink-plug/wlan1/tplink-plug-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/tplink-plug/timestamps/tplink-plug-nov-8-2018.timestamps"
DEVICE_IP="192.168.1.159"
ON_SIGNATURE="$OUTPUT_DIR/tplink-plug/signatures/tplink-plug-onSignature-device-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/tplink-plug/signatures/tplink-plug-offSignature-device-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/tplink-plug/analyses/tplink-plug-onClusters-device-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/tplink-plug/analyses/tplink-plug-offClusters-device-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"

# DEVICE SIDE OUTBOUND (contains only those packets that go through the WAN port, i.e., only the 556, 1293 sequence)
# WAN signature.
ON_SIGNATURE="$OUTPUT_DIR/tplink-plug/signatures/tplink-plug-onSignature-device-side-outbound.sig"
OFF_SIGNATURE="$OUTPUT_DIR/tplink-plug/signatures/tplink-plug-offSignature-device-side-outbound.sig"
ON_ANALYSIS="$OUTPUT_DIR/tplink-plug/analyses/tplink-plug-onClusters-device-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/tplink-plug/analyses/tplink-plug-offClusters-device-side.cls"
DELETED_SEQUENCES_ON="0"
DELETED_SEQUENCES_OFF="0"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"

# Phone side does not make sense as it is merely a subset of the device side and does not differentiate ONs from OFFs.
# ======================================================================================================================

# ================================================== WEMO INSIGHT PLUG =================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/wemo-insight-plug/wlan1/wemo-insight-plug.wlan1.local.pcap"

# Has LAN signature.
OUTPUT_PCAP="$OUTPUT_DIR/wemo-insight-plug/wlan1/wemo-insight-plug-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/wemo-insight-plug/timestamps/wemo-insight-plug-nov-21-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/wemo-insight-plug/signatures/wemo-insight-plug-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/wemo-insight-plug/signatures/wemo-insight-plug-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/wemo-insight-plug/analyses/wemo-insight-plug-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/wemo-insight-plug/analyses/wemo-insight-plug-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================



# ===================================================== WEMO PLUG ======================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/wemo-plug/wlan1/wemo-plug.wlan1.local.pcap"

# Has LAN signature.
OUTPUT_PCAP="$OUTPUT_DIR/wemo-plug/wlan1/wemo-plug-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/wemo-plug/timestamps/wemo-plug-nov-20-2018.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/wemo-plug/signatures/wemo-plug-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/wemo-plug/signatures/wemo-plug-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/wemo-plug/analyses/wemo-plug-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/wemo-plug/analyses/wemo-plug-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================



# NEW DEVICES
# ================================================= DLINK MOTION SENSOR ================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/dlink-sensor/wlan1/dlink-sensor.wlan1.local.pcap"

# No signature found for both phone and device sides
OUTPUT_PCAP="$OUTPUT_DIR/dlink-sensor/wlan1/dlink-sensor-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/dlink-sensor/timestamps/dlink-sensor-apr-12-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/dlink-sensor/signatures/dlink-sensor-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/dlink-sensor/signatures/dlink-sensor-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/dlink-sensor/analyses/dlink-sensor-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/dlink-sensor/analyses/dlink-sensor-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================


# ================================================= TP LINK BULB COLOR =================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/tplink-bulb-color/wlan1/tplink-bulb-color.wlan1.local.pcap"

# No signature found for both phone and device sides
OUTPUT_PCAP="$OUTPUT_DIR/tplink-bulb-color/wlan1/tplink-bulb-color-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/tplink-bulb-color/timestamps/tplink-bulb-color-apr-12-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/tplink-bulb-color/signatures/tplink-bulb-color-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/tplink-bulb-color/signatures/tplink-bulb-color-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/tplink-bulb-color/analyses/tplink-bulb-color-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/tplink-bulb-color/analyses/tplink-bulb-color-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# =============================================== TP LINK BULB INTENSITY ===============================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/tplink-bulb-intensity/wlan1/tplink-bulb-intensity.wlan1.local.pcap"

# No signature found for both phone and device sides
OUTPUT_PCAP="$OUTPUT_DIR/tplink-bulb-intensity/wlan1/tplink-bulb-intensity-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/tplink-bulb-intensity/timestamps/tplink-bulb-intensity-apr-12-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/tplink-bulb-intensity/signatures/tplink-bulb-intensity-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/tplink-bulb-intensity/signatures/tplink-bulb-intensity-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/tplink-bulb-intensity/analyses/tplink-bulb-intensity-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/tplink-bulb-intensity/analyses/tplink-bulb-intensity-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# =============================================== BLOSSOM SPRINKLER MODE ===============================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/blossom-sprinkler-mode/wlan1/blossom-sprinkler-mode.wlan1.local.pcap"

# PHONE SIDE
OUTPUT_PCAP="$OUTPUT_DIR/blossom-sprinkler-mode/wlan1/blossom-sprinkler-mode-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/blossom-sprinkler-mode/timestamps/blossom-sprinkler-mode-apr-15-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler-mode/signatures/blossom-sprinkler-mode-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler-mode/signatures/blossom-sprinkler-mode-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler-mode/analyses/blossom-sprinkler-mode-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler-mode/analyses/blossom-sprinkler-mode-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="1,1,1"
DELETED_SEQUENCES_OFF="2,2,2"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"

# DEVICE SIDE
# TODO: For some reason there is no OFF signature for the device side, so we do not report it for now
DEVICE_IP="192.168.1.229"
ON_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler-mode/signatures/blossom-sprinkler-mode-onSignature-device-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/blossom-sprinkler-mode/signatures/blossom-sprinkler-mode-offSignature-device-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler-mode/analyses/blossom-sprinkler-mode-onClusters-device-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/blossom-sprinkler-mode/analyses/blossom-sprinkler-mode-offClusters-device-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="2"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# =============================================== NEST THERMOSTAT MODE =================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/nest-thermostat-mode/wlan1/nest-thermostat-mode.wlan1.local.pcap"

# No signature found for both phone and device sides
OUTPUT_PCAP="$OUTPUT_DIR/nest-thermostat-mode/wlan1/nest-thermostat-mode-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/nest-thermostat-mode/timestamps/nest-thermostat-mode-apr-15-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/nest-thermostat-mode/signatures/nest-thermostat-mode-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/nest-thermostat-mode/signatures/nest-thermostat-mode-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/nest-thermostat-mode/analyses/nest-thermostat-mode-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/nest-thermostat-mode/analyses/nest-thermostat-mode-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
#./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================

# ================================================= ARLO CAMERA MODE ===================================================
INPUT_PCAP="$SIGNATURES_BASE_DIR/arlo-camera-mode/wlan1/arlo-camera-mode.wlan1.local.pcap"

# No signature found for both phone and device sides
OUTPUT_PCAP="$OUTPUT_DIR/arlo-camera-mode/wlan1/arlo-camera-mode-processed.pcap"
TIMESTAMP_FILE="$SIGNATURES_BASE_DIR/arlo-camera-mode/timestamps/arlo-camera-mode-apr-15-2019.timestamps"
DEVICE_IP="192.168.1.246"
ON_SIGNATURE="$OUTPUT_DIR/arlo-camera-mode/signatures/arlo-camera-mode-onSignature-phone-side.sig"
OFF_SIGNATURE="$OUTPUT_DIR/arlo-camera-mode/signatures/arlo-camera-mode-offSignature-phone-side.sig"
ON_ANALYSIS="$OUTPUT_DIR/arlo-camera-mode/analyses/arlo-camera-mode-onClusters-phone-side.cls"
OFF_ANALYSIS="$OUTPUT_DIR/arlo-camera-mode/analyses/arlo-camera-mode-offClusters-phone-side.cls"
EPSILON="10.0"
DELETED_SEQUENCES_ON="-1"
DELETED_SEQUENCES_OFF="-1"

PROGRAM_ARGS="'$INPUT_PCAP' '$OUTPUT_PCAP' '$TIMESTAMP_FILE' '$DEVICE_IP' '$ON_SIGNATURE' '$OFF_SIGNATURE' '$ON_ANALYSIS' '$OFF_ANALYSIS' '$EPSILON' '$DELETED_SEQUENCES_ON' '$DELETED_SEQUENCES_OFF'"
./gradlew run -DmainClass=edu.uci.iotproject.SignatureGenerator --args="$PROGRAM_ARGS"
# ======================================================================================================================