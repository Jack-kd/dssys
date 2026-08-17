package com.smartdigimkt.f3;

import android.content.ContentValues;
import com.anythink.core.common.f.i;

/* loaded from: classes5.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.m3.b f40224a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f40225b;

    public h(k kVar, com.smartdigimkt.m3.b bVar) {
        this.f40225b = kVar;
        this.f40224a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.m3.b bVar = this.f40224a;
        String str = bVar.f42054o0;
        String str2 = bVar.f42055p0;
        int i2 = bVar.f42056q0;
        com.smartdigimkt.k3.i iVar = this.f40225b.f40231b;
        synchronized (iVar) {
            if (iVar.b() != null) {
                if (i2 <= 0) {
                    return;
                }
                u uVarA = iVar.a(str, str2);
                if (uVarA != null) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("dsp_id", str);
                        contentValues.put("dsp_offer_id", str2);
                        contentValues.put(i.a.f3304d, Integer.valueOf(i2));
                        contentValues.put("show_count", Integer.valueOf(uVarA.f40255c + 1));
                        contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                        iVar.b().update(i.a.f3301a, contentValues, "dsp_id = ? and dsp_offer_id = ? ", new String[]{str, str2});
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }
}
