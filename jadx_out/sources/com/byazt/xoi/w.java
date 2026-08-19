package com.byazt.xoi;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 1415, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public final String hp;
    public final int[] jx;

    /* renamed from: l, reason: collision with root package name */
    public final float[] f27727l;

    public w(String str, JSONArray jSONArray, JSONArray jSONArray2) {
        this.hp = str;
        this.f27727l = new float[jSONArray.length()];
        this.jx = new int[jSONArray2.length()];
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            this.f27727l[i2] = (float) jSONArray.optDouble(i2);
        }
        for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
            this.jx[i3] = jSONArray2.optInt(i3);
        }
    }

    public int hp(float f2) {
        int[] iArr;
        int i2;
        float[] fArr = this.f27727l;
        int i3 = -1;
        if (fArr != null && fArr.length != 0 && (iArr = this.jx) != null && iArr.length != 0) {
            int length = fArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                float[] fArr2 = this.f27727l;
                float f3 = fArr2[i4];
                if (f2 <= f3 || (i2 = i4 + 1) >= length || f2 > fArr2[i2]) {
                    if (i4 == length - 1 && f2 > f3) {
                        i3 = this.jx[i4];
                    }
                    i4++;
                } else {
                    int[] iArr2 = this.jx;
                    if (i4 < iArr2.length) {
                        return iArr2[i4];
                    }
                }
            }
        }
        return i3;
    }
}
