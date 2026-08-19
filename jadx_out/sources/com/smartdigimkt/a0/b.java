package com.smartdigimkt.a0;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.api.IOfferClickHandler;
import com.smartdigimkt.z.y;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f39218a = k.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final Context f39219b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f39220c;

    /* renamed from: d, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f39221d;

    /* renamed from: e, reason: collision with root package name */
    public final r f39222e;

    /* renamed from: f, reason: collision with root package name */
    public final e f39223f;

    /* renamed from: g, reason: collision with root package name */
    public final IOfferClickHandler f39224g;

    public b(a aVar) {
        this.f39219b = aVar.f39212a;
        this.f39220c = aVar.f39213b;
        this.f39221d = aVar.f39214c;
        this.f39222e = aVar.f39215d;
        this.f39223f = aVar.f39216e;
        this.f39224g = aVar.f39217f;
    }

    public final com.smartdigimkt.i0.e a() {
        if (this.f39220c == null) {
            return null;
        }
        y yVarA = y.a();
        int iE = this.f39220c.e();
        String str = this.f39220c.f41806a;
        return (com.smartdigimkt.i0.e) yVarA.f45348a.get(iE + str);
    }

    public final s a(com.smartdigimkt.i0.l lVar) {
        com.smartdigimkt.m3.c cVar = this.f39220c;
        if (cVar != null && !TextUtils.isEmpty(cVar.f41822m)) {
            boolean zA = com.smartdigimkt.c0.e.a(this.f39219b, this.f39220c.f41822m);
            if (lVar != null) {
                lVar.f40673i = new com.smartdigimkt.i0.b();
                com.smartdigimkt.i0.e eVarA = a();
                lVar.f40673i.f40633a = eVarA != null ? eVarA.f40650b : "";
                com.smartdigimkt.i0.a aVar = lVar.f40671g;
                if (aVar != null) {
                    aVar.f40622j = zA ? 5 : aVar.f40622j;
                }
            }
            if (zA) {
                r rVar = this.f39222e;
                if (rVar != null) {
                    rVar.a();
                }
                com.smartdigimkt.z.p.a(25, this.f39220c, lVar);
                e eVar = this.f39223f;
                if (eVar != null) {
                    eVar.b();
                    this.f39223f.a();
                    this.f39223f.a(true);
                    this.f39223f.c();
                }
                return new s(true);
            }
            com.smartdigimkt.z.p.a(26, this.f39220c, lVar);
        }
        return null;
    }
}
