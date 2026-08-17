package com.octopus.ad.c.d;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.c.d.a;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static String f33796b = "OpenDeviceId library";

    /* renamed from: c, reason: collision with root package name */
    private static boolean f33797c = false;

    /* renamed from: a, reason: collision with root package name */
    private com.octopus.ad.c.d.a f33798a;

    /* renamed from: d, reason: collision with root package name */
    private ServiceConnection f33799d;

    /* renamed from: e, reason: collision with root package name */
    private Context f33800e = null;

    /* renamed from: f, reason: collision with root package name */
    private a f33801f = null;

    public interface a<T> {
        void a(T t2, c cVar);
    }

    public boolean b() {
        try {
            com.octopus.ad.c.d.a aVar = this.f33798a;
            if (aVar != null) {
                return aVar.c();
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int a(Context context, a<String> aVar) {
        if (context != null) {
            this.f33800e = context;
            this.f33801f = aVar;
            this.f33799d = new ServiceConnection() { // from class: com.octopus.ad.c.d.c.1
                @Override // android.content.ServiceConnection
                public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    c.this.f33798a = a.AbstractBinderC0721a.a(iBinder);
                    if (c.this.f33801f != null) {
                        c.this.f33801f.a("Deviceid Service Connected", c.this);
                    }
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    c.this.f33798a = null;
                }
            };
            Intent intent = new Intent();
            intent.setClassName("org.repackage.com.zui.deviceidservice", "org.repackage.com.zui.deviceidservice.DeviceidService");
            return this.f33800e.bindService(intent, this.f33799d, 1) ? 1 : -1;
        }
        throw new NullPointerException("Context can not be null.");
    }

    public String a() {
        if (this.f33800e != null) {
            try {
                com.octopus.ad.c.d.a aVar = this.f33798a;
                if (aVar != null) {
                    return aVar.a();
                }
                return null;
            } catch (RemoteException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
    }
}
