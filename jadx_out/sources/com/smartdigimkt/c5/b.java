package com.smartdigimkt.c5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes5.dex */
public final class b implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public boolean f39696a = false;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f39697b = new LinkedBlockingQueue(1);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
        try {
            this.f39697b.put(iBinder);
        } catch (InterruptedException unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
