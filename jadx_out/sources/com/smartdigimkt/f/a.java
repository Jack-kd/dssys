package com.smartdigimkt.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class a extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            intent.getAction();
            int intExtra = intent.getIntExtra("s", -1);
            int intExtra2 = intent.getIntExtra("a", 0);
            String stringExtra = intent.getStringExtra("d");
            Bundle bundleExtra = intent.getBundleExtra("b");
            Objects.toString(bundleExtra);
            switch (intExtra2) {
                case 1:
                    h hVarA = h.a();
                    if (!hVarA.f40142l) {
                        hVarA.f40142l = intExtra == 2;
                    }
                    if (context != null && !hVarA.f40133c.get()) {
                        hVarA.f40133c.set(true);
                        hVarA.f40141k = intExtra;
                        com.smartdigimkt.b4.e.a().a(new c(hVarA, context), 0L, 7);
                        return;
                    }
                    return;
                case 2:
                    h.a().a(context, intExtra, stringExtra);
                    return;
                case 3:
                    h hVarA2 = h.a();
                    hVarA2.getClass();
                    if (TextUtils.isEmpty(stringExtra)) {
                        return;
                    }
                    int i2 = hVarA2.f40141k;
                    if (intExtra == i2 || i2 == 0) {
                        synchronized (hVarA2.f40136f) {
                            try {
                                String strB = com.smartdigimkt.c5.d.b(stringExtra);
                                hVarA2.f40138h = strB;
                                hVarA2.f40139i.put("cp2", strB);
                            } catch (Throwable unused) {
                            }
                            hVarA2.a(context);
                        }
                        return;
                    }
                    return;
                case 4:
                    boolean zEquals = TextUtils.equals(stringExtra, "1");
                    h hVarA3 = h.a();
                    hVarA3.f40143m = zEquals;
                    com.smartdigimkt.b4.e.a().c(new d(hVarA3, zEquals));
                    return;
                case 5:
                case 6:
                case 7:
                    h hVarA4 = h.a();
                    hVarA4.getClass();
                    com.smartdigimkt.b4.e.a().c(new e(hVarA4, intExtra2, bundleExtra));
                    return;
                default:
                    return;
            }
        } catch (Throwable th) {
            Log.getStackTraceString(th);
        }
        Log.getStackTraceString(th);
    }
}
