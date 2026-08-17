package com.octopus.ad.d.a.b;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.d.a.a.a.d.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class b implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33969a;

    public b(Context context) {
        if (context instanceof Application) {
            this.f33969a = context;
        } else {
            this.f33969a = context.getApplicationContext();
        }
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33969a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33969a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        l.a(this.f33969a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.b.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.d.a.a aVarA = a.AbstractBinderC0734a.a(iBinder);
                if (aVarA != null) {
                    return aVarA.b(b.this.f33969a.getPackageName());
                }
                throw new com.octopus.ad.d.a.e("IDeviceIdManager is null");
            }
        });
    }
}
