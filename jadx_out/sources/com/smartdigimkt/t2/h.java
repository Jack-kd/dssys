package com.smartdigimkt.t2;

import org.json.JSONArray;

/* loaded from: classes5.dex */
public final class h implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f44262a;

    public h(k kVar) {
        this.f44262a = kVar;
    }

    @Override // com.smartdigimkt.t2.e
    public final void a(int i2, String str) {
        g gVar = this.f44262a.f44268d;
        if (gVar != null) {
            gVar.a("" + i2, str);
        }
    }

    @Override // com.smartdigimkt.t2.e
    public final void a(com.smartdigimkt.u2.a[] aVarArr, JSONArray jSONArray) {
        k.a(this.f44262a, aVarArr, jSONArray);
    }
}
