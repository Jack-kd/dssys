package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.beizi.fusion.fk;
import com.beizi.fusion.sm.repeackage.com.bun.lib.MsaIdInterface;
import com.bun.miitmdid.content.StringValues;

/* loaded from: classes2.dex */
class gi implements zd {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14067a;

    public class a implements fk.a {
        public a() {
        }

        @Override // com.beizi.fusion.fk.a
        public String a(IBinder iBinder) {
            MsaIdInterface msaIdInterfaceAsInterface = MsaIdInterface.Stub.asInterface(iBinder);
            if (msaIdInterfaceAsInterface == null) {
                throw new vj("MsaIdInterface is null");
            }
            if (msaIdInterfaceAsInterface.isSupported()) {
                return msaIdInterfaceAsInterface.getOAID();
            }
            throw new vj("MsaIdInterface#isSupported return false");
        }
    }

    public gi(Context context) {
        this.f14067a = context;
    }

    private void b() {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f14067a.getPackageName());
            if (Build.VERSION.SDK_INT < 26) {
                this.f14067a.startService(intent);
            } else {
                this.f14067a.startForegroundService(intent);
            }
        } catch (Exception e2) {
            ak.a(e2);
        }
    }

    @Override // com.beizi.fusion.zd
    public boolean a() {
        Context context = this.f14067a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
        } catch (Exception e2) {
            ak.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.zd
    public void a(lc lcVar) {
        if (this.f14067a == null || lcVar == null) {
            return;
        }
        b();
        Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f14067a.getPackageName());
        fk.a(this.f14067a, intent, lcVar, new a());
    }
}
