package com.anythink.core.common.m.c;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.ad;
import com.anythink.core.common.v.p;
import java.util.Map;

/* loaded from: classes2.dex */
public final class b extends d {

    /* renamed from: e, reason: collision with root package name */
    private static final String f5655e = "AppReqCapInterceptor";

    /* renamed from: f, reason: collision with root package name */
    private static final long f5656f = 24;

    /* renamed from: g, reason: collision with root package name */
    private static final long f5657g = 86400000;

    /* renamed from: h, reason: collision with root package name */
    private volatile boolean f5658h;

    /* renamed from: i, reason: collision with root package name */
    private volatile long f5659i;

    /* renamed from: j, reason: collision with root package name */
    private volatile long f5660j;

    public b(Context context) {
        super(context);
        this.f5658h = false;
        this.f5659i = 0L;
        this.f5660j = 0L;
    }

    private boolean a(String str) {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f5665b).b(s.b().p());
        if (this.f5665b == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return (bVarB == null || !bVarB.j()) && p.a(this.f5665b);
    }

    private void d(com.anythink.core.common.m.b.d dVar) {
        try {
            com.anythink.core.common.s.a aVarC = ad.c(this.f5665b, "anythink_app_pl_cl_retry");
            String strA = dVar.a();
            String strC = c(dVar);
            String strC2 = c(strA);
            String strB = b(strA);
            this.f5666c.put(strC, 0L);
            aVarC.a(strC, (String) 0L);
            aVarC.a(strC2, (String) Long.valueOf(f5656f));
            aVarC.a(strB, (String) 0L);
        } catch (Throwable unused) {
        }
    }

    private static String e(String str) {
        return str + "_agent_event";
    }

    @Override // com.anythink.core.common.m.c.d
    public final boolean b(com.anythink.core.common.m.b.d dVar) {
        return this.f5665b != null && dVar != null && "app_strategy".equals(dVar.b()) && a(dVar.a());
    }

    @Override // com.anythink.core.common.m.c.d
    public final String c(com.anythink.core.common.m.b.d dVar) {
        if (dVar == null) {
            return "";
        }
        return dVar.a() + "_req_next_time";
    }

    private static String c(String str) {
        return str + "_req_count_limit";
    }

    private static String b(String str) {
        return str + "_req_count";
    }

    private long a(com.anythink.core.common.s.a aVar, String str) {
        long j2 = this.f5659i;
        return j2 <= 0 ? ((Long) aVar.b(str, 0L)).longValue() : j2;
    }

    @Override // com.anythink.core.common.m.c.d, com.anythink.core.common.m.c.i
    public final com.anythink.core.common.m.b.f a(com.anythink.core.common.m.b.d dVar) {
        long jLongValue;
        if (!b(dVar)) {
            return null;
        }
        String strA = dVar.a();
        String strC = c(dVar);
        String strB = b(strA);
        String strC2 = c(strA);
        String str = strA + "_req_first_timestamp";
        try {
            com.anythink.core.common.m.b.f fVarA = super.a(dVar);
            if (fVarA == null) {
                return null;
            }
            try {
                synchronized (this.f5667d) {
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        com.anythink.core.common.s.a aVarC = ad.c(this.f5665b, "anythink_app_pl_cl_retry");
                        long jLongValue2 = ((Long) aVarC.b(strC2, Long.valueOf(f5656f))).longValue();
                        if (!fVarA.e()) {
                            long jLongValue3 = this.f5659i;
                            if (jLongValue3 <= 0) {
                                jLongValue3 = ((Long) aVarC.b(str, 0L)).longValue();
                            }
                            this.f5659i = jLongValue3;
                            if (this.f5659i > 0 && jCurrentTimeMillis - this.f5659i < 86400000) {
                                jLongValue = ((Long) aVarC.b(strB, 0L)).longValue();
                            } else {
                                this.f5659i = jCurrentTimeMillis;
                                aVarC.a(str, (String) Long.valueOf(jCurrentTimeMillis));
                                jLongValue = 0;
                            }
                            long j2 = 1;
                            if (jLongValue >= jLongValue2 - 1) {
                                long j3 = this.f5659i + 86400000;
                                Map<String, Long> map = this.f5666c;
                                if (map != null) {
                                    map.put(strC, Long.valueOf(j3));
                                }
                                long j4 = jLongValue2 / 4;
                                if (j4 > 1) {
                                    j2 = j4;
                                }
                                aVarC.a(strC2, (String) Long.valueOf(j2));
                                aVarC.a(strC, (String) Long.valueOf(j3));
                            } else {
                                long j5 = jLongValue + 1;
                                this.f5660j = j5;
                                aVarC.a(strB, (String) Long.valueOf(j5));
                            }
                        } else if (!this.f5658h) {
                            this.f5658h = true;
                            String str2 = strA + "_agent_event";
                            if (!((Boolean) aVarC.b(str2, Boolean.FALSE)).booleanValue()) {
                                com.anythink.core.common.u.f.a(this.f5659i, this.f5660j, jLongValue2);
                                aVarC.a(str2, (String) Boolean.TRUE);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return fVarA;
            } catch (Throwable unused) {
                return fVarA;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    private static String d(String str) {
        return str + "_req_first_timestamp";
    }

    @Override // com.anythink.core.common.m.c.i
    public final void a(com.anythink.core.common.m.b.f fVar, com.anythink.core.common.m.b.d dVar) {
        if (!b(dVar) || fVar == null) {
            return;
        }
        synchronized (this.f5667d) {
            try {
                com.anythink.core.common.s.a aVarC = ad.c(this.f5665b, "anythink_app_pl_cl_retry");
                String strA = dVar.a();
                String strC = c(dVar);
                String strC2 = c(strA);
                String strB = b(strA);
                this.f5666c.put(strC, 0L);
                aVarC.a(strC, (String) 0L);
                aVarC.a(strC2, (String) Long.valueOf(f5656f));
                aVarC.a(strB, (String) 0L);
            } catch (Throwable unused) {
            }
        }
    }
}
