package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.zui.deviceidservice.IDeviceidInterface;

/* loaded from: classes2.dex */
class dh implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f13425a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            IDeviceidInterface iDeviceidInterfaceAsInterface = IDeviceidInterface.Stub.asInterface(iBinder);
            if (iDeviceidInterfaceAsInterface == null) {
                throw new vj("IDeviceidInterface is null");
            }
            if (iDeviceidInterfaceAsInterface.isSupport()) {
                return iDeviceidInterfaceAsInterface.getOAID();
            }
            throw new vj("IDeviceidInterface#isSupport return false");
        }
    }

    public dh(Context context) {
        this.f13425a = context;
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f13425a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f13425a == null || lcVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        fk.a(this.f13425a, intent, lcVar, new a());
    }
}
