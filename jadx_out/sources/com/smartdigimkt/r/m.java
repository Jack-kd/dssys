package com.smartdigimkt.r;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public Context f42901a;

    /* renamed from: b, reason: collision with root package name */
    public l f42902b;

    /* renamed from: c, reason: collision with root package name */
    public k f42903c;

    /* renamed from: d, reason: collision with root package name */
    public com.smartdigimkt.q.a f42904d;

    public m(Context context) {
        this.f42901a = context;
    }

    public static void a(m mVar) {
        l lVar;
        Context context = mVar.f42901a;
        if (context == null || (lVar = mVar.f42902b) == null) {
            return;
        }
        try {
            context.unbindService(lVar);
        } catch (Throwable unused) {
        }
        mVar.f42903c = null;
        mVar.f42901a = null;
        mVar.f42904d = null;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        com.smartdigimkt.q.a aVar;
        this.f42904d = bVar;
        if (this.f42901a == null) {
            bVar.a("mContext is null.");
            return;
        }
        this.f42902b = new l(this);
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        if (this.f42901a.bindService(intent, this.f42902b, 1) || (aVar = this.f42904d) == null) {
            return;
        }
        aVar.a("Service binding failed.");
    }
}
