# fix text
exosphere/mariko_fatal/source/fatal_display.cpp
fusee/program/source/fusee_display.cpp
libraries/libmesosphere/source/kern_kernel.cpp
thermosphere/src/main.c
stratosphere/creport/source/creport_crash_report.cpp
stratosphere/fatal/source/fatal_config.cpp
stratosphere/fatal/source/fatal_task_error_report.cpp
stratosphere/fatal/source/fatal_task_screen.cpp

# config
config_templates/cloader/eosloader/loader.kip
config_templates/cloader/scloader/loader.kip
config_templates/exosphere.ini > config/exosphere.ini
config_templates/override_config.ini > config/override_config.ini
config_templates/stratosphere.ini > config/stratosphere.ini
config_templates/system_settings.ini > config/system_settings.ini
config_templates/hosts/dns.txt

# exosphere.ini path
fusee/program/source/fusee_setup_horizon.cpp

# dirty version
libraries/config/common.mk

# ASAP LOGO
stratosphere/boot/source/boot_splash_screen_notext.inc
stratosphere/boot/source/boot_splash_screen_text.inc
stratosphere/fatal/source/fatal_ams_logo.inc

# ASAP version = ASAP-Updater/version file
stratosphere/ams_mitm/source/set_mitm/setsys_mitm_service.cpp

# prodinfo
stratosphere/ams_mitm/source/amsmitm_prodinfo_utils.cpp

# Hekate Ram Info
fusee/program/source/mtc/fusee_mtc.cpp

# kiosk units support
libraries/libexosphere/source/fuse/fuse_api.cpp

# kefir : system patch
fusee/program/source/fusee_stratosphere.cpp
libraries/libstratosphere/source/erpt/srv/erpt_srv_report.cpp
libraries/libstratosphere/source/erpt/srv/erpt_srv_report.hpp
stratosphere/ams_mitm/source/fs_mitm/fs_mitm_service.cpp
stratosphere/ams_mitm/source/fs_mitm/fsmitm_save_utils.cpp
stratosphere/loader/source/ldr_development_manager.cpp
stratosphere/loader/source/ldr_embedded_es_patches.inc
stratosphere/loader/source/ldr_embedded_nifm_patches.inc
stratosphere/loader/source/ldr_embedded_nim_patches.inc
stratosphere/loader/source/ldr_meta.cpp
stratosphere/loader/source/ldr_patcher.cpp
stratosphere/loader/source/ldr_process_creation.cpp

# application
troposphere/daybreak/source/ui.cpp
troposphere/haze/include/haze/console_main_loop.hpp

# images
img/splash.bin
img/splash.png

# utilities
utilities/insert_splash_screen.py

# bash
splash.sh

# makefile
troposphere/daybreak/Makefile
troposphere/haze/Makefile
atmosphere.mk