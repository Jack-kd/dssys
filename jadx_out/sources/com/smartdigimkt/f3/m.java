package com.smartdigimkt.f3;

import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f40233a;

    public m(p pVar) {
        this.f40233a = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f40233a.f40245e) {
            try {
                this.f40233a.a();
                ArrayList arrayListD = this.f40233a.f40242b.d();
                if (arrayListD != null) {
                    for (int i2 = 0; i2 < arrayListD.size(); i2++) {
                        q qVar = (q) arrayListD.get(i2);
                        String str = TextUtils.isEmpty(qVar.f40246a) ? "" : qVar.f40246a;
                        if (!TextUtils.isEmpty(str)) {
                            r rVar = (r) this.f40233a.f40243c.get(str);
                            if (rVar == null) {
                                rVar = new r();
                                this.f40233a.f40243c.put(str, rVar);
                            }
                            rVar.a(qVar);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
