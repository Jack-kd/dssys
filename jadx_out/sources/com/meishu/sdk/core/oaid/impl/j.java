package com.meishu.sdk.core.oaid.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.bun.miitmdid.content.StringValues;
import com.meishu.sdk.core.oaid.OAIDException;
import com.meishu.sdk.core.oaid.impl.m;
import com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a;

/* loaded from: classes4.dex */
public class j implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31697a;

    public class a implements m.a {
        public a(j jVar) {
        }

        @Override // com.meishu.sdk.core.oaid.impl.m.a
        public String a(IBinder iBinder) throws OAIDException, RemoteException {
            com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a c0662a;
            int i2 = a.AbstractBinderC0661a.f31715a;
            if (iBinder == null) {
                c0662a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
                c0662a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a)) ? new a.AbstractBinderC0661a.C0662a(iBinder) : (com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a) iInterfaceQueryLocalInterface;
            }
            if (c0662a == null) {
                throw new OAIDException("MsaIdInterface is null");
            }
            if (c0662a.d()) {
                return c0662a.a();
            }
            throw new OAIDException("MsaIdInterface#isSupported return false");
        }
    }

    public j(Context context) {
        this.f31697a = context;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        Context context = this.f31697a;
        if (context == null) {
            return false;
        }
        return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31697a == null || aVar == null) {
            return;
        }
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f31697a.getPackageName());
            if (Build.VERSION.SDK_INT >= 26) {
                this.f31697a.startForegroundService(intent);
            } else {
                this.f31697a.startService(intent);
            }
        } catch (Exception unused) {
        }
        Intent intent2 = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent2.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent2.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f31697a.getPackageName());
        m.a(this.f31697a, intent2, aVar, new a(this));
    }
}
