package com.anythink.core.e;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    private static final String f9004a = "PlaceStrategySaver";

    /* renamed from: b, reason: collision with root package name */
    private final Context f9005b;

    /* renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<String, m> f9006c = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<String, m> f9007d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap<String, m> f9008e = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, Integer> f9009f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private final ConcurrentHashMap<String, Integer> f9010g = new ConcurrentHashMap<>();

    public q(Context context) {
        this.f9005b = context;
    }

    private m e(String str, String str2) {
        return a(str, str2, true);
    }

    private boolean f(String str, String str2) {
        return a(str, str2, 0) != null;
    }

    public final boolean b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return this.f9009f.get(sb.toString()) == null;
    }

    public final void c(String str, String str2) {
        String str3 = str + str2;
        Integer num = this.f9009f.get(str3);
        if (num == null) {
            this.f9009f.put(str3, 1);
        } else {
            this.f9009f.put(str3, Integer.valueOf(num.intValue() + 1));
        }
    }

    public final int d(String str, String str2) {
        String str3 = str + str2;
        ConcurrentHashMap<String, Integer> concurrentHashMap = this.f9009f;
        Integer num = concurrentHashMap != null ? concurrentHashMap.get(str3) : null;
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public final void a(String str, String str2, m mVar, final JSONObject jSONObject, int i2) {
        final boolean z2;
        if (this.f9005b == null || mVar == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        final String str3 = str + str2;
        if (i2 == 1) {
            this.f9008e.put(str3, mVar);
            return;
        }
        if (i2 == 2) {
            this.f9006c.put(str3, mVar);
            z2 = true;
        } else {
            this.f9007d.put(str3, mVar);
            z2 = false;
        }
        if (mVar.E() != 1 && !mVar.br()) {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bZ, new Runnable() { // from class: com.anythink.core.e.q.1
                @Override // java.lang.Runnable
                public final void run() {
                    JSONObject jSONObject2 = jSONObject;
                    ad.b(q.this.f9005b, t.b.f3058a, q.b(str3, z2), jSONObject2 == null ? "" : jSONObject2.toString());
                }
            }));
        } else if (com.anythink.core.common.d.s.b().P()) {
            Log.e("anythink", "PreInitNetwork may affect DebuggerMode.It is recommended to disable PreInitNetwork first and then setDebuggerMode.");
        }
    }

    public final void b(String str, String str2, int i2) {
        String str3 = str + str2;
        if (i2 == 1) {
            this.f9008e.remove(str3);
            return;
        }
        if (i2 == 2) {
            this.f9006c.remove(str3);
        }
        if (i2 == 0) {
            this.f9007d.remove(str3);
        }
        ad.a(this.f9005b, t.b.f3058a, b(str3, i2 == 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, boolean z2) {
        return str + "_" + (z2 ? t.a.f3045n : t.a.f3044m);
    }

    public final void a(String str, int i2) {
        this.f9010g.put(str, Integer.valueOf(i2));
    }

    public final m a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        int i2 = this.f9009f.get(sb.toString()) == null ? 2 : 0;
        m mVarA = a(str, str2, i2);
        if (mVarA == null && i2 == 2) {
            return a(str, str2, 0);
        }
        return mVarA == null ? a(str, str2, 2) : mVarA;
    }

    public final m a(String str, String str2, boolean z2) {
        m mVarA;
        Integer num = this.f9010g.get(str2);
        int iIntValue = num == null ? 0 : num.intValue();
        return (iIntValue != 1 || (mVarA = a(str, str2, 0, z2)) == null) ? a(str, str2, iIntValue, z2) : mVarA;
    }

    public final m a(String str, String str2, int i2) {
        return a(str, str2, i2, true);
    }

    public final m a(String str, String str2, int i2, boolean z2) {
        ConcurrentHashMap<String, m> concurrentHashMap;
        while (true) {
            String str3 = str + str2;
            if (i2 == 1) {
                concurrentHashMap = this.f9008e;
            } else if (i2 == 2) {
                concurrentHashMap = this.f9006c;
            } else {
                concurrentHashMap = this.f9007d;
            }
            m mVar = concurrentHashMap.get(str3);
            if (mVar == null) {
                if (i2 != 1) {
                    boolean z3 = i2 == 2;
                    if (z2) {
                        String strC = ad.c(this.f9005b, t.b.f3058a, b(str3, z3), "");
                        if (!TextUtils.isEmpty(strC)) {
                            Looper.getMainLooper();
                            Looper.myLooper();
                            try {
                                m mVarA = m.a(str2, new JSONObject(strC));
                                if (mVarA != null) {
                                    if (mVarA.bc() == 1 && !mVarA.bm()) {
                                        mVarA.e(1);
                                    }
                                    mVarA.a(i2);
                                    concurrentHashMap.put(str3, mVarA);
                                    return mVarA;
                                }
                            } catch (Throwable unused) {
                            }
                        } else {
                            if (!z3) {
                                break;
                            }
                            z2 = true;
                            i2 = 0;
                        }
                    } else {
                        if (!z3) {
                            return null;
                        }
                        i2 = 0;
                        z2 = false;
                    }
                } else {
                    return null;
                }
            } else {
                return mVar;
            }
        }
        return null;
    }
}
