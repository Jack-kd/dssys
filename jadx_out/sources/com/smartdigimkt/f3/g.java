package com.smartdigimkt.f3;

import android.content.ContentValues;
import com.anythink.core.common.f.i;

/* loaded from: classes5.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.b f40222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f40223b;

    public g(k kVar, com.smartdigimkt.m3.b bVar) {
        this.f40223b = kVar;
        this.f40222a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.b bVar = this.f40222a;
        String str = bVar.f42054o0;
        String str2 = bVar.f42055p0;
        int i2 = bVar.f42056q0;
        com.smartdigimkt.k3.i iVar = this.f40223b.f40231b;
        synchronized (iVar) {
            if (iVar.b() != null) {
                if (i2 <= 0) {
                    return;
                }
                if (iVar.a(str, str2) == null) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("dsp_id", str);
                        contentValues.put("dsp_offer_id", str2);
                        contentValues.put(i.a.f3304d, Integer.valueOf(i2));
                        contentValues.put("show_count", (Integer) 0);
                        contentValues.put("create_time", Long.valueOf(System.currentTimeMillis()));
                        contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                        iVar.b().insert(i.a.f3301a, null, contentValues);
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }
}
