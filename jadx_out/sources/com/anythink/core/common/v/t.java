package com.anythink.core.common.v;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.by;
import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    protected static t f8305a = new t();

    /* renamed from: b, reason: collision with root package name */
    protected static final String f8306b = j.b(com.anythink.core.common.d.i.f2493C);

    /* renamed from: c, reason: collision with root package name */
    protected static final String f8307c = af.b(com.anythink.core.common.d.i.f2494D);

    /* renamed from: d, reason: collision with root package name */
    private static volatile JSONObject f8308d = null;

    /* renamed from: e, reason: collision with root package name */
    private static final Map<String, Constructor<?>> f8309e = new ConcurrentHashMap();

    /* renamed from: f, reason: collision with root package name */
    private static final Map<String, com.anythink.core.common.h.p> f8310f = new ConcurrentHashMap();

    private static boolean a(int i2) {
        return 6 == i2;
    }

    public static com.anythink.core.common.h.p b(by byVar) {
        try {
            String strT = byVar.t();
            String strG = byVar.G();
            Map<String, com.anythink.core.common.h.p> map = f8310f;
            com.anythink.core.common.h.p pVar = map.get(strG + "_" + strT);
            if (pVar != null) {
                return pVar;
            }
            com.anythink.core.common.h.p pVarA = a(byVar);
            if (pVarA != null) {
                map.put(strG + "_" + strT, pVarA);
            }
            return pVarA;
        } catch (Throwable th) {
            return new com.anythink.core.common.h.p(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.anythink.core.common.h.p d(by byVar) {
        ATBaseAdAdapter aTBaseAdAdapterA;
        int iInternalBaseOnAdapterBridgeVersion;
        int requireAdapterBridgeVersion;
        try {
            String strB = 6 == byVar.n() ? b(byVar.t()) : "";
            if (TextUtils.isEmpty(strB)) {
                aTBaseAdAdapterA = null;
            } else {
                try {
                    aTBaseAdAdapterA = a(a(byVar, strB));
                } catch (Throwable unused) {
                }
            }
            if (aTBaseAdAdapterA == null) {
                aTBaseAdAdapterA = a(a(byVar, byVar.t()));
            }
            if (aTBaseAdAdapterA == null || byVar.n() >= 100000 || (iInternalBaseOnAdapterBridgeVersion = aTBaseAdAdapterA.internalBaseOnAdapterBridgeVersion()) == (requireAdapterBridgeVersion = ATSDK.getRequireAdapterBridgeVersion())) {
                try {
                    l.a(byVar.n(), aTBaseAdAdapterA.getInternalNetworkSDKVersion());
                } catch (Throwable unused2) {
                }
                return new com.anythink.core.common.h.p(aTBaseAdAdapterA);
            }
            com.anythink.core.common.h.p pVar = new com.anythink.core.common.h.p(new Exception(String.format("Adapter Bridge version (%s) does not match SDK required version (%s).", Integer.valueOf(iInternalBaseOnAdapterBridgeVersion), Integer.valueOf(requireAdapterBridgeVersion))));
            pVar.a(ErrorCode.adapterBridgeVersionError);
            return pVar;
        } catch (Throwable th) {
            return new com.anythink.core.common.h.p(th);
        }
    }

    private static com.anythink.core.common.h.p e(final by byVar) {
        final com.anythink.core.common.h.p[] pVarArr = new com.anythink.core.common.h.p[1];
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
            if (rVarC != null) {
                rVarC.addPlLoadStateListener(new com.anythink.core.common.k.d() { // from class: com.anythink.core.common.v.t.1
                    @Override // com.anythink.core.common.k.d
                    public final void a() {
                        pVarArr[0] = t.d(byVar);
                        countDownLatch.countDown();
                    }
                });
            }
            try {
                countDownLatch.await(2000L, TimeUnit.MILLISECONDS);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            th = null;
        } catch (Throwable th) {
            th = th;
            th.printStackTrace();
        }
        com.anythink.core.common.h.p pVar = pVarArr[0];
        return pVar == null ? new com.anythink.core.common.h.p(th) : pVar;
    }

    public static ATBaseAdAdapter a(String str) throws NoSuchMethodException, SecurityException {
        if (str == null) {
            return null;
        }
        Map<String, Constructor<?>> map = f8309e;
        Constructor<?> declaredConstructor = map.get(str);
        if (declaredConstructor == null) {
            declaredConstructor = Class.forName(str).asSubclass(ATBaseAdAdapter.class).getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            map.put(str, declaredConstructor);
        }
        return (ATBaseAdAdapter) declaredConstructor.newInstance(null);
    }

    private static String b(String str) {
        try {
            String strB = b();
            String[] strArrSplit = str.replace(strB + com.anythink.core.common.d.i.f2495E, "").split("\\.");
            if (strArrSplit != null && strArrSplit.length > 1) {
                String str2 = strArrSplit[strArrSplit.length - 1];
                String str3 = f8307c;
                String str4 = f8306b;
                Locale locale = Locale.ENGLISH;
                return strB + com.anythink.core.common.d.i.f2495E + strArrSplit[0] + com.anythink.core.common.d.i.f2495E + str4.toLowerCase(locale) + com.anythink.core.common.d.i.f2495E + str2.replace(str3, str4.toUpperCase(locale));
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static com.anythink.core.common.h.p a(by byVar) {
        com.anythink.core.common.h.p pVarD;
        com.anythink.core.common.d.r rVarC;
        if (ATSDK.isCnSDK()) {
            int iN = byVar.n();
            if (iN == 46) {
                return e(byVar);
            }
            if (iN > 100000) {
                String strT = byVar.t();
                if (!TextUtils.isEmpty(strT) && (rVarC = com.anythink.core.common.d.s.b().c()) != null && rVarC.isContainsPlStr(strT)) {
                    return e(byVar);
                }
                pVarD = null;
            } else {
                pVarD = d(byVar);
            }
        } else {
            pVarD = d(byVar);
        }
        return pVarD == null ? d(byVar) : pVarD;
    }

    private static String b() {
        String[] strArrSplit = t.class.getPackage().getName().split("\\.");
        if (strArrSplit != null) {
            try {
                if (strArrSplit.length > 1) {
                    return strArrSplit[0] + com.anythink.core.common.d.i.f2495E + strArrSplit[1];
                }
                return "";
            } catch (Throwable unused) {
                return "";
            }
        }
        return "";
    }

    public static void a() {
        if (f8308d == null) {
            synchronized (t.class) {
                try {
                    if (f8308d == null) {
                        try {
                            Context contextG = com.anythink.core.common.d.s.b().g();
                            int iA = p.a(contextG, "common_custom_data", "string");
                            if (iA > 0) {
                                String string = contextG.getResources().getString(iA);
                                if (!TextUtils.isEmpty(string)) {
                                    f8308d = new JSONObject(string);
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    if (f8308d == null) {
                        f8308d = new JSONObject();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static String a(by byVar, String str) {
        if (byVar.n() >= 100000) {
            return str;
        }
        a();
        if (f8308d != null && f8308d.length() > 0) {
            Iterator<String> itKeys = f8308d.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                str = str.replaceAll(next, f8308d.optString(next));
            }
        }
        byVar.d(str);
        return str;
    }

    private static void a(by byVar, ATBaseAdAdapter aTBaseAdAdapter) {
        try {
            l.a(byVar.n(), aTBaseAdAdapter.getInternalNetworkSDKVersion());
        } catch (Throwable unused) {
        }
    }

    private static String a(int i2, String str) {
        if (6 == i2) {
            return b(str);
        }
        return "";
    }
}
