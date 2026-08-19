package com.bykv.vk.component.ttvideo.player;

import android.media.audiofx.AudioEffect;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;

@Keep
/* loaded from: classes3.dex */
public class AudioFormats {
    private static final int[] validSampleRates = {TTAdConstant.INIT_LOCAL_FAIL_CODE, AVMDLDataLoader.KeyIsLiveSetLoaderType, 11025, 16000, 22050, 32000, 37800, 44056, 44100, 47250, 48000, 50000, 50400, 88200, 96000, 176400, 192000, 352800, 2822400, 5644800};
    private static boolean sDetectDlbDevices = false;
    private static boolean sDlbDevice = false;

    public static int getDefaultSampleRatesNB() {
        return validSampleRates.length;
    }

    public static int getMaxSupportedSampleRates(int[] iArr) {
        int length = validSampleRates.length - 3;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = validSampleRates[i2];
        }
        return length;
    }

    @CalledByNative
    public static boolean isLicencedDolbyDevice() {
        if (sDetectDlbDevices) {
            return sDlbDevice;
        }
        AudioEffect.Descriptor[] descriptorArrQueryEffects = AudioEffect.queryEffects();
        int length = descriptorArrQueryEffects.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (descriptorArrQueryEffects[i2].implementor.contains("Dolby Laboratories")) {
                sDlbDevice = true;
                break;
            }
            i2++;
        }
        sDetectDlbDevices = true;
        return sDlbDevice;
    }
}
