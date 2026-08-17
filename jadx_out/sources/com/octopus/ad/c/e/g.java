package com.octopus.ad.c.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class g extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean zEquals;
        if (context == null || intent == null) {
            return;
        }
        boolean zContains = false;
        int intExtra = intent.getIntExtra("openIdNotifyFlag", 0);
        if (intExtra == 1) {
            zEquals = TextUtils.equals(intent.getStringExtra("openIdPackage"), context.getPackageName());
        } else {
            if (intExtra == 2) {
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("openIdPackageList");
                if (stringArrayListExtra != null) {
                    zContains = stringArrayListExtra.contains(context.getPackageName());
                }
            } else if (intExtra == 0) {
                zContains = true;
            }
            zEquals = zContains;
        }
        if (zEquals) {
            String stringExtra = intent.getStringExtra("openIdType");
            d dVarA = d.a();
            b bVar = "oaid".equals(stringExtra) ? dVarA.f33811b : "vaid".equals(stringExtra) ? dVarA.f33812c : "aaid".equals(stringExtra) ? dVarA.f33813d : "udid".equals(stringExtra) ? dVarA.f33810a : null;
            if (bVar == null) {
                return;
            }
            bVar.b();
        }
    }
}
