package com.anythink.core.common.v;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.util.SparseBooleanArray;
import com.anythink.core.common.v.ab;
import java.util.List;

/* loaded from: classes2.dex */
public class ae {

    /* renamed from: a, reason: collision with root package name */
    private static final int f8033a = 1;

    /* renamed from: b, reason: collision with root package name */
    private static final int f8034b = 2;

    /* renamed from: c, reason: collision with root package name */
    private static final int f8035c = 3;

    /* renamed from: e, reason: collision with root package name */
    private static volatile ae f8036e;

    /* renamed from: d, reason: collision with root package name */
    private final SparseBooleanArray f8037d = new SparseBooleanArray(3);

    public static ae a() {
        if (f8036e == null) {
            synchronized (ae.class) {
                try {
                    if (f8036e == null) {
                        f8036e = new ae();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8036e;
    }

    public final synchronized boolean b(Context context) {
        if (this.f8037d.indexOfKey(2) >= 0) {
            return this.f8037d.get(2);
        }
        boolean z2 = false;
        try {
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices != null) {
                if (listQueryIntentServices.size() > 0) {
                    z2 = true;
                }
            }
        } catch (Exception unused) {
        }
        this.f8037d.put(2, z2);
        return z2;
    }

    public final synchronized boolean a(Context context) {
        if (this.f8037d.indexOfKey(1) >= 0) {
            return this.f8037d.get(1);
        }
        boolean z2 = false;
        try {
            ab abVar = new ab(context);
            ab.a aVarA = abVar.a("com.huawei.hwid");
            String strB = abVar.b("com.huawei.hwid");
            if (aVarA == ab.a.ENABLED) {
                if ("B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05".equalsIgnoreCase(strB)) {
                    z2 = true;
                }
            }
        } catch (Exception unused) {
        }
        this.f8037d.put(1, z2);
        return z2;
    }

    public final synchronized boolean b() {
        boolean z2;
        if (this.f8037d.indexOfKey(3) >= 0) {
            return this.f8037d.get(3);
        }
        try {
            Class.forName("com.tencent.mm.opensdk.openapi.WXAPIFactory");
            z2 = true;
        } catch (Exception unused) {
            z2 = false;
        }
        this.f8037d.put(3, z2);
        return z2;
    }
}
