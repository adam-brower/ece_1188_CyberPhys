################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Clock.obj: E:/Dropbox/TIteachingProject/RSLK_1_1/inc/Clock.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="E:/Dropbox/TIteachingProject/RSLK_1_1/Lab11_OLED" --include_path="E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include/CMSIS" --advice:power="all" --define=__MSP432P401R__ --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="E:/Dropbox/TIteachingProject/RSLK_1_1/Lab11_OLED" --include_path="E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include/CMSIS" --advice:power="all" --define=__MSP432P401R__ --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

SSD1306.obj: E:/Dropbox/TIteachingProject/RSLK_1_1/inc/SSD1306.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="E:/Dropbox/TIteachingProject/RSLK_1_1/Lab11_OLED" --include_path="E:/ti/ccs900/ccs/tools/compiler/ti-cgt-arm_18.12.1.LTS/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include" --include_path="E:/ti/ccs900/ccs/ccs_base/arm/include/CMSIS" --advice:power="all" --define=__MSP432P401R__ --define=ccs -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


