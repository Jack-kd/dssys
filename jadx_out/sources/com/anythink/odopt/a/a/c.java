package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.anythink.odopt.a.a.l;

/* loaded from: classes2.dex */
public final class c implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private Context f10551a;

    /* renamed from: b, reason: collision with root package name */
    private com.anythink.odopt.a.a f10552b;

    public c(Context context) {
        this.f10551a = context;
    }

    public final void a(com.anythink.odopt.a.a aVar) {
        if (this.f10551a == null) {
            return;
        }
        try {
            this.f10552b = aVar;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
            if (this.f10551a.bindService(intent, this, 1)) {
                return;
            }
            aVar.a("Service binding failed.");
        } catch (Throwable th) {
            com.anythink.odopt.a.a aVar2 = this.f10552b;
            if (aVar2 != null) {
                aVar2.a(th.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            l lVarA = l.b.a(iBinder);
            if (lVarA != null) {
                this.f10552b.a(lVarA.a(this.f10551a.getPackageName()), false);
            } else {
                this.f10552b.a("CoolpadIdsSupplier == null");
            }
        } catch (Throwable th) {
            try {
                com.anythink.odopt.a.a aVar = this.f10552b;
                if (aVar != null) {
                    aVar.a(th.getMessage());
                }
                try {
                    this.f10551a.unbindService(this);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } finally {
                try {
                    this.f10551a.unbindService(this);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
