package com.smartdigimkt.f3;

import android.content.ContentValues;
import com.anythink.core.common.f.p;

/* loaded from: classes5.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40210a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40211b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40212c;

    public b(f fVar, String str, String str2, String str3, String str4) {
        this.f40212c = fVar;
        this.f40210a = str3;
        this.f40211b = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.q qVar = this.f40212c.f40221a;
        String str = this.f40210a;
        String str2 = this.f40211b;
        synchronized (qVar) {
            if (qVar.b() == null) {
                return;
            }
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(p.a.f3380g, str2);
                if (qVar.a(str)) {
                    qVar.b().update(p.a.f3374a, contentValues, "bid_id = ? ", new String[]{str});
                }
            } catch (Exception unused) {
            }
        }
    }
}
