package com.smartdigimkt.a0;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class p extends b {
    public p(a aVar) {
        super(aVar);
    }

    public final s b() {
        s sVarA;
        com.smartdigimkt.m3.c cVar = this.f39220c;
        String str = cVar != null ? cVar.f41804Y : "";
        if (TextUtils.isEmpty(str)) {
            return new s(false);
        }
        com.smartdigimkt.i0.l lVar = this.f39222e.f39259b;
        if (lVar == null) {
            return new s(false);
        }
        e eVar = this.f39223f;
        if (eVar != null) {
            eVar.b();
            this.f39223f.a();
        }
        if (!TextUtils.isEmpty(this.f39220c.f41822m) && (sVarA = a(lVar)) != null) {
            return sVarA;
        }
        com.smartdigimkt.z.j jVarA = com.smartdigimkt.c0.e.a(this.f39219b, this.f39221d, this.f39220c, str);
        if (jVarA.f45307a != 0) {
            com.smartdigimkt.y3.h.a(this.f39221d, this.f39220c, str, "0", 2, 0, jVarA.f45308b);
            return new s(false);
        }
        com.smartdigimkt.z.p.a(this.f39219b, this.f39220c);
        r rVar = this.f39222e;
        if (rVar != null) {
            rVar.a();
        }
        e eVar2 = this.f39223f;
        if (eVar2 != null) {
            eVar2.c();
        }
        com.smartdigimkt.y3.h.a(this.f39221d, this.f39220c, str, "1", 2, 0, jVarA.f45308b);
        return new s(true);
    }
}
