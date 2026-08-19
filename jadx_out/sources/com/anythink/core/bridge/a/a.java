package com.anythink.core.bridge.a;

import android.os.Bundle;
import com.anythink.core.api.ATAdFilter;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.bridge.a.b.AnonymousClass4;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static int f1722a = 5;

    /* renamed from: b, reason: collision with root package name */
    public static int f1723b = 6;

    /* renamed from: c, reason: collision with root package name */
    public static int f1724c = 7;

    /* renamed from: e, reason: collision with root package name */
    private static volatile a f1725e;

    /* renamed from: d, reason: collision with root package name */
    private final String f1726d = a.class.getSimpleName();

    private a() {
    }

    public static a a() {
        if (f1725e == null) {
            synchronized (a.class) {
                try {
                    if (f1725e == null) {
                        f1725e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1725e;
    }

    public static void a(ATBaseAdAdapter aTBaseAdAdapter, int i2, String str) {
        if (aTBaseAdAdapter != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("format", str);
                by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
                if (unitGroupInfo != null) {
                    bundle.putInt(ATAdFilter.KEY_NETWORK_ID, unitGroupInfo.n());
                }
                c.a().a(new d(e.cd, b.a().new AnonymousClass4(i2, s.b().g(), bundle)));
            } catch (Throwable unused) {
            }
        }
    }
}
