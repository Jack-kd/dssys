package com.octopus.ad.d.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import com.bun.miitmdid.content.StringValues;
import com.octopus.ad.d.a.a.a.c.a.a;
import com.octopus.ad.d.a.b.l;

/* loaded from: classes4.dex */
public class i implements com.octopus.ad.d.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final Context f33981a;

    public i(Context context) {
        this.f33981a = context;
    }

    private void b() {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f33981a.getPackageName());
            if (Build.VERSION.SDK_INT < 26) {
                this.f33981a.startService(intent);
            } else {
                this.f33981a.startForegroundService(intent);
            }
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
        }
    }

    @Override // com.octopus.ad.d.a.d
    public boolean a() {
        Context context = this.f33981a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
        } catch (Exception e2) {
            com.octopus.ad.d.a.f.a(e2);
            return false;
        }
    }

    @Override // com.octopus.ad.d.a.d
    public void a(com.octopus.ad.d.a.c cVar) {
        if (this.f33981a == null || cVar == null) {
            return;
        }
        b();
        Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f33981a.getPackageName());
        l.a(this.f33981a, intent, cVar, new l.a() { // from class: com.octopus.ad.d.a.b.i.1
            @Override // com.octopus.ad.d.a.b.l.a
            public String a(IBinder iBinder) throws RemoteException, com.octopus.ad.d.a.e {
                com.octopus.ad.d.a.a.a.c.a.a aVarA = a.AbstractBinderC0732a.a(iBinder);
                if (aVarA == null) {
                    throw new com.octopus.ad.d.a.e("MsaIdInterface is null");
                }
                if (aVarA.a()) {
                    return aVarA.c();
                }
                throw new com.octopus.ad.d.a.e("MsaIdInterface#isSupported return false");
            }
        });
    }
}
