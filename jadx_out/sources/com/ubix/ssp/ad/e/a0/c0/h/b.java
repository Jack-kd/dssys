package com.ubix.ssp.ad.e.a0.c0.h;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.e.a;

/* loaded from: classes5.dex */
public class b implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46154a;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.e.a aVarA = a.AbstractBinderC0803a.a(iBinder);
            if (aVarA != null) {
                return aVarA.e(b.this.f46154a.getPackageName());
            }
            throw new com.ubix.ssp.ad.e.a0.c0.e("IDeviceIdManager is null");
        }
    }

    public b(Context context) {
        if (context instanceof Application) {
            this.f46154a = context;
        } else {
            this.f46154a = context.getApplicationContext();
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46154a == null || cVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        m.a(this.f46154a, intent, cVar, new a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46154a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
