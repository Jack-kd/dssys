package com.smartdigimkt.z4;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.e.m;
import com.smartdigimkt.sdk.api.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class o implements com.smartdigimkt.l4.b, l {

    /* renamed from: a, reason: collision with root package name */
    public final m f45490a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.j4.b f45491b;

    /* renamed from: c, reason: collision with root package name */
    public final l f45492c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.x3.f f45493d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f45494e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f45495f = new AtomicBoolean(false);

    /* renamed from: g, reason: collision with root package name */
    public n f45496g;

    public o(m mVar, com.smartdigimkt.j4.b bVar) {
        this.f45490a = mVar;
        this.f45491b = bVar;
        this.f45492c = bVar != null ? bVar.f41122c : null;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
        a();
    }

    @Override // com.smartdigimkt.z4.l
    public final void b() {
        l lVar = this.f45492c;
        if (lVar != null) {
            lVar.b();
        }
    }

    @Override // com.smartdigimkt.z4.l
    public final void a() {
        l lVar = this.f45492c;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // com.smartdigimkt.z4.l
    public final void b(com.smartdigimkt.a5.e eVar) {
        l lVar;
        if (this.f45495f.getAndSet(true) || (lVar = this.f45492c) == null) {
            return;
        }
        lVar.b(eVar);
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(AdError adError) {
        l lVar;
        if (this.f45495f.getAndSet(true) || (lVar = this.f45492c) == null) {
            return;
        }
        lVar.a(adError);
    }

    @Override // com.smartdigimkt.z4.l
    public final void a(com.smartdigimkt.a5.e eVar) {
        l lVar = this.f45492c;
        if (lVar != null) {
            lVar.a(eVar);
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        String str2;
        com.smartdigimkt.a5.e eVar;
        n nVar;
        com.smartdigimkt.x3.f fVar = this.f45493d;
        if (fVar != null && (nVar = this.f45496g) != null) {
            fVar.a(nVar);
        }
        com.smartdigimkt.j4.b bVar = this.f45491b;
        if (bVar == null) {
            eVar = null;
            str2 = "";
        } else {
            try {
                str2 = bVar.f41120a;
                eVar = bVar.f41121b;
            } catch (Throwable th) {
                a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4592i, th + ""));
                return;
            }
        }
        if (String.valueOf(AbstractC1114b.f5586d).equals(adError.getCode())) {
            this.f45490a.a(str2, eVar);
            a(adError);
            return;
        }
        if (eVar != null && !eVar.c()) {
            b(eVar);
            return;
        }
        a(adError);
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        n nVar;
        com.smartdigimkt.x3.f fVar = this.f45493d;
        if (fVar != null && (nVar = this.f45496g) != null) {
            fVar.a(nVar);
        }
        b();
        com.smartdigimkt.j4.b bVar = this.f45491b;
        boolean z2 = this.f45494e.get();
        if (bVar == null || obj == null) {
            return;
        }
        String str = bVar.f41120a;
        com.smartdigimkt.a5.e eVar = bVar.f41121b;
        try {
            JSONObject jSONObject = (JSONObject) obj;
            jSONObject.put(m.a.ac, System.currentTimeMillis());
            jSONObject.optInt(m.a.av, 0);
            com.smartdigimkt.a5.e eVarA = this.f45490a.a(bVar.f41120a);
            if (eVarA != null) {
                eVarA.a(str, jSONObject);
            }
            com.smartdigimkt.a5.e eVarB = com.smartdigimkt.a5.e.b(str, jSONObject);
            this.f45490a.a(str, eVarB, jSONObject);
            if (z2) {
                a(eVarB);
            } else {
                b(eVarB);
            }
        } catch (Throwable th) {
            if (eVar != null && !eVar.c()) {
                b(eVar);
                return;
            }
            a(com.smartdigimkt.k4.b.a(com.anythink.core.common.inner.b.b.f4592i, th + ""));
        }
    }
}
