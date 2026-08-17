package com.meishu.sdk.core.oaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a;

/* loaded from: classes4.dex */
public class b implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31687a;

    public class a implements m.a {
        public a() {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a c0664a;
            int i2 = a.AbstractBinderC0663a.f31717a;
            if (iBinder == null) {
                c0664a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                c0664a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a)) ? new a.AbstractBinderC0663a.C0664a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a) iInterfaceQueryLocalInterface;
            }
            if (c0664a != null) {
                return c0664a.a(b.this.f31687a.getPackageName());
            }
            throw new OAIDException("IDeviceIdManager is null");
        }
    }

    public b(Context context) {
        if (context instanceof Application) {
            this.f31687a = context;
        } else {
            this.f31687a = context.getApplicationContext();
        }
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31687a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31687a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
        m.a(this.f31687a, intent, aVar, new a());
    }
}
