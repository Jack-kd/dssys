package com.octopus.ad.d.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.octopus.ad.d.a.a.a.h.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class g implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33978a;

    public g(Context context) {
        this.f33978a = context;
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33978a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33978a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        l.a(this.f33978a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.g.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.h.a.a aVarA = a.AbstractBinderC0742a.a(iBinder);
                if (aVarA == null) {
                    throw new com.octopus.ad.d.a.e("IDeviceidInterface is null");
                }
                if (aVarA.c()) {
                    return aVarA.a();
                }
                throw new com.octopus.ad.d.a.e("IDeviceidInterface#isSupport return false");
            }
        });
    }
}
