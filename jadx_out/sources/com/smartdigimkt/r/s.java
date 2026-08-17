package com.smartdigimkt.r;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class s {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f42912e = 0;

    /* renamed from: a, reason: collision with root package name */
    public Context f42913a;

    /* renamed from: b, reason: collision with root package name */
    public r f42914b;

    /* renamed from: c, reason: collision with root package name */
    public p f42915c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.q.a f42916d;

    public s(Context context) {
        this.f42913a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        com.smartdigimkt.q.a aVar;
        try {
            if (this.f42913a != null) {
                String str = (String) Class.forName(com.smartdigimkt.c5.a0.a("frp1klkrqru1dgv1lghqwlilhu1DgyhuwlvlqjLgFolhqw'Lqir")).getDeclaredField("id").get(Class.forName(com.smartdigimkt.c5.a0.a("frp1klkrqru1dgv1lghqwlilhu1DgyhuwlvlqjLgFolhqw")).getMethod(com.smartdigimkt.c5.a0.a("jhwDgyhuwlvlqjLgLqir"), Context.class).invoke(null, this.f42913a.getApplicationContext()));
                if (!TextUtils.isEmpty(str)) {
                    bVar.a(str, false);
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.f42916d = bVar;
        if (this.f42913a == null) {
            return;
        }
        this.f42914b = new r(this);
        try {
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            if (this.f42913a.bindService(intent, this.f42914b, 1) || (aVar = this.f42916d) == null) {
                return;
            }
            aVar.a("Service binding failed.");
        } catch (Throwable th) {
            com.smartdigimkt.q.a aVar2 = this.f42916d;
            if (aVar2 != null) {
                aVar2.a(th.getMessage());
            }
        }
    }

    public static void a(s sVar) {
        r rVar;
        Context context = sVar.f42913a;
        if (context == null || (rVar = sVar.f42914b) == null) {
            return;
        }
        try {
            context.unbindService(rVar);
        } catch (Throwable unused) {
        }
        sVar.f42915c = null;
        sVar.f42913a = null;
        sVar.f42916d = null;
    }
}
