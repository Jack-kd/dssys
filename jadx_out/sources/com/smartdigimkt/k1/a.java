package com.smartdigimkt.k1;

import android.text.TextUtils;
import com.smartdigimkt.f3.l;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.l3.a f41254a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.o3.b f41255b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.j1.g f41256c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f41257d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f41258e;

    public a(h hVar, com.smartdigimkt.l3.a aVar, com.smartdigimkt.o3.b bVar, com.smartdigimkt.j1.g gVar, com.smartdigimkt.j1.e eVar) {
        this.f41258e = hVar;
        this.f41254a = aVar;
        this.f41255b = bVar;
        this.f41256c = gVar;
        this.f41257d = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.b bVarA;
        h hVar = this.f41258e;
        com.smartdigimkt.l3.a aVar = this.f41254a;
        com.smartdigimkt.o3.b bVar = this.f41255b;
        com.smartdigimkt.j1.g gVar = this.f41256c;
        g gVar2 = this.f41257d;
        hVar.getClass();
        com.smartdigimkt.m3.b bVarA2 = null;
        if (bVar != null) {
            if (TextUtils.isEmpty(bVar.f42261x)) {
                bVarA = null;
            } else {
                JSONObject jSONObject = bVar.f42249Q;
                if (jSONObject == null) {
                    jSONObject = new JSONObject(bVar.f42261x);
                }
                bVarA = l.a(aVar.f41635i, jSONObject, bVar.f42261x, aVar.f41636j, false);
                try {
                    bVarA.f42058s0 = aVar.f41640n;
                } catch (Throwable unused) {
                }
            }
            if (bVarA != null) {
                try {
                    hVar.a(bVarA, aVar);
                    bVarA2 = bVarA;
                } catch (Throwable unused2) {
                }
            } else {
                bVarA2 = bVarA;
            }
        }
        if (bVarA2 == null) {
            try {
                bVarA2 = hVar.a(aVar);
            } catch (Throwable unused3) {
            }
        }
        if (bVarA2 == null) {
            new com.smartdigimkt.q4.c(aVar).a(0, (com.smartdigimkt.l4.b) new b(hVar, aVar, gVar2, gVar));
            return;
        }
        if (gVar2 != null) {
            gVar2.a(bVarA2);
        }
        hVar.a(bVarA2, aVar, gVar, gVar2);
    }
}
