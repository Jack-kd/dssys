package com.smartdigimkt.z4;

import android.content.ContentValues;
import android.content.Context;
import com.anythink.core.common.d.t;
import com.anythink.core.common.f.f;
import com.smartdigimkt.c5.y;
import com.smartdigimkt.sdk.core.SDKContext;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f45453a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.a5.a f45454b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f45455c;

    public c(d dVar, JSONObject jSONObject, com.smartdigimkt.a5.a aVar) {
        this.f45455c = dVar;
        this.f45453a = jSONObject;
        this.f45454b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f45455c.getClass();
        Context contextD = SDKContext.getInstance().d();
        com.smartdigimkt.k3.e eVarA = com.smartdigimkt.k3.e.a(com.smartdigimkt.k3.d.a(contextD));
        String strA = SDKContext.getInstance().a();
        String string = this.f45453a.toString();
        synchronized (eVarA) {
            if (eVarA.b() != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(f.a.f3242b, strA);
                    contentValues.put("type", t.a.f3042k);
                    contentValues.put(f.a.f3244d, string);
                    contentValues.put(f.a.f3245e, System.currentTimeMillis() + "");
                    if (eVarA.a(strA)) {
                        eVarA.b().update(f.a.f3241a, contentValues, "key = ? AND type = ?", new String[]{strA, t.a.f3042k});
                    } else {
                        eVarA.b().insert(f.a.f3241a, null, contentValues);
                    }
                } catch (Exception unused) {
                }
            }
        }
        com.smartdigimkt.a5.a aVar = this.f45454b;
        y.b(contextD, "sdm_adx_rp_sdk", t.a.f3055x, aVar != null ? aVar.f39380k : 0);
    }
}
