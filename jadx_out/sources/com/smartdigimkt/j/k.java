package com.smartdigimkt.j;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes5.dex */
public final class k implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f40794a;

    public k(u uVar) {
        this.f40794a = uVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f40794a.f40832m = (com.smartdigimkt.o.b) iBinder;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f40794a.f40832m = null;
    }
}
