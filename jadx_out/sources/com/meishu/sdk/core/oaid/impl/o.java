package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a;

/* loaded from: classes4.dex */
public class o implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31706a;

    public class a implements m.a {
        public a(o oVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a c0670a;
            int i2 = a.AbstractBinderC0669a.f31723a;
            if (iBinder == null) {
                c0670a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService");
                c0670a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a)) ? new a.AbstractBinderC0669a.C0670a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a) iInterfaceQueryLocalInterface;
            }
            if (c0670a != null) {
                return c0670a.a();
            }
            throw new OAIDException("IDeviceIdService is null");
        }
    }

    public o(Context context) {
        this.f31706a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31706a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.samsung.android.deviceidservice", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31706a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        m.a(this.f31706a, intent, aVar, new a(this));
    }
}
