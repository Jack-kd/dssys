package com.smartdigimkt.f3;

import android.content.ContentValues;
import com.anythink.core.common.f.h;

/* loaded from: classes5.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.b f40227a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f40228b;

    public j(k kVar, com.smartdigimkt.m3.b bVar) {
        this.f40228b = kVar;
        this.f40227a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k kVar = this.f40228b;
        String str = kVar.f40230a;
        com.smartdigimkt.m3.b bVar = this.f40227a;
        String str2 = bVar.f42055p0;
        String str3 = bVar.f42054o0;
        String str4 = bVar.f41822m;
        com.smartdigimkt.k3.h hVar = kVar.f40232c;
        synchronized (hVar) {
            if (hVar.b() != null) {
                if (!hVar.a(str3, str2)) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("dsp_id", str3);
                        contentValues.put("dsp_offer_id", str2);
                        contentValues.put("package_name", str4);
                        contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                        hVar.b().insert(h.a.f3292a, null, contentValues);
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }
}
