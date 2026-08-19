package com.octopus.ad.c.h;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.octopus.ad.c.h.c;

/* loaded from: classes4.dex */
public class d implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final a f33841a;

    public d(a aVar) {
        this.f33841a = aVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f33841a.f33830a = c.a.a(iBinder);
        synchronized (this.f33841a.f33833d) {
            this.f33841a.f33833d.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f33841a.f33830a = null;
    }
}
