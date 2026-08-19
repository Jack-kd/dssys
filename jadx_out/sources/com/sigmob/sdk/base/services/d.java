package com.sigmob.sdk.base.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.sigmob.sdk.base.services.f;

/* loaded from: classes4.dex */
public class d implements f.a {

    /* renamed from: a, reason: collision with root package name */
    c f36547a;

    /* renamed from: b, reason: collision with root package name */
    g f36548b = g.STOP;

    public d() {
        if (this.f36547a == null) {
            this.f36547a = new c();
        }
    }

    public void a(Context context) {
        com.sigmob.sdk.base.utils.h.a(context, (BroadcastReceiver) this.f36547a, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), true);
    }

    public void b(Context context) {
        context.unregisterReceiver(this.f36547a);
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public boolean e() {
        a(com.sigmob.sdk.b.e());
        this.f36548b = g.RUNNING;
        return false;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public g f() {
        return null;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public void g() {
        b(com.sigmob.sdk.b.e());
        this.f36548b = g.STOP;
    }

    @Override // com.sigmob.sdk.base.services.f.a
    public Error h() {
        return null;
    }
}
