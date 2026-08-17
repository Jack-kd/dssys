package com.anythink.core.a;

import android.text.TextUtils;
import android.util.Pair;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.f.a;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.f;
import com.anythink.core.common.h.k;
import com.anythink.core.common.h.l;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1538a = "AdSourceFltRuleHandler";

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.f.a f1539b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, Long> f1540c = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Pair<Integer, Long>> f1542e = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Set<String> f1541d = new CopyOnWriteArraySet();

    public e(com.anythink.core.common.f.a aVar) {
        this.f1539b = aVar;
    }

    public final void a(by byVar) {
        try {
            l lVarBH = byVar.bH();
            int iA = lVarBH.a();
            if (iA != 3) {
                return;
            }
            String strG = byVar.G();
            if (TextUtils.isEmpty(strG)) {
                return;
            }
            f fVarA = a("3", strG, iA);
            int i2 = 1;
            boolean z2 = fVarA != null;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (z2) {
                long jI = fVarA.i();
                if (jCurrentTimeMillis < lVarBH.d() + jI) {
                    i2 = 1 + fVarA.f4252a;
                    jCurrentTimeMillis = jI;
                }
            } else {
                fVarA = new f("3");
                fVarA.a(strG);
                fVarA.a(iA);
            }
            fVarA.a(jCurrentTimeMillis);
            fVarA.f4252a = i2;
            this.f1542e.put(strG, new Pair<>(Integer.valueOf(i2), Long.valueOf(jCurrentTimeMillis)));
            this.f1539b.a(fVarA, z2);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r1.n() > java.lang.System.currentTimeMillis()) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.h.k b(com.anythink.core.common.h.by r6) {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r1 = r6.G()     // Catch: java.lang.Throwable -> L75
            com.anythink.core.common.h.l r6 = r6.bH()     // Catch: java.lang.Throwable -> L75
            int r6 = r6.a()     // Catch: java.lang.Throwable -> L75
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L75
            if (r2 == 0) goto L14
            return r0
        L14:
            java.util.Map<java.lang.String, java.lang.Long> r2 = r5.f1540c     // Catch: java.lang.Throwable -> L75
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Throwable -> L75
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Throwable -> L75
            if (r2 == 0) goto L2b
            long r1 = r2.longValue()     // Catch: java.lang.Throwable -> L75
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L75
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L75
            goto L3f
        L2b:
            java.lang.String r2 = "4"
            com.anythink.core.common.h.f r1 = r5.a(r2, r1, r6)     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L75
            long r1 = r1.n()     // Catch: java.lang.Throwable -> L75
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L75
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L75
        L3f:
            r1 = 1
            java.lang.String r2 = ""
            if (r6 == r1) goto L67
            r1 = 2
            if (r6 == r1) goto L59
            r1 = 3
            if (r6 == r1) goto L4b
            return r0
        L4b:
            com.anythink.core.common.h.k r6 = new com.anythink.core.common.h.k     // Catch: java.lang.Throwable -> L75
            java.lang.String r1 = "2038"
            com.anythink.core.api.AdError r1 = com.anythink.core.api.ErrorCode.getErrorCode(r1, r2, r2)     // Catch: java.lang.Throwable -> L75
            r2 = 34
            r6.<init>(r2, r1)     // Catch: java.lang.Throwable -> L75
            return r6
        L59:
            com.anythink.core.common.h.k r6 = new com.anythink.core.common.h.k     // Catch: java.lang.Throwable -> L75
            java.lang.String r1 = "2037"
            com.anythink.core.api.AdError r1 = com.anythink.core.api.ErrorCode.getErrorCode(r1, r2, r2)     // Catch: java.lang.Throwable -> L75
            r2 = 33
            r6.<init>(r2, r1)     // Catch: java.lang.Throwable -> L75
            return r6
        L67:
            com.anythink.core.common.h.k r6 = new com.anythink.core.common.h.k     // Catch: java.lang.Throwable -> L75
            java.lang.String r1 = "2036"
            com.anythink.core.api.AdError r1 = com.anythink.core.api.ErrorCode.getErrorCode(r1, r2, r2)     // Catch: java.lang.Throwable -> L75
            r2 = 32
            r6.<init>(r2, r1)     // Catch: java.lang.Throwable -> L75
            return r6
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.a.e.b(com.anythink.core.common.h.by):com.anythink.core.common.h.k");
    }

    public final void c(by byVar) {
        try {
            l lVarBH = byVar.bH();
            if (lVarBH == null) {
                return;
            }
            int iA = lVarBH.a();
            String strG = byVar.G();
            if (iA == 1 && !TextUtils.isEmpty(strG)) {
                List<Pair<String, String>> listB = b("4", strG, iA);
                if (this.f1541d.contains(strG)) {
                    return;
                }
                this.f1541d.add(strG);
                this.f1540c.remove(strG);
                this.f1539b.a(listB);
            }
        } catch (Throwable unused) {
        }
    }

    public final void d(by byVar) {
        f fVarA;
        long jF;
        long j2;
        try {
            l lVarBH = byVar.bH();
            long jCurrentTimeMillis = System.currentTimeMillis();
            int iA = lVarBH.a();
            String strG = byVar.G();
            if (TextUtils.isEmpty(strG)) {
                return;
            }
            f fVar = new f("4");
            f fVar2 = null;
            if (iA == 3) {
                boolean zContainsKey = this.f1542e.containsKey(strG);
                Pair<Integer, Long> pair = this.f1542e.get(strG);
                if (!zContainsKey || pair == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new Pair(a(a.C0051a.f3211h, "="), strG));
                    arrayList.add(new Pair(a(a.C0051a.f3218o, "="), String.valueOf(iA)));
                    fVarA = null;
                    for (f fVar3 : this.f1539b.a(arrayList, 2)) {
                        if ("4".equals(fVar3.a())) {
                            fVarA = fVar3;
                        } else if ("3".equals(fVar3.a())) {
                            fVar2 = fVar3;
                        }
                    }
                } else {
                    int iIntValue = ((Integer) pair.first).intValue();
                    long jLongValue = ((Long) pair.second).longValue();
                    fVar2 = new f("3");
                    fVar2.f4252a = iIntValue;
                    fVar2.a(jLongValue);
                    fVar2.a(3);
                    fVarA = a("4", strG, iA);
                }
            } else {
                fVarA = a("4", strG, iA);
            }
            boolean z2 = fVarA != null;
            if (z2) {
                fVarA.e();
                int iM = fVarA.m() + 1;
                long jI = fVarA.i();
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                int iA2 = lVarBH.a();
                if (iA2 == 1) {
                    if (iM >= lVarBH.b()) {
                        jF = lVarBH.f();
                        j2 = jCurrentTimeMillis2 + jF;
                    }
                    j2 = 0;
                } else if (iA2 != 2) {
                    if (iA2 == 3) {
                        if (jCurrentTimeMillis2 >= jI + lVarBH.d()) {
                            fVarA.a(jCurrentTimeMillis2);
                            iM = 1;
                        } else {
                            int i2 = fVar2 != null ? fVar2.f4252a : 0;
                            if (i2 > 0 && i2 >= lVarBH.g() && (iM * 100) / i2 >= lVarBH.e()) {
                                jF = lVarBH.f();
                                j2 = jCurrentTimeMillis2 + jF;
                            }
                        }
                    }
                    j2 = 0;
                } else if (jCurrentTimeMillis2 >= jI + lVarBH.d()) {
                    fVarA.a(jCurrentTimeMillis2);
                    iM = 1;
                    j2 = 0;
                } else {
                    if (iM >= lVarBH.c()) {
                        jF = lVarBH.f();
                        j2 = jCurrentTimeMillis2 + jF;
                    }
                    j2 = 0;
                }
                fVarA.b(j2);
                fVarA.b(iM);
                fVar = fVarA;
            } else {
                fVar.a(strG);
                fVar.a(iA);
                fVar.a(jCurrentTimeMillis);
                fVar.b(1);
                fVar.b(0L);
            }
            if (iA == 1) {
                this.f1541d.remove(strG);
            }
            if (iA == 3 && fVar2 != null) {
                fVar.a(fVar2.i());
            }
            this.f1540c.put(strG, Long.valueOf(fVar.n()));
            this.f1539b.a(fVar, z2);
        } catch (Throwable unused) {
        }
    }

    private static List<Pair<String, String>> b(String str, String str2, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(a("event_type", "="), str));
        arrayList.add(new Pair(a(a.C0051a.f3211h, "="), str2));
        arrayList.add(new Pair(a(a.C0051a.f3218o, "="), String.valueOf(i2)));
        return arrayList;
    }

    private static f a(l lVar, f fVar, f fVar2) {
        long jF;
        fVar2.e();
        int i2 = 1;
        int iM = fVar2.m() + 1;
        long jI = fVar2.i();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iA = lVar.a();
        long j2 = 0;
        if (iA == 1) {
            if (iM >= lVar.b()) {
                jF = lVar.f();
                j2 = jCurrentTimeMillis + jF;
            }
            i2 = iM;
        } else if (iA != 2) {
            if (iA != 3) {
                i2 = iM;
            } else if (jCurrentTimeMillis >= jI + lVar.d()) {
                fVar2.a(jCurrentTimeMillis);
            } else {
                int i3 = fVar != null ? fVar.f4252a : 0;
                if (i3 > 0 && i3 >= lVar.g() && (iM * 100) / i3 >= lVar.e()) {
                    jF = lVar.f();
                    j2 = jCurrentTimeMillis + jF;
                }
                i2 = iM;
            }
        } else if (jCurrentTimeMillis >= jI + lVar.d()) {
            fVar2.a(jCurrentTimeMillis);
        } else {
            if (iM >= lVar.c()) {
                jF = lVar.f();
                j2 = jCurrentTimeMillis + jF;
            }
            i2 = iM;
        }
        fVar2.b(j2);
        fVar2.b(i2);
        return fVar2;
    }

    private static k a(int i2) {
        if (i2 == 1) {
            return new k(32, ErrorCode.getErrorCode("2036", "", ""));
        }
        if (i2 == 2) {
            return new k(33, ErrorCode.getErrorCode(ErrorCode.noFillSError, "", ""));
        }
        if (i2 != 3) {
            return null;
        }
        return new k(34, ErrorCode.getErrorCode(ErrorCode.noFillSrError, "", ""));
    }

    private static String a(String str) {
        return a(str, "=");
    }

    private static String a(String str, String str2) {
        return String.format("%s %s ?", str, str2);
    }

    private f a(String str, String str2, int i2) {
        List<f> listA = this.f1539b.a(b(str, str2, i2), 1);
        if (listA.isEmpty()) {
            return null;
        }
        return listA.get(0);
    }

    private List<f> a(String str, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(a(a.C0051a.f3211h, "="), str));
        arrayList.add(new Pair(a(a.C0051a.f3218o, "="), String.valueOf(i2)));
        return this.f1539b.a(arrayList, 2);
    }
}
