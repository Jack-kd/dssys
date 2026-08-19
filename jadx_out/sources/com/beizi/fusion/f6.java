package com.beizi.fusion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.ek;
import com.beizi.fusion.yb;

/* loaded from: classes2.dex */
public class f6 implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13848a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            yb ybVarA = yb.a.a(iBinder);
            if (ybVarA != null) {
                return ybVarA.getOAID(f6.this.f13848a.getPackageName());
            }
            throw new wj("IDeviceIdManager is null");
        }
    }

    public f6(Context context) {
        if (context instanceof Application) {
            this.f13848a = context;
        } else {
            this.f13848a = context.getApplicationContext();
        }
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f13848a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f13848a == null || mcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        ek.a(this.f13848a, intent, mcVar, new a());
    }
}
