package com.smartdigimkt.f3;

import android.content.ContentValues;
import com.anythink.core.common.f.p;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f40217a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40218b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40219c;

    public e(f fVar, String str, String str2) {
        this.f40219c = fVar;
        this.f40217a = str;
        this.f40218b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.k3.q qVar = this.f40219c.f40221a;
        String str = this.f40217a;
        String str2 = this.f40218b;
        synchronized (qVar) {
            if (qVar.b() == null) {
                return;
            }
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(p.a.f3382i, str2);
                if (!qVar.a(str)) {
                    str2.getClass();
                } else {
                    str2.getClass();
                    qVar.b().update(p.a.f3374a, contentValues, "bid_id = ? ", new String[]{str});
                }
            } catch (Exception unused) {
            }
        }
    }
}
