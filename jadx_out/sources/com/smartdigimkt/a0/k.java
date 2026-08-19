package com.smartdigimkt.a0;

import android.text.TextUtils;
import com.smartdigimkt.z.z;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class k extends b {

    /* renamed from: h, reason: collision with root package name */
    public com.smartdigimkt.a4.c f39246h;

    /* renamed from: i, reason: collision with root package name */
    public long f39247i;

    /* renamed from: j, reason: collision with root package name */
    public WeakReference f39248j;

    /* renamed from: k, reason: collision with root package name */
    public g f39249k;

    public k(a aVar) {
        super(aVar);
        this.f39247i = 0L;
    }

    public final s b() {
        r rVar;
        s sVarA;
        r rVar2 = this.f39222e;
        if (rVar2 == null) {
            return new s(false);
        }
        com.smartdigimkt.i0.l lVar = rVar2.f39259b;
        if (lVar == null) {
            return new s(false);
        }
        lVar.f40673i = new com.smartdigimkt.i0.b();
        com.smartdigimkt.i0.e eVarA = a();
        lVar.f40673i.f40633a = eVarA != null ? eVarA.f40650b : "";
        com.smartdigimkt.z.p.a(23, this.f39220c, lVar);
        if (!TextUtils.isEmpty(this.f39220c.f41822m) && this.f39220c.f41824o == 1 && (sVarA = a(lVar)) != null) {
            return sVarA;
        }
        if (!TextUtils.isEmpty(this.f39220c.f41820k)) {
            String str = this.f39220c.f41820k;
            String str2 = this.f39221d.f41632f;
            String strReplaceAll = str.replaceAll("\\{req_id\\}", str2 != null ? str2 : "");
            com.smartdigimkt.e3.a.a().getClass();
            com.smartdigimkt.z.j jVarA = com.smartdigimkt.c0.e.a(this.f39219b, this.f39221d, this.f39220c, strReplaceAll);
            int i2 = jVarA.f45307a;
            if (i2 == 0) {
                lVar.f40673i.f40634b = 1;
            } else if (i2 != 1) {
                lVar.f40673i.f40634b = 3;
            } else {
                lVar.f40673i.f40634b = 2;
            }
            if (i2 == 0) {
                com.smartdigimkt.m3.c cVar = this.f39220c;
                if (cVar.f41824o == 1) {
                    com.smartdigimkt.z.p.a(this.f39219b, cVar);
                }
                com.smartdigimkt.m3.e eVar = this.f39220c.f41832w;
                boolean z2 = eVar == null || eVar.f41867J1 != 1;
                r rVar3 = this.f39222e;
                if (rVar3 != null) {
                    rVar3.a();
                }
                com.smartdigimkt.b4.e.a().a(new l(new m(this.f39220c, this.f39221d, strReplaceAll, lVar, this.f39222e)), 1000L, 2);
                com.smartdigimkt.y3.h.a(this.f39221d, this.f39220c, strReplaceAll, "1", 0, 0, jVarA.f45308b);
                e eVar2 = this.f39223f;
                if (eVar2 != null) {
                    eVar2.b();
                    this.f39223f.a();
                    this.f39223f.a(true);
                    this.f39223f.c();
                }
                com.smartdigimkt.x.l.a().f45042j = new h(this);
                if (z2 && (rVar = this.f39222e) != null) {
                    rVar.b();
                }
                if (z.j(this.f39220c, this.f39221d) != 1) {
                    com.smartdigimkt.m3.c cVar2 = this.f39220c;
                    String str3 = cVar2.f41821l;
                    int i3 = cVar2.f41824o;
                    this.f39247i = System.currentTimeMillis();
                    com.smartdigimkt.x.l lVarA = com.smartdigimkt.x.l.a();
                    lVarA.f45043k = new j(this, str3, strReplaceAll, i3);
                    lVarA.f45044l = false;
                }
                return new s(true);
            }
            com.smartdigimkt.e3.a.a().getClass();
            if (jVarA.f45307a == 1) {
                com.smartdigimkt.z.p.a(29, this.f39220c, lVar);
            } else {
                com.smartdigimkt.z.p.a(28, this.f39220c, lVar);
            }
            com.smartdigimkt.y3.h.a(this.f39221d, this.f39220c, strReplaceAll, "0", 0, jVarA.f45307a, jVarA.f45308b);
        }
        return new s(false);
    }
}
