package com.byazt.cd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 42})
/* loaded from: classes2.dex */
public final class k {
    public int hp;

    /* renamed from: l, reason: collision with root package name */
    public final int[] f18800l = new int[10];

    public void hp() {
        this.hp = 0;
        Arrays.fill(this.f18800l, 0);
    }

    public int j(int i2) {
        return (this.hp & 32) != 0 ? this.f18800l[5] : i2;
    }

    public int jx() {
        if ((this.hp & 2) != 0) {
            return this.f18800l[1];
        }
        return -1;
    }

    public int l(int i2) {
        return this.f18800l[i2];
    }

    public int j() {
        if ((this.hp & 128) != 0) {
            return this.f18800l[7];
        }
        return 65535;
    }

    public int jx(int i2) {
        return (this.hp & 16) != 0 ? this.f18800l[4] : i2;
    }

    public int l() {
        return Integer.bitCount(this.hp);
    }

    public k hp(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.f18800l;
            if (i2 < iArr.length) {
                this.hp = (1 << i2) | this.hp;
                iArr[i2] = i3;
            }
        }
        return this;
    }

    public boolean hp(int i2) {
        return ((1 << i2) & this.hp) != 0;
    }

    public void hp(k kVar) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (kVar.hp(i2)) {
                hp(i2, kVar.l(i2));
            }
        }
    }
}
