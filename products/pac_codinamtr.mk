# Check for target product
ifeq (pac_codinamtr,$(TARGET_PRODUCT))

include vendor/pac/products/pac_codina-common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/codinamtr/cm.mk)

PRODUCT_NAME := pac_codinamtr

# Update local_manifest.xml
GET_PROJECT_RMS := $(shell vendor/pac/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/pac/tools/addprojects.py $(PRODUCT_NAME))

endif
