package com.smartdigimkt.f3;

import android.content.ContentValues;
import android.text.TextUtils;
import com.anythink.core.common.f.p;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40200a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.o3.b f40201b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40202c;

    public a(f fVar, String str, com.smartdigimkt.o3.b bVar) {
        this.f40202c = fVar;
        this.f40200a = str;
        this.f40201b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar = this.f40202c;
        if (fVar.f40221a == null) {
            fVar.f40221a = com.smartdigimkt.k3.q.a(com.smartdigimkt.k3.d.a(SDKContext.getInstance().d()));
        }
        com.smartdigimkt.k3.q qVar = this.f40202c.f40221a;
        String str = this.f40200a;
        com.smartdigimkt.o3.b bVar = this.f40201b;
        synchronized (qVar) {
            try {
                if (qVar.b() != null && bVar != null) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("placement_id", str);
                        contentValues.put("adsource_id", bVar.f42263z);
                        contentValues.put("network_firm_id", Integer.valueOf(bVar.f42253p));
                        contentValues.put(p.a.f3376c, bVar.f42225e);
                        contentValues.put(p.a.f3379f, bVar.a());
                        contentValues.put(p.a.f3381h, Long.valueOf(bVar.f42255r));
                        if (!TextUtils.isEmpty(bVar.f42261x)) {
                            contentValues.put(p.a.f3380g, bVar.f42261x);
                        }
                        if (qVar.a(bVar.f42225e)) {
                            qVar.b().update(p.a.f3374a, contentValues, "bid_id = ? ", new String[]{bVar.f42225e});
                        } else {
                            qVar.b().insert(p.a.f3374a, null, contentValues);
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f fVar2 = this.f40202c;
        com.smartdigimkt.o3.b bVar2 = this.f40201b;
        fVar2.getClass();
        if (bVar2 == null || TextUtils.isEmpty(bVar2.f42261x)) {
            return;
        }
        try {
            if (bVar2.f42253p == 67) {
                JSONObject jSONObject = bVar2.f42249Q;
                if (jSONObject == null) {
                    jSONObject = new JSONObject(bVar2.f42261x);
                }
                com.smartdigimkt.m3.b bVarA = l.a(bVar2.f42225e, jSONObject, bVar2.f42261x, bVar2.f42253p, true);
                if (bVarA == null) {
                    return;
                }
                com.smartdigimkt.g3.c.a(SDKContext.getInstance().d()).a(bVarA.f41806a, bVar2.f42255r);
                com.smartdigimkt.g3.b.a(SDKContext.getInstance().d()).a(bVarA.f41808b, bVar2.f42255r);
            }
        } catch (Throwable unused2) {
        }
    }
}
