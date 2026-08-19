package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 38})
/* loaded from: classes3.dex */
public class j {
    public final float[] hp;

    /* renamed from: l, reason: collision with root package name */
    public final int[] f23112l;

    public j(float[] fArr, int[] iArr) {
        this.hp = fArr;
        this.f23112l = iArr;
    }

    public float[] hp() {
        return this.hp;
    }

    public int jx() {
        return this.f23112l.length;
    }

    public int[] l() {
        return this.f23112l;
    }

    public void hp(j jVar, j jVar2, float f2) {
        if (jVar.f23112l.length == jVar2.f23112l.length) {
            for (int i2 = 0; i2 < jVar.f23112l.length; i2++) {
                this.hp[i2] = com.byazt.ze.q.hp(jVar.hp[i2], jVar2.hp[i2], f2);
                this.f23112l[i2] = com.byazt.ze.j.hp(f2, jVar.f23112l[i2], jVar2.f23112l[i2]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + jVar.f23112l.length + " vs " + jVar2.f23112l.length + ")");
    }

    public j hp(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            iArr[i2] = hp(fArr[i2]);
        }
        return new j(fArr, iArr);
    }

    private int hp(float f2) {
        int iBinarySearch = Arrays.binarySearch(this.hp, f2);
        if (iBinarySearch >= 0) {
            return this.f23112l[iBinarySearch];
        }
        int i2 = -(iBinarySearch + 1);
        if (i2 == 0) {
            return this.f23112l[0];
        }
        int[] iArr = this.f23112l;
        if (i2 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.hp;
        int i3 = i2 - 1;
        float f3 = fArr[i3];
        return com.byazt.ze.j.hp((f2 - f3) / (fArr[i2] - f3), iArr[i3], iArr[i2]);
    }
}
