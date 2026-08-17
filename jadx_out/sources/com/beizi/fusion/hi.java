package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.beizi.fusion.ek;
import com.beizi.fusion.fi;
import com.bun.miitmdid.content.StringValues;

/* loaded from: classes2.dex */
class hi implements ae {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14313a;

    public class a implements ek.a {
        public a() {
        }

        @Override // com.beizi.fusion.ek.a
        public String a(IBinder iBinder) {
            fi fiVarA = fi.a.a(iBinder);
            if (fiVarA == null) {
                throw new wj("MsaIdInterface is null");
            }
            if (fiVarA.isSupported()) {
                return fiVarA.getOAID();
            }
            throw new wj("MsaIdInterface#isSupported return false");
        }
    }

    public hi(Context context) {
        this.f14313a = context;
    }

    private void b() {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f14313a.getPackageName());
            if (Build.VERSION.SDK_INT < 26) {
                this.f14313a.startService(intent);
            } else {
                this.f14313a.startForegroundService(intent);
            }
        } catch (Exception e2) {
            bk.a(e2);
        }
    }

    @Override // com.beizi.fusion.ae
    public boolean a() {
        Context context = this.f14313a;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo("com.mdid.msa", 0) != null;
        } catch (Exception e2) {
            bk.a(e2);
            return false;
        }
    }

    @Override // com.beizi.fusion.ae
    public void a(mc mcVar) {
        if (this.f14313a == null || mcVar == null) {
            return;
        }
        b();
        Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.f14313a.getPackageName());
        ek.a(this.f14313a, intent, mcVar, new a());
    }
}
