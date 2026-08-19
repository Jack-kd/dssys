package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.anythink.core.common.v.o;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a;

/* loaded from: classes4.dex */
public class f implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31692a;

    public class a implements m.a {
        public a(f fVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a c0666a;
            int i2 = a.AbstractBinderC0665a.f31719a;
            if (iBinder == null) {
                c0666a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                c0666a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a)) ? new a.AbstractBinderC0665a.C0666a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.google.android.gms.ads.identifier.internal.a) iInterfaceQueryLocalInterface;
            }
            c0666a.a(true);
            return c0666a.c();
        }
    }

    public f(Context context) {
        this.f31692a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31692a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo(o.a.f8258a, 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31692a == null || aVar == null) {
            return;
        }
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        m.a(this.f31692a, intent, aVar, new a(this));
    }
}
