# Remove old HALS
rm -rf hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/audio

# CAF hal's
git clone https://github.com/shashank1436/android_hardware_qcom_display.git -b r11 hardware/qcom-caf/msm8996/display 
git clone https://github.com/shashank1436/android_hardware_qcom_audio -b r11 hardware/qcom-caf/msm8996/audio
git clone https://github.com/shashank1436/android_hardware_qcom_media.git -b r11 hardware/qcom-caf/msm8996/media
