package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.android.creator.a;

/* loaded from: classes4.dex */
public class e implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31691a;

    public class a implements m.a {
        public a(e eVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.android.creator.a c0658a;
            int i2 = a.AbstractBinderC0657a.f31711a;
            if (iBinder == null) {
                c0658a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.IdsSupplier");
                c0658a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.android.creator.a)) ? new a.AbstractBinderC0657a.C0658a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.android.creator.a) iInterfaceQueryLocalInterface;
            }
            if (c0658a != null) {
                return c0658a.a();
            }
            throw new OAIDException("IdsSupplier is null");
        }
    }

    public e(Context context) {
        this.f31691a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31691a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.android.creator", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31691a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("android.service.action.msa");
        intent.setPackage("com.android.creator");
        m.a(this.f31691a, intent, aVar, new a(this));
    }
}
