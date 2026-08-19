package com.smartdigimkt.r;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class m0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42905a;

    /* renamed from: b, reason: collision with root package name */
    public k0 f42906b;

    /* renamed from: c, reason: collision with root package name */
    public final l0 f42907c = new l0(this);

    public m0(Context context) {
        this.f42905a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        k0 k0Var;
        try {
            Intent intent = new Intent();
            intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
            if (!this.f42905a.bindService(intent, this.f42907c, 1) || (k0Var = this.f42906b) == null) {
                bVar.a("Service unbind");
            } else {
                bVar.a(k0Var.a(), false);
            }
        } catch (Throwable th) {
            bVar.a(th.getMessage());
        }
    }
}
