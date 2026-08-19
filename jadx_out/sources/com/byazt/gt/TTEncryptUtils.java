package com.byazt.gt;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_EARLY_INIT_RENDER})
/* loaded from: classes2.dex */
public class TTEncryptUtils {
    public static byte[] a(byte[] bArr, int i2) {
        try {
            return com.byakv.z.TTEncryptUtils.hp(bArr, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] b(byte[] bArr, int i2) {
        try {
            return com.byakv.z.TTEncryptUtils.l(bArr, i2);
        } catch (Throwable unused) {
            return null;
        }
    }
}
