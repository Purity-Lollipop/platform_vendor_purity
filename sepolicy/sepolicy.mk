#
# This policy configuration will be used by all products that
# inherit from PurityRom
#

BOARD_SEPOLICY_DIRS += \
    vendor/purity/sepolicy

BOARD_SEPOLICY_UNION += \
    service_contexts
