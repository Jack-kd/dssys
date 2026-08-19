package com.byazt.mo;

import com.byazt.fj.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes3.dex */
public class ec implements jx {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f23104a;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.l f23105j;
    public final com.byazt.ha.l jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp f23106l;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ha.l f23107w;

    public enum hp {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static hp hp(int i2) {
            if (i2 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i2 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(i2)));
        }
    }

    public ec(String str, hp hpVar, com.byazt.ha.l lVar, com.byazt.ha.l lVar2, com.byazt.ha.l lVar3, boolean z2) {
        this.hp = str;
        this.f23106l = hpVar;
        this.jx = lVar;
        this.f23105j = lVar2;
        this.f23107w = lVar3;
        this.f23104a = z2;
    }

    public hp getType() {
        return this.f23106l;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.ha.l j() {
        return this.f23107w;
    }

    public com.byazt.ha.l jx() {
        return this.jx;
    }

    public com.byazt.ha.l l() {
        return this.f23105j;
    }

    public String toString() {
        return "Trim Path: {start: " + this.jx + ", end: " + this.f23105j + ", offset: " + this.f23107w + "}";
    }

    public boolean w() {
        return this.f23104a;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new n(jxVar, this);
    }
}
