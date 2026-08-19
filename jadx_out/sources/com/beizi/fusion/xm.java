package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.samsung.android.deviceidservice.IDeviceIdService;

/* loaded from: classes2.dex */
class xm implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f17470a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IDeviceIdService iDeviceIdServiceAsInterface = IDeviceIdService.Stub.asInterface(iBinder);
            if (iDeviceIdServiceAsInterface != null) {
                return iDeviceIdServiceAsInterface.getOAID();
            }
            throw new vj("IDeviceIdService is null");
        }
    }

    public xm(Context context) {
        this.f17470a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f17470a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f17470a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        fk.a(this.f17470a, intent, lcVar, new a());
    }
}
