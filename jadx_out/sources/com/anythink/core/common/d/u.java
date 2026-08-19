package com.anythink.core.common.d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.anythink.core.activity.AnyThinkGdprAuthActivity;
import com.anythink.core.api.ATGDPRAuthCallback;
import com.anythink.core.api.AdError;
import com.anythink.core.api.NetTrafficeCallback;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3077a = -100;

    /* renamed from: e, reason: collision with root package name */
    private static volatile u f3078e;

    /* renamed from: b, reason: collision with root package name */
    Context f3079b;

    /* renamed from: c, reason: collision with root package name */
    int f3080c;

    /* renamed from: d, reason: collision with root package name */
    private final String f3081d = u.class.getSimpleName();

    /* renamed from: f, reason: collision with root package name */
    private ConcurrentHashMap<Integer, Boolean> f3082f = new ConcurrentHashMap<>(5);

    public interface a extends NetTrafficeCallback {
        void a(boolean z2, boolean z3);
    }

    private u(Context context) {
        this.f3080c = 2;
        if (context != null) {
            this.f3079b = context.getApplicationContext();
            if (s.b().g() == null) {
                s.b().a(this.f3079b);
            }
        }
        this.f3080c = ad.b(this.f3079b, t.b.f3058a, t.a.f3047p, 2);
    }

    private int f() {
        return ad.b(this.f3079b, t.b.f3058a, t.a.f3055x, -100);
    }

    public final boolean b() {
        try {
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f3079b).b(s.b().p());
            if (bVarB != null && !bVarB.J()) {
                if (bVarB.Y() == 0) {
                    return true;
                }
                int iV = this.f3080c;
                if (bVarB.W() == 1) {
                    iV = bVarB.V();
                }
                return iV == 0;
            }
            return this.f3080c != 1;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean c() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f3079b).b(s.b().p());
        return (bVarB == null || bVarB.J()) ? this.f3080c != 1 : this.f3080c == 2 ? bVarB.Y() == 0 : bVarB.W() == 1 ? bVarB.V() == 0 : this.f3080c == 0 || bVarB.Y() == 0;
    }

    public final boolean d() {
        return ad.b(this.f3079b, t.b.f3058a, t.a.f3055x, -100) == 1;
    }

    public final int e() {
        return ad.b(this.f3079b, t.b.f3058a, t.a.f3056y, -100);
    }

    public static u a(Context context) {
        if (f3078e == null) {
            synchronized (u.class) {
                try {
                    if (f3078e == null) {
                        f3078e = new u(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3078e;
    }

    public final void a(int i2) {
        this.f3080c = i2;
        ad.a(this.f3079b, t.b.f3058a, t.a.f3047p, i2);
    }

    public final boolean b(int i2) {
        if (com.anythink.core.common.j.a.a().b()) {
            return com.anythink.core.common.j.a.a().a(this.f3079b, i2);
        }
        return c();
    }

    public final int a() {
        return this.f3080c;
    }

    public final boolean c(int i2) {
        return this.f3082f.get(Integer.valueOf(i2)) != null;
    }

    public final void a(final Context context, final ATGDPRAuthCallback aTGDPRAuthCallback) {
        s.b();
        s.b(new Runnable() { // from class: com.anythink.core.common.d.u.1
            @Override // java.lang.Runnable
            public final void run() {
                AnyThinkGdprAuthActivity.mCallback = aTGDPRAuthCallback;
                Intent intent = new Intent(context, (Class<?>) AnyThinkGdprAuthActivity.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
            }
        });
    }

    public final boolean b(int i2, boolean z2) {
        return this.f3082f.get(Integer.valueOf(i2)) == null || this.f3082f.get(Integer.valueOf(i2)).booleanValue() != z2;
    }

    public final void a(final int i2, final boolean z2) {
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.cX, new Runnable() { // from class: com.anythink.core.common.d.u.3
            @Override // java.lang.Runnable
            public final void run() {
                if (!u.this.c(i2) || u.this.b(i2, z2)) {
                    u uVarA = u.a(s.b().g());
                    com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
                    if (TextUtils.isEmpty(com.anythink.core.common.j.a.a().c())) {
                        if (uVarA.f3080c == 2 && bVarB.Y() == 1 && bVarB.L() == 0) {
                            com.anythink.core.common.u.f.a(1, uVarA.f3080c, bVarB.Y(), i2);
                        }
                        if (uVarA.f3080c == 1 && bVarB.W() == 0 && bVarB.Y() == 0) {
                            com.anythink.core.common.u.f.a(2, uVarA.f3080c, bVarB.Y(), i2);
                        }
                    } else {
                        com.anythink.core.common.u.f.a(3, !z2 ? 1 : 0, bVarB.Y(), i2);
                    }
                    u.this.f3082f.put(Integer.valueOf(i2), Boolean.valueOf(z2));
                }
            }
        }));
    }

    public final void a(final NetTrafficeCallback netTrafficeCallback, String str) {
        int iB = ad.b(this.f3079b, t.b.f3058a, t.a.f3055x, -100);
        int iE = e();
        if (iB == -100 || iE == -100) {
            new com.anythink.core.common.m.r(str).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.core.common.d.u.2
                @Override // com.anythink.core.common.m.s
                public final void onLoadCanceled(int i2) {
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadError(int i2, String str2, AdError adError) {
                    NetTrafficeCallback netTrafficeCallback2 = netTrafficeCallback;
                    if (netTrafficeCallback2 != null) {
                        netTrafficeCallback2.onErrorCallback(adError.printStackTrace());
                    }
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadFinish(int i2, Object obj) {
                    try {
                        if (!(obj instanceof JSONObject)) {
                            NetTrafficeCallback netTrafficeCallback2 = netTrafficeCallback;
                            if (netTrafficeCallback2 != null) {
                                netTrafficeCallback2.onErrorCallback("There is no result.");
                                return;
                            }
                            return;
                        }
                        JSONObject jSONObject = (JSONObject) obj;
                        if (!jSONObject.has("is_eu")) {
                            NetTrafficeCallback netTrafficeCallback3 = netTrafficeCallback;
                            if (netTrafficeCallback3 != null) {
                                netTrafficeCallback3.onErrorCallback("There is no result.");
                                return;
                            }
                            return;
                        }
                        int iOptInt = jSONObject.optInt("is_eu");
                        boolean z2 = true;
                        int iOptInt2 = jSONObject.optInt("pre_sw", 1);
                        NetTrafficeCallback netTrafficeCallback4 = netTrafficeCallback;
                        if (netTrafficeCallback4 != null) {
                            if (!(netTrafficeCallback4 instanceof a)) {
                                if (iOptInt != 1) {
                                    z2 = false;
                                }
                                netTrafficeCallback4.onResultCallback(z2);
                            } else {
                                a aVar = (a) netTrafficeCallback4;
                                boolean z3 = iOptInt == 1;
                                if (iOptInt2 != 1) {
                                    z2 = false;
                                }
                                aVar.a(z3, z2);
                            }
                        }
                    } catch (Throwable unused) {
                        NetTrafficeCallback netTrafficeCallback5 = netTrafficeCallback;
                        if (netTrafficeCallback5 != null) {
                            netTrafficeCallback5.onErrorCallback("Internal error");
                        }
                    }
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadStart(int i2) {
                }
            });
        } else if (netTrafficeCallback != null) {
            if (netTrafficeCallback instanceof a) {
                ((a) netTrafficeCallback).a(iB == 1, iE == 1);
            } else {
                netTrafficeCallback.onResultCallback(iB == 1);
            }
        }
    }
}
