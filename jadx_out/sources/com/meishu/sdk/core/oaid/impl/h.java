package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.zui.deviceidservice.a;

/* loaded from: classes4.dex */
public class h implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31695a;

    public class a implements m.a {
        public a(h hVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.zui.deviceidservice.a c0672a;
            int i2 = a.AbstractBinderC0671a.f31725a;
            if (iBinder == null) {
                c0672a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
                c0672a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.zui.deviceidservice.a)) ? new a.AbstractBinderC0671a.C0672a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.zui.deviceidservice.a) iInterfaceQueryLocalInterface;
            }
            if (c0672a == null) {
                throw new OAIDException("IDeviceidInterface is null");
            }
            if (c0672a.b()) {
                return c0672a.a();
            }
            throw new OAIDException("IDeviceidInterface#isSupport return false");
        }
    }

    public h(Context context) {
        this.f31695a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31695a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.zui.deviceidservice", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31695a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        m.a(this.f31695a, intent, aVar, new a(this));
    }
}
