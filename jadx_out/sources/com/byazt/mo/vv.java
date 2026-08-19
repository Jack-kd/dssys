package com.byazt.mo;

import android.graphics.Paint;
import com.byazt.fj.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 65})
/* loaded from: classes3.dex */
public class vv implements jx {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.ha.l f23135a;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f23136e;
    public final hp eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ha.hp f23137j;
    public final List<com.byazt.ha.l> jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.ha.l f23138l;

    /* renamed from: q, reason: collision with root package name */
    public final float f23139q;

    /* renamed from: s, reason: collision with root package name */
    public final l f23140s;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.ha.j f23141w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE, 485})
    /* renamed from: com.byazt.mo.vv$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        /* renamed from: l, reason: collision with root package name */
        public static final /* synthetic */ int[] f23142l;

        static {
            int[] iArr = new int[l.values().length];
            f23142l = iArr;
            try {
                iArr[l.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23142l[l.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23142l[l.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[hp.values().length];
            hp = iArr2;
            try {
                iArr2[hp.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[hp.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[hp.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum hp {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap hp() {
            int i2 = AnonymousClass1.hp[ordinal()];
            return i2 != 1 ? i2 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    public enum l {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join hp() {
            int i2 = AnonymousClass1.f23142l[ordinal()];
            if (i2 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i2 == 2) {
                return Paint.Join.MITER;
            }
            if (i2 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public vv(String str, com.byazt.ha.l lVar, List<com.byazt.ha.l> list, com.byazt.ha.hp hpVar, com.byazt.ha.j jVar, com.byazt.ha.l lVar2, hp hpVar2, l lVar3, float f2, boolean z2) {
        this.hp = str;
        this.f23138l = lVar;
        this.jx = list;
        this.f23137j = hpVar;
        this.f23141w = jVar;
        this.f23135a = lVar2;
        this.eb = hpVar2;
        this.f23140s = lVar3;
        this.f23139q = f2;
        this.f23136e = z2;
    }

    public com.byazt.ha.l a() {
        return this.f23138l;
    }

    public boolean e() {
        return this.f23136e;
    }

    public hp eb() {
        return this.eb;
    }

    @Override // com.byazt.mo.jx
    public com.byazt.fj.jx hp(com.byazt.na.s sVar, com.byazt.na.a aVar, com.byazt.at.jx jxVar) {
        return new sz(sVar, jxVar, this);
    }

    public com.byazt.ha.l j() {
        return this.f23135a;
    }

    public com.byazt.ha.j jx() {
        return this.f23141w;
    }

    public com.byazt.ha.hp l() {
        return this.f23137j;
    }

    public float q() {
        return this.f23139q;
    }

    public l s() {
        return this.f23140s;
    }

    public List<com.byazt.ha.l> w() {
        return this.jx;
    }

    public String hp() {
        return this.hp;
    }
}
