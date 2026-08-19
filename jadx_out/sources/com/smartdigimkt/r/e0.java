package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42882a;

    /* renamed from: b, reason: collision with root package name */
    public h0 f42883b;

    /* renamed from: c, reason: collision with root package name */
    public com.smartdigimkt.q.a f42884c;

    /* renamed from: d, reason: collision with root package name */
    public String f42885d;

    /* renamed from: e, reason: collision with root package name */
    public d0 f42886e;

    public e0(Context context) {
        this.f42882a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        this.f42884c = bVar;
        this.f42886e = new d0(this);
        try {
            Intent intent = new Intent("action.com.oplus.stdid.ID_SERVICE");
            intent.setComponent(new ComponentName("com.coloros.mcs", "com.oplus.stdid.IdentifyService"));
            if (this.f42882a.bindService(intent, this.f42886e, 1)) {
                return;
            }
            bVar.a("Service binding failed.");
        } catch (Throwable th) {
            bVar.a("Bind Service failed: " + th.getMessage());
        }
    }

    public final void a() {
        Context context = this.f42882a;
        if (context == null) {
            return;
        }
        try {
            context.unbindService(this.f42886e);
        } catch (Throwable unused) {
        }
        this.f42883b = null;
    }
}
