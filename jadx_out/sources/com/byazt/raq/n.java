package com.byazt.raq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.charset.Charset;

@com.byazt.kj.hp(hp = {0, 1, 1165, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public final class n {
    public static final Charset hp = Charset.forName("UTF-8");

    public static int hp(int i2) {
        return ((i2 & 255) << 24) | (((-16777216) & i2) >>> 24) | ((16711680 & i2) >>> 8) | ((65280 & i2) << 8);
    }

    public static short hp(short s2) {
        return (short) (((s2 & 255) << 8) | ((65280 & s2) >>> 8));
    }

    public static void hp(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4)));
        }
    }

    public static void hp(Throwable th) throws Throwable {
        l(th);
    }

    public static boolean hp(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            if (bArr[i5 + i2] != bArr2[i5 + i3]) {
                return false;
            }
        }
        return true;
    }

    private static <T extends Throwable> void l(Throwable th) throws Throwable {
        throw th;
    }
}
