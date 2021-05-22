# remove hals
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/msm8996/media

# CAF HALS
git clone https://github.com/shashank1436/android_hardware_qcom_audio.git -b r11 hardware/qcom-caf/msm8996-r/audio
git clone https://github.com/shashank1436/android_hardware_qcom_display.git -b r11 hardware/qcom-caf/msm8996-r/display
git clone https://github.com/shashank1436/android_hardware_qcom_media.git -b r11 hardware/qcom-caf/msm8996-r/media
