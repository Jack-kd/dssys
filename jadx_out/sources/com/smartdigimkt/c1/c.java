package com.smartdigimkt.c1;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;

/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f39626a;

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f39627b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f39628c;

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f39629d;

    static {
        HashMap map = new HashMap();
        f39626a = map;
        map.put(a.a('m', map, a.a('K', map, a.a('I', map, a.a('O', map, a.a('1', map, a.a('P', map, a.a('9', map, a.a('b', map, a.a('F', map, a.a('2', map, a.a('T', map, a.a('A', map, a.a('B', map, a.a('e', map, a.a('M', map, a.a('X', map, a.a('/', map, a.a('w', map, a.a('s', map, a.a('8', map, a.a('q', map, a.a('u', map, a.a('E', map, a.a('g', map, a.a('r', map, a.a('Q', map, a.a('3', map, a.a('U', map, a.a('0', map, a.a('t', map, a.a('l', map, a.a('6', map, a.a('4', map, a.a('J', map, a.a('h', map, a.a('Y', map, a.a('L', map, a.a('H', map, a.a('D', map, a.a('+', map, a.a('k', map, a.a('5', map, a.a('V', map, a.a('n', map, a.a('Z', map, a.a('x', map, a.a('N', map, a.a('y', map, a.a('G', map, a.a('f', map, a.a('i', map, a.a('W', map, a.a('p', map, a.a('z', map, a.a('R', map, a.a('d', map, a.a('7', map, a.a('c', map, a.a('j', map, a.a('a', map, a.a('o', map, a.a('S', map, a.a('v', map, 'A', 'B'), 'C'), 'D'), 'E'), 'F'), 'G'), 'H'), 'I'), 'J'), 'K'), 'L'), 'M'), 'N'), 'O'), 'P'), 'Q'), 'R'), 'S'), 'T'), 'U'), 'V'), 'W'), 'X'), 'Y'), 'Z'), 'a'), 'b'), 'c'), 'd'), 'e'), 'f'), 'g'), 'h'), 'i'), 'j'), 'k'), 'l'), 'm'), 'n'), 'o'), 'p'), 'q'), 'r'), 's'), 't'), 'u'), 'v'), 'w'), 'x'), 'y'), 'z'), '0'), '1'), '2'), '3'), '4'), '5'), '6'), '7'), '8'), '9'), '+'), '/'), 'C');
        f39628c = new char[64];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            char[] cArr = f39627b;
            if (i3 >= 64) {
                break;
            }
            f39628c[i3] = ((Character) f39626a.get(Character.valueOf(cArr[i3]))).charValue();
            i3++;
        }
        f39629d = new byte[128];
        int i4 = 0;
        while (true) {
            byte[] bArr = f39629d;
            if (i4 >= bArr.length) {
                break;
            }
            bArr[i4] = 127;
            i4++;
        }
        while (true) {
            char[] cArr2 = f39628c;
            if (i2 >= cArr2.length) {
                return;
            }
            f39629d[cArr2[i2]] = (byte) i2;
            i2++;
        }
    }

    public static int a(char[] cArr, byte[] bArr, int i2) {
        try {
            char c2 = cArr[3];
            char c3 = c2 == '=' ? (char) 2 : (char) 3;
            char c4 = cArr[2];
            if (c4 == '=') {
                c3 = 1;
            }
            byte[] bArr2 = f39629d;
            byte b3 = bArr2[cArr[0]];
            byte b4 = bArr2[cArr[1]];
            byte b5 = bArr2[c4];
            byte b6 = bArr2[c2];
            if (c3 == 1) {
                bArr[i2] = (byte) (((b4 >> 4) & 3) | ((b3 << 2) & MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF));
                return 1;
            }
            if (c3 == 2) {
                bArr[i2] = (byte) ((3 & (b4 >> 4)) | ((b3 << 2) & MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF));
                bArr[i2 + 1] = (byte) (((b4 << 4) & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) | ((b5 >> 2) & 15));
                return 2;
            }
            if (c3 != 3) {
                throw new RuntimeException("Internal Error");
            }
            bArr[i2] = (byte) (((b3 << 2) & MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF) | ((b4 >> 4) & 3));
            bArr[i2 + 1] = (byte) (((b4 << 4) & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) | ((b5 >> 2) & 15));
            bArr[i2 + 2] = (byte) (((b5 << 6) & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) | (b6 & 63));
            return 3;
        } catch (Exception unused) {
            return 0;
        }
    }
}
