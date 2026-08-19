package com.byazt.mo;

import android.graphics.PointF;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 45})
/* loaded from: classes3.dex */
public class e implements jx {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ha.l f23094a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f23095e;
    public final com.byazt.ha.l eb;
    public final boolean gu;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.zy<PointF, PointF> f23096j;
    public final com.byazt.ha.l jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp f23097l;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.ha.l f23098q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.ha.l f23099s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ha.l f23100w;

    public enum hp {
        STAR(1),
        POLYGON(2);

        public final int jx;

        hp(int i2) {
            this.jx = i2;
        }

        public static hp hp(int i2) {
            for (hp hpVar : values()) {
                if (hpVar.jx == i2) {
                    return hpVar;
                }
            }
            return null;
        }
    }

    public e(String str, hp hpVar, com.byazt.ha.l lVar, com.byazt.ha.zy<PointF, PointF> zyVar, com.byazt.ha.l lVar2, com.byazt.ha.l lVar3, com.byazt.ha.l lVar4, com.byazt.ha.l lVar5, com.byazt.ha.l lVar6, boolean z2, boolean z3) {
        this.hp = str;
        this.f23097l = hpVar;
        this.jx = lVar;
        this.f23096j = zyVar;
        this.f23100w = lVar2;
        this.f23094a = lVar3;
        this.eb = lVar4;
        this.f23099s = lVar5;
        this.f23098q = lVar6;
        this.f23095e = z2;
        this.gu = z3;
    }

    public com.byazt.ha.l a() {
        return this.eb;
    }

    public boolean e() {
        return this.gu;
    }

    public com.byazt.ha.l eb() {
        return this.f23099s;
    }

    public hp getType() {
        return this.f23097l;
    }

    public String hp() {
        return this.hp;
    }

    public com.byazt.ha.l j() {
        return this.f23100w;
    }

    public com.byazt.ha.zy<PointF, PointF> jx() {
        return this.f23096j;
    }

    public com.byazt.ha.l l() {
        return this.jx;
    }

    public boolean q() {
        return this.f23095e;
    }

    public com.byazt.ha.l s() {
        return this.f23098q;
    }

    public com.byazt.ha.l w() {
        return this.f23094a;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new com.byazt.fj.k(sVar, jxVar, this);
    }
}
