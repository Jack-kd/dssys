package com.anythink.odopt.a.a.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.anythink.odopt.a.a.a.b;
import com.anythink.odopt.a.a.a.d;
import com.bun.miitmdid.content.StringValues;

/* loaded from: classes2.dex */
public final class c {
    public final void a(Context context, com.anythink.odopt.a.a aVar) {
        boolean zA;
        try {
            zA = a(context);
        } catch (Exception e2) {
            aVar.a(e2.getMessage());
            zA = false;
        }
        if (zA) {
            Intent intent = new Intent(StringValues.ACTION_BINDTO_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
            d.a(context, intent, aVar, new d.a() { // from class: com.anythink.odopt.a.a.a.c.1
                @Override // com.anythink.odopt.a.a.a.d.a
                public final String a(IBinder iBinder) {
                    b bVarA = b.AbstractBinderC0118b.a(iBinder);
                    if (bVarA == null) {
                        throw new RuntimeException("MsaIdInterface is null");
                    }
                    if (bVarA.a()) {
                        return bVarA.c();
                    }
                    throw new RuntimeException("MsaIdInterface#isSupported return false");
                }
            });
        }
    }

    private static boolean a(Context context) throws Exception {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
            intent.putExtra("com.bun.msa.param.runinset", true);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
            return true;
        } catch (Exception e2) {
            throw new Exception(e2);
        }
    }
}
