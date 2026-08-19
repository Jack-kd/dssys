package com.byazt.mo;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 150})
/* loaded from: classes3.dex */
public class q implements jx {
    public final String hp;
    public final boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp f23120l;

    public enum hp {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static hp hp(int i2) {
            return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? MERGE : EXCLUDE_INTERSECTIONS : INTERSECT : SUBTRACT : ADD : MERGE;
        }
    }

    public q(String str, hp hpVar, boolean z2) {
        this.hp = str;
        this.f23120l = hpVar;
        this.jx = z2;
    }

    public String hp() {
        return this.hp;
    }

    public boolean jx() {
        return this.jx;
    }

    public hp l() {
        return this.f23120l;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f23120l + '}';
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.jl(this);
    }
}
