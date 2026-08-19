package com.ubix.ssp.ad.e.y.b;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ubix.ssp.ad.e.y.c.c;
import com.ubix.ssp.ad.e.y.c.d;
import com.ubix.ssp.ad.e.y.c.e;
import com.ubix.ssp.ad.e.y.c.f;
import com.ubix.ssp.ad.e.y.c.h;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes5.dex */
public final class a extends f {

    /* renamed from: b, reason: collision with root package name */
    private static volatile a[] f47783b;

    /* renamed from: c, reason: collision with root package name */
    public long f47784c;

    /* renamed from: d, reason: collision with root package name */
    public String f47785d;

    /* renamed from: e, reason: collision with root package name */
    public String f47786e;

    /* renamed from: f, reason: collision with root package name */
    public String f47787f;

    /* renamed from: g, reason: collision with root package name */
    public String f47788g;

    /* renamed from: h, reason: collision with root package name */
    public String f47789h;

    /* renamed from: i, reason: collision with root package name */
    public String f47790i;

    /* renamed from: j, reason: collision with root package name */
    public String f47791j;

    /* renamed from: k, reason: collision with root package name */
    public String f47792k;

    /* renamed from: l, reason: collision with root package name */
    public String f47793l;

    /* renamed from: m, reason: collision with root package name */
    public String f47794m;

    /* renamed from: n, reason: collision with root package name */
    public String f47795n;

    /* renamed from: o, reason: collision with root package name */
    public String f47796o;

    /* renamed from: p, reason: collision with root package name */
    public Map<String, String> f47797p;

    public a() {
        e();
    }

    public static a a(byte[] bArr) {
        return (a) f.a(new a(), bArr);
    }

    public static a[] f() {
        if (f47783b == null) {
            synchronized (c.f47827c) {
                try {
                    if (f47783b == null) {
                        f47783b = new a[0];
                    }
                } finally {
                }
            }
        }
        return f47783b;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public int b() {
        int iB = super.b();
        long j2 = this.f47784c;
        if (j2 != 0) {
            iB += com.ubix.ssp.ad.e.y.c.b.b(1, j2);
        }
        if (!this.f47785d.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(2, this.f47785d);
        }
        if (!this.f47786e.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(3, this.f47786e);
        }
        if (!this.f47787f.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(4, this.f47787f);
        }
        if (!this.f47788g.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(5, this.f47788g);
        }
        if (!this.f47789h.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(6, this.f47789h);
        }
        if (!this.f47790i.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(7, this.f47790i);
        }
        if (!this.f47791j.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(8, this.f47791j);
        }
        if (!this.f47792k.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(9, this.f47792k);
        }
        if (!this.f47793l.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(10, this.f47793l);
        }
        if (!this.f47794m.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(11, this.f47794m);
        }
        if (!this.f47795n.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(12, this.f47795n);
        }
        if (!this.f47796o.equals("")) {
            iB += com.ubix.ssp.ad.e.y.c.b.a(13, this.f47796o);
        }
        Map<String, String> map = this.f47797p;
        return map != null ? iB + c.a(map, 14, 9, 9) : iB;
    }

    public a e() {
        this.f47784c = 0L;
        this.f47785d = "";
        this.f47786e = "";
        this.f47787f = "";
        this.f47788g = "";
        this.f47789h = "";
        this.f47790i = "";
        this.f47791j = "";
        this.f47792k = "";
        this.f47793l = "";
        this.f47794m = "";
        this.f47795n = "";
        this.f47796o = "";
        this.f47797p = null;
        this.f47829a = -1;
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public a a(com.ubix.ssp.ad.e.y.c.a aVar) throws d {
        com.ubix.ssp.ad.e.y.c.a aVar2;
        e.c cVarA = e.a();
        while (true) {
            int iW = aVar.w();
            switch (iW) {
                case 0:
                    break;
                case 8:
                    this.f47784c = aVar.l();
                    continue;
                case 18:
                    aVar2 = aVar;
                    this.f47785d = aVar2.v();
                    break;
                case 26:
                    aVar2 = aVar;
                    this.f47786e = aVar2.v();
                    break;
                case 34:
                    aVar2 = aVar;
                    this.f47787f = aVar2.v();
                    break;
                case 42:
                    aVar2 = aVar;
                    this.f47788g = aVar2.v();
                    break;
                case 50:
                    aVar2 = aVar;
                    this.f47789h = aVar2.v();
                    break;
                case 58:
                    aVar2 = aVar;
                    this.f47790i = aVar2.v();
                    break;
                case 66:
                    aVar2 = aVar;
                    this.f47791j = aVar2.v();
                    break;
                case 74:
                    aVar2 = aVar;
                    this.f47792k = aVar2.v();
                    break;
                case 82:
                    aVar2 = aVar;
                    this.f47793l = aVar2.v();
                    break;
                case 90:
                    aVar2 = aVar;
                    this.f47794m = aVar2.v();
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME /* 98 */:
                    aVar2 = aVar;
                    this.f47795n = aVar2.v();
                    break;
                case 106:
                    aVar2 = aVar;
                    this.f47796o = aVar2.v();
                    break;
                case 114:
                    aVar2 = aVar;
                    this.f47797p = c.a(aVar2, this.f47797p, cVarA, 9, 9, null, 10, 18);
                    break;
                default:
                    if (!h.b(aVar, iW)) {
                        break;
                    } else {
                        continue;
                    }
            }
            aVar = aVar2;
        }
        return this;
    }

    @Override // com.ubix.ssp.ad.e.y.c.f
    public void a(com.ubix.ssp.ad.e.y.c.b bVar) throws IOException {
        long j2 = this.f47784c;
        if (j2 != 0) {
            bVar.g(1, j2);
        }
        if (!this.f47785d.equals("")) {
            bVar.b(2, this.f47785d);
        }
        if (!this.f47786e.equals("")) {
            bVar.b(3, this.f47786e);
        }
        if (!this.f47787f.equals("")) {
            bVar.b(4, this.f47787f);
        }
        if (!this.f47788g.equals("")) {
            bVar.b(5, this.f47788g);
        }
        if (!this.f47789h.equals("")) {
            bVar.b(6, this.f47789h);
        }
        if (!this.f47790i.equals("")) {
            bVar.b(7, this.f47790i);
        }
        if (!this.f47791j.equals("")) {
            bVar.b(8, this.f47791j);
        }
        if (!this.f47792k.equals("")) {
            bVar.b(9, this.f47792k);
        }
        if (!this.f47793l.equals("")) {
            bVar.b(10, this.f47793l);
        }
        if (!this.f47794m.equals("")) {
            bVar.b(11, this.f47794m);
        }
        if (!this.f47795n.equals("")) {
            bVar.b(12, this.f47795n);
        }
        if (!this.f47796o.equals("")) {
            bVar.b(13, this.f47796o);
        }
        Map<String, String> map = this.f47797p;
        if (map != null) {
            c.a(bVar, map, 14, 9, 9);
        }
        super.a(bVar);
    }
}
