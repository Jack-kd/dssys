package com.byazt.cd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public final class w {
    public static final com.byazt.raq.a hp = com.byazt.raq.a.hp("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f18828j = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f18829l = new String[64];
    public static final String[] jx = new String[256];

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = jx;
            if (i3 >= strArr.length) {
                break;
            }
            strArr[i3] = com.byazt.ru.jx.hp("%8s", Integer.toBinaryString(i3)).replace(' ', '0');
            i3++;
        }
        String[] strArr2 = f18829l;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i4 = 0; i4 <= 0; i4++) {
            int i5 = iArr[i4];
            String[] strArr3 = f18829l;
            strArr3[i5 | 8] = strArr3[i5] + "|PADDED";
        }
        String[] strArr4 = f18829l;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i6 = 0; i6 < 3; i6++) {
            int i7 = iArr2[i6];
            for (int i8 = 0; i8 <= 0; i8++) {
                int i9 = iArr[i8];
                String[] strArr5 = f18829l;
                int i10 = i9 | i7;
                strArr5[i10] = strArr5[i9] + '|' + strArr5[i7];
                strArr5[i10 | 8] = strArr5[i9] + '|' + strArr5[i7] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = f18829l;
            if (i2 >= strArr6.length) {
                return;
            }
            if (strArr6[i2] == null) {
                strArr6[i2] = jx[i2];
            }
            i2++;
        }
    }

    private w() {
    }

    public static IllegalArgumentException hp(String str, Object... objArr) {
        throw new IllegalArgumentException(com.byazt.ru.jx.hp(str, objArr));
    }

    public static IOException l(String str, Object... objArr) throws IOException {
        throw new IOException(com.byazt.ru.jx.hp(str, objArr));
    }

    public static String hp(boolean z2, int i2, int i3, byte b3, byte b4) {
        String[] strArr = f18828j;
        return com.byazt.ru.jx.hp("%s 0x%08x %5d %-13s %s", z2 ? "<<" : ">>", Integer.valueOf(i2), Integer.valueOf(i3), b3 < strArr.length ? strArr[b3] : com.byazt.ru.jx.hp("0x%02x", Byte.valueOf(b3)), hp(b3, b4));
    }

    public static String hp(byte b3, byte b4) {
        if (b4 == 0) {
            return "";
        }
        if (b3 != 2 && b3 != 3) {
            if (b3 == 4 || b3 == 6) {
                return b4 == 1 ? "ACK" : jx[b4];
            }
            if (b3 != 7 && b3 != 8) {
                String[] strArr = f18829l;
                String str = b4 < strArr.length ? strArr[b4] : jx[b4];
                if (b3 != 5 || (b4 & 4) == 0) {
                    return (b3 != 0 || (b4 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return jx[b4];
    }
}
