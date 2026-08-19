package com.ubix.ssp.ad.e.a0.c0.h;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.bun.miitmdid.content.StringValues;
import com.ubix.ssp.ad.e.a0.c0.h.m;
import com.ubix.ssp.ad.e.a0.c0.i.f.a;

/* loaded from: classes5.dex */
class j implements com.ubix.ssp.ad.e.a0.c0.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f46176a;

    public class a implements m.a {
        public a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.c0.h.m.a
        public String a(IBinder iBinder) {
            com.ubix.ssp.ad.e.a0.c0.i.f.a aVarA = a.AbstractBinderC0805a.a(iBinder);
            if (aVarA == null) {
                throw new com.ubix.ssp.ad.e.a0.c0.e("MsaIdInterface is null");
            }
            if (aVarA.d()) {
                return aVarA.a();
            }
            throw new com.ubix.ssp.ad.e.a0.c0.e("MsaIdInterface#isSupported return false");
        }
    }

    public j(Context context) {
        this.f46176a = context;
    }

    private void b() {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f46176a.getPackageName());
            if (Build.VERSION.SDK_INT < 26) {
                this.f46176a.startService(intent);
            } else {
                this.f46176a.startForegroundService(intent);
            }
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
        }
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public void a(com.ubix.ssp.ad.e.a0.c0.c cVar) {
        if (this.f46176a == null || cVar == null) {
            return;
        }
        b();
        Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f46176a.getPackageName());
        m.a(this.f46176a, intent, cVar, new a());
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.d
    public boolean a() {
        Context context = this.f46176a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
        } catch (Exception e2) {
            com.ubix.ssp.ad.e.a0.c0.f.a(e2);
            return false;
        }
    }
}
