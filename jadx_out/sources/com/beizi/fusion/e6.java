package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.coolpad.deviceidsupport.IDeviceIdManager;

/* loaded from: classes2.dex */
public class e6 implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13687a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IDeviceIdManager iDeviceIdManagerAsInterface = IDeviceIdManager.Stub.asInterface(iBinder);
            if (iDeviceIdManagerAsInterface != null) {
                return iDeviceIdManagerAsInterface.getOAID(e6.this.f13687a.getPackageName());
            }
            throw new vj("IDeviceIdManager is null");
        }
    }

    public e6(Context context) {
        if (context instanceof Application) {
            this.f13687a = context;
        } else {
            this.f13687a = context.getApplicationContext();
        }
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f13687a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f13687a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        fk.a(this.f13687a, intent, lcVar, new a());
    }
}
