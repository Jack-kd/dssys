package com.byazt.av;

import android.graphics.Color;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Arrays;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v implements kg<com.byazt.mo.j> {
    public int hp;

    public v(int i2) {
        this.hp = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c9  */
    @Override // com.byazt.av.kg
    /* renamed from: hp, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.mo.j l(android.util.JsonReader r18, float r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.av.v.l(android.util.JsonReader, float):com.byazt.mo.j");
    }

    private com.byazt.mo.j hp(com.byazt.mo.j jVar, List<Float> list) {
        int i2 = this.hp * 4;
        if (list.size() <= i2) {
            return jVar;
        }
        float[] fArrHp = jVar.hp();
        int[] iArrL = jVar.l();
        int size = (list.size() - i2) / 2;
        float[] fArr = new float[size];
        float[] fArr2 = new float[size];
        int i3 = 0;
        while (i2 < list.size()) {
            if (i2 % 2 == 0) {
                fArr[i3] = list.get(i2).floatValue();
            } else {
                fArr2[i3] = list.get(i2).floatValue();
                i3++;
            }
            i2++;
        }
        float[] fArrHp2 = hp(jVar.hp(), fArr);
        int length = fArrHp2.length;
        int[] iArr = new int[length];
        for (int i4 = 0; i4 < length; i4++) {
            float f2 = fArrHp2[i4];
            int iBinarySearch = Arrays.binarySearch(fArrHp, f2);
            int iBinarySearch2 = Arrays.binarySearch(fArr, f2);
            if (iBinarySearch >= 0 && iBinarySearch2 <= 0) {
                iArr[i4] = hp(f2, iArrL[iBinarySearch], fArr, fArr2);
            } else {
                if (iBinarySearch2 < 0) {
                    iBinarySearch2 = -(iBinarySearch2 + 1);
                }
                iArr[i4] = hp(f2, fArr2[iBinarySearch2], fArrHp, iArrL);
            }
        }
        return new com.byazt.mo.j(fArrHp2, iArr);
    }

    public int hp(float f2, float f3, float[] fArr, int[] iArr) {
        if (iArr.length >= 2 && f2 != fArr[0]) {
            for (int i2 = 1; i2 < fArr.length; i2++) {
                float f4 = fArr[i2];
                if (f4 >= f2 || i2 == fArr.length - 1) {
                    int i3 = i2 - 1;
                    float f5 = fArr[i3];
                    float f6 = (f2 - f5) / (f4 - f5);
                    int i4 = iArr[i2];
                    int i5 = iArr[i3];
                    return Color.argb((int) (f3 * 255.0f), com.byazt.ze.j.hp(f6, Color.red(i5), Color.red(i4)), com.byazt.ze.j.hp(f6, Color.green(i5), Color.green(i4)), com.byazt.ze.j.hp(f6, Color.blue(i5), Color.blue(i4)));
                }
            }
            throw new IllegalArgumentException("Unreachable code.");
        }
        return iArr[0];
    }

    private int hp(float f2, int i2, float[] fArr, float[] fArr2) {
        float fHp;
        if (fArr2.length >= 2 && f2 > fArr[0]) {
            for (int i3 = 1; i3 < fArr.length; i3++) {
                float f3 = fArr[i3];
                if (f3 >= f2 || i3 == fArr.length - 1) {
                    if (f3 <= f2) {
                        fHp = fArr2[i3];
                    } else {
                        int i4 = i3 - 1;
                        float f4 = fArr[i4];
                        fHp = com.byazt.ze.q.hp(fArr2[i4], fArr2[i3], (f2 - f4) / (f3 - f4));
                    }
                    return Color.argb((int) (fHp * 255.0f), Color.red(i2), Color.green(i2), Color.blue(i2));
                }
            }
            throw new IllegalArgumentException("Unreachable code.");
        }
        return Color.argb((int) (fArr2[0] * 255.0f), Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    public static float[] hp(float[] fArr, float[] fArr2) {
        if (fArr.length == 0) {
            return fArr2;
        }
        if (fArr2.length == 0) {
            return fArr;
        }
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            float f2 = i3 < fArr.length ? fArr[i3] : Float.NaN;
            float f3 = i4 < fArr2.length ? fArr2[i4] : Float.NaN;
            if (!Float.isNaN(f3) && f2 >= f3) {
                if (!Float.isNaN(f2) && f3 >= f2) {
                    fArr3[i5] = f2;
                    i3++;
                    i4++;
                    i2++;
                } else {
                    fArr3[i5] = f3;
                    i4++;
                }
            } else {
                fArr3[i5] = f2;
                i3++;
            }
        }
        return i2 == 0 ? fArr3 : Arrays.copyOf(fArr3, length - i2);
    }
}
