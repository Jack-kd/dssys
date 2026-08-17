package com.smartdigimkt.e0;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f40007a;

    public o(r rVar) {
        this.f40007a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        com.smartdigimkt.m3.c cVar = this.f40007a.f40015f;
        if (cVar != null) {
            synchronized (cVar) {
                i2 = cVar.f41788I;
            }
            if (i2 == 0 && this.f40007a.f40015f.b() == 0) {
                String str = this.f40007a.f40015f.f41815f;
                try {
                    com.smartdigimkt.z.b0.a().getClass();
                    String strA = com.smartdigimkt.z.b0.a(1, str);
                    String str2 = this.f40007a.f40012c;
                    if (TextUtils.isEmpty(strA)) {
                        String str3 = this.f40007a.f40012c;
                        return;
                    }
                    int[] iArrA = com.smartdigimkt.d5.d.a(strA);
                    if (iArrA == null || iArrA.length != 2) {
                        return;
                    }
                    int i3 = iArrA[0];
                    int i4 = iArrA[1];
                    this.f40007a.f40015f.b(i3);
                    this.f40007a.f40015f.a(i4);
                    String str4 = this.f40007a.f40012c;
                } catch (Throwable unused) {
                }
            }
        }
    }
}
