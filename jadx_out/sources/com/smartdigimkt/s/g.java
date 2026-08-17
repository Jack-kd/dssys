package com.smartdigimkt.s;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.bun.miitmdid.content.StringValues;

/* loaded from: classes5.dex */
public abstract class g {
    public static void a(Context context) throws Exception {
        try {
            Intent intent = new Intent(StringValues.ACTION_START_MSASERVICE);
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
            intent.putExtra("com.bun.msa.param.runinset", true);
            if (Build.VERSION.SDK_INT < 26) {
                context.startService(intent);
            } else {
                context.startForegroundService(intent);
            }
        } catch (Exception e2) {
            throw new Exception(e2);
        }
    }
}
