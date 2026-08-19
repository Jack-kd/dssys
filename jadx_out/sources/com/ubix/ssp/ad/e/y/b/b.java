package com.ubix.ssp.ad.e.y.b;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.y.c.b;
import com.ubix.ssp.ad.e.y.c.d;
import com.ubix.ssp.ad.e.y.c.f;
import com.ubix.ssp.ad.e.y.c.h;
import com.umeng.commonsdk.statistics.UMErrorCode;

/* loaded from: classes5.dex */
public final class b extends f {

    /* renamed from: b, reason: collision with root package name */
    public String f47798b;

    /* renamed from: c, reason: collision with root package name */
    public String f47799c;

    /* renamed from: d, reason: collision with root package name */
    public long f47800d;

    /* renamed from: e, reason: collision with root package name */
    public int f47801e;

    /* renamed from: f, reason: collision with root package name */
    public String f47802f;

    /* renamed from: g, reason: collision with root package name */
    public String f47803g;

    /* renamed from: h, reason: collision with root package name */
    public String f47804h;

    /* renamed from: i, reason: collision with root package name */
    public String f47805i;

    /* renamed from: j, reason: collision with root package name */
    public String f47806j;

    /* renamed from: k, reason: collision with root package name */
    public String f47807k;

    /* renamed from: l, reason: collision with root package name */
    public String f47808l;

    /* renamed from: m, reason: collision with root package name */
    public a[] f47809m;

    /* renamed from: n, reason: collision with root package name */
    public String f47810n;

    /* renamed from: o, reason: collision with root package name */
    public String f47811o;

    /* renamed from: p, reason: collision with root package name */
    public String f47812p;

    /* renamed from: q, reason: collision with root package name */
    public String f47813q;

    public b() {
        e();
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        if (!this.f47798b.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(1, this.f47798b);
        }
        if (!this.f47799c.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47799c);
        }
        long j2 = this.f47800d;
        if (j2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(3, j2);
        }
        int i2 = this.f47801e;
        if (i2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.c(4, i2);
        }
        if (!this.f47802f.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47802f);
        }
        if (!this.f47803g.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47803g);
        }
        if (!this.f47804h.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47804h);
        }
        if (!this.f47805i.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47805i);
        }
        if (!this.f47806j.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(9, this.f47806j);
        }
        if (!this.f47807k.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(10, this.f47807k);
        }
        if (!this.f47808l.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(11, this.f47808l);
        }
        a[] aVarArr = this.f47809m;
        if (aVarArr != null && aVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                a[] aVarArr2 = this.f47809m;
                if (i3 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i3];
                if (aVar != null) {
                    iB += com.ubix.ssp.ad.e.y.c.b.b(12, aVar);
                }
                i3++;
            }
        }
        if (!this.f47810n.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(13, this.f47810n);
        }
        if (!this.f47811o.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(14, this.f47811o);
        }
        if (!this.f47812p.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(15, this.f47812p);
        }
        return !this.f47813q.equals("") ? iB + com.ubix.ssp.ad.e.y.c.b.a(16, this.f47813q) : iB;
    }

    public b e() {
        this.f47798b = "";
        this.f47799c = "";
        this.f47800d = 0L;
        this.f47801e = 0;
        this.f47802f = "";
        this.f47803g = "";
        this.f47804h = "";
        this.f47805i = "";
        this.f47806j = "";
        this.f47807k = "";
        this.f47808l = "";
        this.f47809m = a.f();
        this.f47810n = "";
        this.f47811o = "";
        this.f47812p = "";
        this.f47813q = "";
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws b.a {
        if (!this.f47798b.equals("")) {
            bVar.b(1, this.f47798b);
        }
        if (!this.f47799c.equals("")) {
            bVar.b(2, this.f47799c);
        }
        long j2 = this.f47800d;
        if (j2 != 0) {
            bVar.g(3, j2);
        }
        int i2 = this.f47801e;
        if (i2 != 0) {
            bVar.i(4, i2);
        }
        if (!this.f47802f.equals("")) {
            bVar.b(5, this.f47802f);
        }
        if (!this.f47803g.equals("")) {
            bVar.b(6, this.f47803g);
        }
        if (!this.f47804h.equals("")) {
            bVar.b(7, this.f47804h);
        }
        if (!this.f47805i.equals("")) {
            bVar.b(8, this.f47805i);
        }
        if (!this.f47806j.equals("")) {
            bVar.b(9, this.f47806j);
        }
        if (!this.f47807k.equals("")) {
            bVar.b(10, this.f47807k);
        }
        if (!this.f47808l.equals("")) {
            bVar.b(11, this.f47808l);
        }
        a[] aVarArr = this.f47809m;
        if (aVarArr != null && aVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                a[] aVarArr2 = this.f47809m;
                if (i3 >= aVarArr2.length) {
                    break;
                }
                a aVar = aVarArr2[i3];
                if (aVar != null) {
                    bVar.d(12, aVar);
                }
                i3++;
            }
        }
        if (!this.f47810n.equals("")) {
            bVar.b(13, this.f47810n);
        }
        if (!this.f47811o.equals("")) {
            bVar.b(14, this.f47811o);
        }
        if (!this.f47812p.equals("")) {
            bVar.b(15, this.f47812p);
        }
        if (!this.f47813q.equals("")) {
            bVar.b(16, this.f47813q);
        }
        super.a(bVar);
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(com.ubix.ssp.ad.e.y.c.a aVar) throws d {
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 10:
                    this.f47798b = aVar.v();
                    break;
                case 18:
                    this.f47799c = aVar.v();
                    break;
                case 24:
                    this.f47800d = aVar.l();
                    break;
                case 32:
                    this.f47801e = aVar.k();
                    break;
                case 42:
                    this.f47802f = aVar.v();
                    break;
                case 50:
                    this.f47803g = aVar.v();
                    break;
                case 58:
                    this.f47804h = aVar.v();
                    break;
                case 66:
                    this.f47805i = aVar.v();
                    break;
                case 74:
                    this.f47806j = aVar.v();
                    break;
                case 82:
                    this.f47807k = aVar.v();
                    break;
                case 90:
                    this.f47808l = aVar.v();
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME /* 98 */:
                    int iA = h.a(aVar, 98);
                    a[] aVarArr = this.f47809m;
                    int length = aVarArr == null ? 0 : aVarArr.length;
                    int i2 = iA + length;
                    a[] aVarArr2 = new a[i2];
                    if (length != 0) {
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                    }
                    while (length < i2 - 1) {
                        a aVar2 = new a();
                        aVarArr2[length] = aVar2;
                        aVar.a(aVar2);
                        aVar.w();
                        length++;
                    }
                    a aVar3 = new a();
                    aVarArr2[length] = aVar3;
                    aVar.a(aVar3);
                    this.f47809m = aVarArr2;
                    break;
                case 106:
                    this.f47810n = aVar.v();
                    break;
                case 114:
                    this.f47811o = aVar.v();
                    break;
                case UMErrorCode.E_UM_BE_ERROR_WORK_MODE /* 122 */:
                    this.f47812p = aVar.v();
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE /* 130 */:
                    this.f47813q = aVar.v();
                    break;
                default:
                    if (!h.b(aVar, iW)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }
}
