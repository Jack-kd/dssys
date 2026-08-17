package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLogger;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static final String f35577a = "BaseBroadcastReceiver";

    /* renamed from: b, reason: collision with root package name */
    private final String f35578b;

    public BaseBroadcastReceiver(String str) {
        this.f35578b = str;
    }

    private static aj b() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        return aj.a(contextE);
    }

    public abstract IntentFilter a();

    public void a(BroadcastReceiver broadcastReceiver) {
        aj ajVarB;
        if (broadcastReceiver == null || (ajVarB = b()) == null) {
            return;
        }
        try {
            ajVarB.a(broadcastReceiver, a());
        } catch (Exception e2) {
            SigmobLogger.e(f35577a, "register: error = " + e2.getMessage(), new Object[0]);
        }
    }

    public static void a(Context context, String str, String str2) {
        a(context, str, null, str2, 0);
    }

    public void b(BroadcastReceiver broadcastReceiver) {
        aj ajVarB;
        if (broadcastReceiver == null || (ajVarB = b()) == null) {
            return;
        }
        try {
            ajVarB.a(broadcastReceiver);
        } catch (Exception e2) {
            SigmobLogger.e(f35577a, "unregister: error = " + e2.getMessage(), new Object[0]);
        }
    }

    public static void a(Context context, String str, String str2, int i2) {
        a(context, str, null, str2, i2);
    }

    public static void a(Context context, String str, Map<String, Object> map, String str2) {
        a(context, str, map, str2, 0);
    }

    public static void a(Context context, String str, Map<String, Object> map, String str2, int i2) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(str2);
        Intent intent = new Intent(str2);
        intent.putExtra(Constants.BROADCAST_IDENTIFIER_KEY, str);
        if (com.sigmob.sdk.base.utils.f.b(map)) {
            for (String str3 : map.keySet()) {
                try {
                    Object obj = map.get(str3);
                    if (obj instanceof Number) {
                        intent.putExtra(str3, (Number) obj);
                    } else {
                        intent.putExtra(str3, (String) obj);
                    }
                } catch (Throwable th) {
                    SigmobLogger.e(f35577a, "broadcastAction: error = " + th.getMessage(), new Object[0]);
                }
            }
        }
        aj ajVarB = b();
        if (ajVarB == null) {
            return;
        }
        try {
            ajVarB.a(intent, i2);
        } catch (Exception e2) {
            SigmobLogger.e(f35577a, "broadcastAction: error = " + e2.getMessage(), new Object[0]);
        }
    }

    public boolean a(Intent intent) {
        Preconditions.NoThrow.checkNotNull(intent);
        String stringExtra = intent.getStringExtra(Constants.BROADCAST_IDENTIFIER_KEY);
        return com.sigmob.sdk.base.utils.s.b(stringExtra) && stringExtra.equalsIgnoreCase(this.f35578b);
    }
}
