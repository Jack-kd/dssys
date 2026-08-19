package com.byazt.at;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public final long f18238a;

    /* renamed from: b, reason: collision with root package name */
    public final com.byazt.av.e f18239b;
    public final com.byazt.mo.hp cx;

    /* renamed from: e, reason: collision with root package name */
    public final int f18240e;
    public final String eb;
    public final com.byazt.ha.l ec;
    public final int gu;
    public final List<com.byazt.mo.jx> hp;

    /* renamed from: j, reason: collision with root package name */
    public final long f18241j;
    public final int jl;
    public final String jx;

    /* renamed from: k, reason: collision with root package name */
    public final float f18242k;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.na.a f18243l;

    /* renamed from: n, reason: collision with root package name */
    public final l f18244n;
    public final boolean ns;

    /* renamed from: q, reason: collision with root package name */
    public final com.byazt.ha.jl f18245q;

    /* renamed from: s, reason: collision with root package name */
    public final List<com.byazt.mo.s> f18246s;
    public final List<com.byazt.ch.hp<Float>> sz;

    /* renamed from: u, reason: collision with root package name */
    public final float f18247u;

    /* renamed from: v, reason: collision with root package name */
    public final float f18248v;
    public final com.byazt.ha.gu vv;

    /* renamed from: w, reason: collision with root package name */
    public final hp f18249w;
    public final com.byazt.ha.e xs;
    public final float zy;

    public enum hp {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum l {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public s(List<com.byazt.mo.jx> list, com.byazt.na.a aVar, String str, long j2, hp hpVar, long j3, String str2, List<com.byazt.mo.s> list2, com.byazt.ha.jl jlVar, int i2, int i3, int i4, float f2, float f3, float f4, float f5, com.byazt.ha.e eVar, com.byazt.ha.gu guVar, List<com.byazt.ch.hp<Float>> list3, l lVar, com.byazt.ha.l lVar2, boolean z2, com.byazt.mo.hp hpVar2, com.byazt.av.e eVar2) {
        this.hp = list;
        this.f18243l = aVar;
        this.jx = str;
        this.f18241j = j2;
        this.f18249w = hpVar;
        this.f18238a = j3;
        this.eb = str2;
        this.f18246s = list2;
        this.f18245q = jlVar;
        this.f18240e = i2;
        this.gu = i3;
        this.jl = i4;
        this.zy = f2;
        this.f18242k = f3;
        this.f18248v = f4;
        this.f18247u = f5;
        this.xs = eVar;
        this.vv = guVar;
        this.sz = list3;
        this.f18244n = lVar;
        this.ec = lVar2;
        this.ns = z2;
        this.cx = hpVar2;
        this.f18239b = eVar2;
    }

    public String a() {
        return this.jx;
    }

    public com.byazt.av.e b() {
        return this.f18239b;
    }

    public com.byazt.mo.hp cx() {
        return this.cx;
    }

    public List<com.byazt.mo.s> e() {
        return this.f18246s;
    }

    public String eb() {
        return this.eb;
    }

    public com.byazt.ha.e ec() {
        return this.xs;
    }

    public hp gu() {
        return this.f18249w;
    }

    public com.byazt.na.a hp() {
        return this.f18243l;
    }

    public List<com.byazt.ch.hp<Float>> j() {
        return this.sz;
    }

    public l jl() {
        return this.f18244n;
    }

    public float jx() {
        return this.f18242k / this.f18243l.vv();
    }

    public List<com.byazt.mo.jx> k() {
        return this.hp;
    }

    public float l() {
        return this.zy;
    }

    public com.byazt.ha.l n() {
        return this.ec;
    }

    public boolean ns() {
        return this.ns;
    }

    public float q() {
        return this.f18247u;
    }

    public float s() {
        return this.f18248v;
    }

    public com.byazt.ha.gu sz() {
        return this.vv;
    }

    public String toString() {
        return hp("");
    }

    public int u() {
        return this.jl;
    }

    public com.byazt.ha.jl v() {
        return this.f18245q;
    }

    public int vv() {
        return this.f18240e;
    }

    public long w() {
        return this.f18241j;
    }

    public int xs() {
        return this.gu;
    }

    public long zy() {
        return this.f18238a;
    }

    public String hp(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(a());
        sb.append("\n");
        s sVarHp = this.f18243l.hp(zy());
        if (sVarHp != null) {
            sb.append("\t\tParents: ");
            sb.append(sVarHp.a());
            s sVarHp2 = this.f18243l.hp(sVarHp.zy());
            while (sVarHp2 != null) {
                sb.append("->");
                sb.append(sVarHp2.a());
                sVarHp2 = this.f18243l.hp(sVarHp2.zy());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!e().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(e().size());
            sb.append("\n");
        }
        if (vv() != 0 && xs() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(vv()), Integer.valueOf(xs()), Integer.valueOf(u())));
        }
        if (!this.hp.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (com.byazt.mo.jx jxVar : this.hp) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(jxVar);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
