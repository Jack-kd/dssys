package com.czhj.devicehelper.cnoaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.czhj.devicehelper.cnoaid.com.coolpad.deviceidsupport.IDeviceIdManager;
import com.czhj.devicehelper.cnoaid.impl.n;

/* loaded from: classes3.dex */
public class b implements com.czhj.devicehelper.cnoaid.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f29125a;

    public b(Context context) {
        if (context instanceof Application) {
            this.f29125a = context;
        } else {
            this.f29125a = context.getApplicationContext();
        }
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29125a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        n.a(this.f29125a, intent, cVar, new n.a() { // from class: com.czhj.devicehelper.cnoaid.impl.b.1
            @Override // com.czhj.devicehelper.cnoaid.impl.n.a
            public String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
                IDeviceIdManager iDeviceIdManagerAsInterface = IDeviceIdManager.Stub.asInterface(iBinder);
                if (iDeviceIdManagerAsInterface != null) {
                    return iDeviceIdManagerAsInterface.getOAID(b.this.f29125a.getPackageName());
                }
                throw new com.czhj.devicehelper.cnoaid.f("IDeviceIdManager is null");
            }
        });
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        Context context = this.f29125a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            return false;
        }
    }
}
