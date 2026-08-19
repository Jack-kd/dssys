package com.smartdigimkt.k1;

import android.content.Context;
import com.smartdigimkt.f3.l;
import com.smartdigimkt.k3.q;
import com.smartdigimkt.sdk.api.AdError;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class b implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f41259a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f41260b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j1.g f41261c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ h f41262d;

    public b(h hVar, com.smartdigimkt.l3.a aVar, g gVar, com.smartdigimkt.j1.g gVar2) {
        this.f41262d = hVar;
        this.f41259a = aVar;
        this.f41260b = gVar;
        this.f41261c = gVar2;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        com.smartdigimkt.m3.b bVarA;
        try {
            com.smartdigimkt.l3.a aVar = this.f41259a;
            bVarA = l.a(aVar.f41635i, (JSONObject) obj, "", aVar.f41636j, false);
        } catch (Exception unused) {
            bVarA = null;
        }
        if (bVarA == null) {
            g gVar = this.f41260b;
            if (gVar != null) {
                gVar.a(null, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, obj != null ? obj.toString() : "No Ad Return."));
                return;
            }
            return;
        }
        com.smartdigimkt.l3.a aVar2 = this.f41259a;
        bVarA.f42058s0 = aVar2.f41640n;
        this.f41262d.a(bVarA, aVar2);
        com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
        Context context = this.f41262d.f41277a;
        com.smartdigimkt.l3.a aVar3 = this.f41259a;
        String str = aVar3.f41627a;
        String str2 = aVar3.f41631e;
        String str3 = aVar3.f41635i;
        String string = obj.toString();
        if (fVarA.f40221a == null) {
            fVarA.f40221a = q.a(com.smartdigimkt.k3.d.a(context.getApplicationContext()));
        }
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.b(fVarA, str, str2, str3, string));
        g gVar2 = this.f41260b;
        if (gVar2 != null) {
            gVar2.a(bVarA);
        }
        this.f41262d.a(bVarA, this.f41259a, this.f41261c, this.f41260b);
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        g gVar = this.f41260b;
        if (gVar != null) {
            gVar.a(null, new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, str));
        }
    }
}
