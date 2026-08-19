package com.anythink.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.af;
import com.anythink.core.common.h.bt;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.ai;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f2153a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap<String, List<com.anythink.core.common.h.c>> f2154b = new ConcurrentHashMap<>(2);

    /* renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap<String, bz> f2155c = new ConcurrentHashMap<>(2);

    /* renamed from: d, reason: collision with root package name */
    private final f f2156d;

    public a(f fVar) {
        this.f2156d = fVar;
    }

    private static com.anythink.core.common.h.c a(ATBaseAdAdapter aTBaseAdAdapter, long j2) {
        com.anythink.core.common.h.c cVar = new com.anythink.core.common.h.c();
        cVar.a(aTBaseAdAdapter);
        cVar.c(System.currentTimeMillis());
        cVar.b(j2);
        cVar.a(aTBaseAdAdapter.getUnitGroupInfo().N());
        return cVar;
    }

    public final void b(String str) {
        synchronized (this.f2156d.q()) {
            try {
                List<com.anythink.core.common.h.c> list = this.f2154b.get(str);
                if (list != null) {
                    Collections.sort(list);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean a(String str, int i2, ATBaseAdAdapter aTBaseAdAdapter) {
        List<com.anythink.core.common.h.c> listA;
        int size;
        f fVar;
        List<ATAdInfo> listA2;
        if (i2 == -1 || (listA = a(str)) == null || listA.isEmpty() || (size = listA.size()) < i2) {
            return true;
        }
        if (com.anythink.core.common.v.k.a(aTBaseAdAdapter.getUnitGroupInfo(), listA.get(size - 1).o()) != -1) {
            return false;
        }
        int iMax = Math.max(i2 - 2, -1);
        if (!TextUtils.isEmpty(str) && com.anythink.core.common.d.s.b().g() != null && (fVar = this.f2156d) != null && (listA2 = fVar.a(str, iMax, false)) != null && !listA2.isEmpty()) {
            a(str, listA2, 3);
        }
        return true;
    }

    private void b(String str, by byVar) {
        if (byVar == null) {
            return;
        }
        int iY = byVar.y();
        if (iY == 3 || iY == 7) {
            ad adVarY = byVar.Y();
            f fVar = this.f2156d;
            if (fVar != null && fVar.d() != null) {
                this.f2156d.d().a(str, byVar.G());
            }
            if (adVarY == null || TextUtils.isEmpty(adVarY.token)) {
                return;
            }
            com.anythink.core.common.a.a.a().a(com.anythink.core.common.d.s.b().g(), adVarY.token);
        }
    }

    private List<com.anythink.core.common.h.c> a(String str, ATBaseAdAdapter aTBaseAdAdapter, List<? extends BaseAd> list, long j2) {
        by unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
        com.anythink.core.common.h.n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
        String strG = aTBaseAdAdapter.getUnitGroupInfo().G();
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (BaseAd baseAd : list) {
                baseAd.setTrackingInfo(aTBaseAdAdapter.getTrackingInfo().ah());
                com.anythink.core.common.h.c cVarA = a(aTBaseAdAdapter, j2);
                cVarA.a(baseAd);
                arrayList.add(cVarA);
            }
        } else {
            arrayList.add(a(aTBaseAdAdapter, j2));
        }
        if (arrayList.size() == 0) {
            return arrayList;
        }
        a(str, arrayList, trackingInfo, unitGroupInfo, strG);
        return arrayList;
    }

    private void a(String str, List<com.anythink.core.common.h.c> list, com.anythink.core.common.h.n nVar, by byVar, String str2) {
        synchronized (this.f2156d.q()) {
            try {
                String strA = a(str, str2);
                bz bzVar = this.f2155c.get(strA);
                if (bzVar == null) {
                    bzVar = new bz(str, byVar.G());
                    this.f2155c.put(strA, bzVar);
                }
                bzVar.a(byVar.aG());
                bzVar.a(nVar.aR(), new bt(nVar.aR(), list));
                List<com.anythink.core.common.h.c> listSynchronizedList = this.f2154b.get(str);
                if (listSynchronizedList == null) {
                    listSynchronizedList = Collections.synchronizedList(new ArrayList());
                    this.f2154b.put(str, listSynchronizedList);
                }
                if (listSynchronizedList.size() == 0) {
                    listSynchronizedList.addAll(list);
                } else {
                    int i2 = 0;
                    by unitGroupInfo = list.get(0).e().getUnitGroupInfo();
                    while (true) {
                        if (i2 < listSynchronizedList.size()) {
                            by unitGroupInfo2 = listSynchronizedList.get(i2).e().getUnitGroupInfo();
                            int iB = com.anythink.core.common.v.k.b(unitGroupInfo, unitGroupInfo2);
                            if (iB < 0) {
                                listSynchronizedList.addAll(i2, list);
                                break;
                            }
                            if (iB == 0 && unitGroupInfo.aE() < unitGroupInfo2.aE()) {
                                listSynchronizedList.addAll(i2, list);
                                break;
                            } else {
                                if (i2 == listSynchronizedList.size() - 1) {
                                    listSynchronizedList.addAll(list);
                                    break;
                                }
                                i2++;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final List<com.anythink.core.common.h.c> a(String str) {
        List<com.anythink.core.common.h.c> list = this.f2154b.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        Object objQ = this.f2156d.q();
        ArrayList arrayList = new ArrayList();
        synchronized (objQ) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public final com.anythink.core.common.h.c a(Context context, String str) {
        List<com.anythink.core.common.h.c> listA = a(context, str, false, false, false, (ae) null);
        if (listA == null || listA.size() <= 0) {
            return null;
        }
        return listA.get(0);
    }

    private com.anythink.core.common.h.c a(Context context, String str, boolean z2, boolean z3, ae aeVar) {
        List<com.anythink.core.common.h.c> listA = a(context, str, z2, z3, false, aeVar);
        if (listA == null || listA.isEmpty()) {
            return null;
        }
        return listA.get(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x02b6, code lost:
    
        if (r20 == 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02cc, code lost:
    
        if (com.anythink.core.common.v.k.a(r20.e().getUnitGroupInfo(), r36.e().getUnitGroupInfo()) >= 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02ce, code lost:
    
        r3 = r20;
        r5 = r31;
        r7 = r32;
        r21 = r4;
        r20 = r5;
        r23 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02e2, code lost:
    
        if (a(r3, r4, r5, r34, r7, r29) == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02e4, code lost:
    
        r13.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02eb, code lost:
    
        r21 = r4;
        r3 = r20;
        r20 = r31;
        r23 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02f4, code lost:
    
        r13.add(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02f7, code lost:
    
        if (r42 == false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x02fd, code lost:
    
        if (r13.size() <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0305, code lost:
    
        r8 = (com.anythink.core.common.h.c) r13.get(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0306, code lost:
    
        r7 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0308, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x030a, code lost:
    
        r3 = r9.aR();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0314, code lost:
    
        r2 = r13;
        r11 = r15;
        r9 = r21;
        r21 = r7;
        r7 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0329, code lost:
    
        com.anythink.core.common.u.f.a(r3, r41, true, -1, r7, r8, r9, "", r11, r12, android.os.SystemClock.elapsedRealtime() - r16, r45);
        r15 = r7;
        r22 = r9;
        r13 = r12;
        r12 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x033a, code lost:
    
        r2 = r13;
        r22 = r21;
        r21 = r3;
        r13 = r12;
        r12 = r15;
        r15 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0343, code lost:
    
        r10 = r41;
        r3 = r2;
        r4 = r22;
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0572 A[Catch: all -> 0x04f5, TryCatch #6 {all -> 0x04f5, blocks: (B:215:0x04f1, B:221:0x04fe, B:225:0x050d, B:232:0x0521, B:234:0x052d, B:242:0x054e, B:243:0x0552, B:245:0x0558, B:247:0x0564, B:252:0x0572, B:254:0x057a, B:262:0x05b0, B:256:0x058f, B:258:0x0597, B:228:0x0516), top: B:412:0x04b9 }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0773  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0794 A[PHI: r4 r11 r13 r18 r20 r29 r30 r44
      0x0794: PHI (r4v9 boolean) = (r4v10 boolean), (r4v11 boolean) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r11v17 java.lang.String) = (r11v18 java.lang.String), (r11v21 java.lang.String) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r13v5 com.anythink.core.common.h.af) = (r13v6 com.anythink.core.common.h.af), (r13v8 com.anythink.core.common.h.af) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r18v6 com.anythink.core.common.f) = (r18v7 com.anythink.core.common.f), (r18v10 com.anythink.core.common.f) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r20v11 com.anythink.core.common.a) = (r20v12 com.anythink.core.common.a), (r20v15 com.anythink.core.common.a) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r29v3 com.anythink.core.api.ATAdInfo) = (r29v4 com.anythink.core.api.ATAdInfo), (r29v7 com.anythink.core.api.ATAdInfo) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r30v4 com.anythink.core.e.m) = (r30v5 com.anythink.core.e.m), (r30v8 com.anythink.core.e.m) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]
      0x0794: PHI (r44v2 com.anythink.core.common.h.d) = (r44v3 com.anythink.core.common.h.d), (r44v4 com.anythink.core.common.h.d) binds: [B:399:0x0794, B:309:0x06a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x07a1  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x07ac A[Catch: all -> 0x078f, TryCatch #16 {all -> 0x078f, blocks: (B:369:0x07ac, B:374:0x07b8, B:356:0x078a), top: B:429:0x0534 }] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x07dc  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x07e1  */
    /* JADX WARN: Type inference failed for: r0v74, types: [com.anythink.core.common.h.c] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r20v24, types: [com.anythink.core.common.h.c] */
    /* JADX WARN: Type inference failed for: r20v30 */
    /* JADX WARN: Type inference failed for: r20v41 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v19 */
    /* JADX WARN: Type inference failed for: r21v2, types: [com.anythink.core.common.h.c] */
    /* JADX WARN: Type inference failed for: r21v20 */
    /* JADX WARN: Type inference failed for: r21v21 */
    /* JADX WARN: Type inference failed for: r21v23 */
    /* JADX WARN: Type inference failed for: r21v24 */
    /* JADX WARN: Type inference failed for: r21v3, types: [com.anythink.core.common.h.af] */
    /* JADX WARN: Type inference failed for: r21v33 */
    /* JADX WARN: Type inference failed for: r21v34 */
    /* JADX WARN: Type inference failed for: r21v35 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v43 */
    /* JADX WARN: Type inference failed for: r21v44 */
    /* JADX WARN: Type inference failed for: r21v45 */
    /* JADX WARN: Type inference failed for: r21v46 */
    /* JADX WARN: Type inference failed for: r21v47 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20, types: [int] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [int] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.anythink.core.common.h.c> a(android.content.Context r40, java.lang.String r41, boolean r42, boolean r43, boolean r44, com.anythink.core.common.h.ae r45) {
        /*
            Method dump skipped, instructions count: 2066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.a.a(android.content.Context, java.lang.String, boolean, boolean, boolean, com.anythink.core.common.h.ae):java.util.List");
    }

    private static boolean a(af afVar, ATAdInfo aTAdInfo, com.anythink.core.common.h.c cVar) {
        if (aTAdInfo != null && (aTAdInfo instanceof com.anythink.core.common.d.k)) {
            if (!a((com.anythink.core.common.d.k) aTAdInfo, cVar)) {
                a(afVar, -1, cVar.i().N(), cVar.i().Z(), "", false, 7);
                return false;
            }
            cVar.i().as();
        }
        return true;
    }

    private static boolean a(com.anythink.core.common.h.c cVar, af afVar, List<String> list, List<String> list2, com.anythink.core.common.h.c cVar2, ATAdInfo aTAdInfo) {
        com.anythink.core.common.h.n nVarI = cVar.i();
        if (!com.anythink.core.common.v.o.a(list, "66")) {
            a(afVar, -1, nVarI.N(), nVarI.Z(), "", false, 5);
            return false;
        }
        if (com.anythink.core.common.v.o.b(list2, "66")) {
            a(afVar, -1, nVarI.N(), nVarI.Z(), "", false, 6);
            return false;
        }
        if (cVar2 != null) {
            if (TextUtils.equals(cVar2.i().aR(), nVarI.aR()) && TextUtils.equals(cVar2.i().N(), nVarI.N())) {
                nVarI.as();
                return true;
            }
            a(afVar, -1, nVarI.N(), nVarI.Z(), "", false, 7);
            return false;
        }
        if (cVar2 != null || aTAdInfo == null || !(aTAdInfo instanceof com.anythink.core.common.d.k)) {
            return true;
        }
        if (a((com.anythink.core.common.d.k) aTAdInfo, cVar)) {
            nVarI.as();
            return true;
        }
        a(afVar, -1, nVarI.N(), nVarI.Z(), "", false, 7);
        return false;
    }

    private static boolean a(com.anythink.core.common.d.k kVar, com.anythink.core.common.h.c cVar) {
        if (kVar != null && cVar != null) {
            String requestId = kVar.getRequestId();
            String adsourceId = kVar.getAdsourceId();
            com.anythink.core.common.h.n nVarI = cVar.i();
            if (TextUtils.equals(requestId, nVarI.aR()) && TextUtils.equals(adsourceId, nVarI.N())) {
                return true;
            }
        }
        return false;
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter, String str, String str2, com.anythink.core.e.m mVar, by byVar, Map<String, Object> map, ae aeVar) throws NumberFormatException {
        Map<String, Object> mapR = this.f2156d.r();
        int[] iArr = {0};
        if (mapR.containsKey(bx.f4058X)) {
            try {
                iArr[0] = ((Integer) mapR.get(bx.f4058X)).intValue();
            } catch (Throwable unused) {
            }
        }
        com.anythink.core.common.h.n nVarA = ah.a(str, str2, mVar, 0, iArr[0], map, null, 0, aeVar != null ? aeVar.d() : null, this.f2156d);
        ah.a(nVarA, byVar, 0, true);
        ah.a(aTBaseAdAdapter, nVarA, byVar);
        nVarA.f4342t = 3;
        nVarA.m(ai.a(byVar, null));
        aTBaseAdAdapter.setRefresh(false);
    }

    private static void a(af afVar, int i2, String str, int i3, String str2, boolean z2, int i4) {
        afVar.a(i2, str, i3, str2, z2, i4);
    }

    public final void a(com.anythink.core.common.h.c cVar, int i2) {
        if (cVar == null) {
            return;
        }
        com.anythink.core.common.h.n nVarI = cVar.i();
        if (i2 != 6) {
            b(nVarI.aQ(), cVar.e().getUnitGroupInfo());
        }
        bz bzVar = this.f2155c.get(a(nVarI.aQ(), nVarI.N()));
        if (bzVar == null) {
            return;
        }
        bzVar.a(cVar);
        com.anythink.core.common.h.n nVarI2 = cVar.i();
        if (nVarI2 == null || i2 == 5) {
            return;
        }
        com.anythink.core.common.u.f.a(nVarI2, i2);
    }

    private void a(com.anythink.core.common.h.c cVar) {
        if (cVar == null) {
            return;
        }
        String strAQ = cVar.i().aQ();
        synchronized (this.f2156d.q()) {
            try {
                List<com.anythink.core.common.h.c> list = this.f2154b.get(strAQ);
                if (list != null) {
                    list.remove(cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str, by byVar, String str2) {
        synchronized (this.f2156d.q()) {
            List<com.anythink.core.common.h.c> list = this.f2154b.get(str);
            if (list != null) {
                for (com.anythink.core.common.h.c cVar : list) {
                    if (TextUtils.equals(cVar.i().N(), byVar.G()) && TextUtils.equals(cVar.i().aR(), str2)) {
                        a(cVar, 1);
                        a(cVar);
                        cVar.m();
                        return;
                    }
                }
            }
        }
    }

    public final void a(String str, List<ATAdInfo> list, int i2) {
        synchronized (this.f2156d.q()) {
            try {
                List<com.anythink.core.common.h.c> list2 = this.f2154b.get(str);
                if (list2 == null) {
                    return;
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    ATAdInfo aTAdInfo = list.get(size);
                    if (aTAdInfo instanceof com.anythink.core.common.d.k) {
                        com.anythink.core.common.d.k kVar = (com.anythink.core.common.d.k) aTAdInfo;
                        String requestId = kVar.getRequestId();
                        String adsourceId = kVar.getAdsourceId();
                        if (!TextUtils.isEmpty(requestId) && !TextUtils.isEmpty(adsourceId)) {
                            int size2 = list2.size() - 1;
                            while (true) {
                                if (size2 >= 0) {
                                    com.anythink.core.common.h.c cVar = list2.get(size2);
                                    com.anythink.core.common.h.n nVarI = cVar.i();
                                    if (TextUtils.equals(adsourceId, nVarI.N()) && TextUtils.equals(requestId, nVarI.aR())) {
                                        list2.remove(size2);
                                        com.anythink.core.c.d.c.a(cVar, i2);
                                        a(cVar, i2);
                                        cVar.m();
                                        break;
                                    }
                                    size2--;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Context context, com.anythink.core.common.h.c cVar) {
        ATBaseAdAdapter aTBaseAdAdapterE = cVar.e();
        com.anythink.core.common.h.n nVarI = cVar.i();
        by unitGroupInfo = aTBaseAdAdapterE != null ? aTBaseAdAdapterE.getUnitGroupInfo() : null;
        if (nVarI != null) {
            String strAQ = nVarI.aQ();
            String strAR = nVarI.aR();
            f fVar = this.f2156d;
            if (fVar != null) {
                fVar.a(strAR, unitGroupInfo != null ? com.anythink.core.common.v.o.a(unitGroupInfo) : 0.0d, unitGroupInfo);
            } else {
                com.anythink.core.common.u.f.b("AdManage is null--Show", "Id:" + strAQ + "--format:" + nVarI.aS() + "--adsource:" + nVarI.N(), com.anythink.core.common.d.s.b().r());
            }
            if (fVar != null) {
                fVar.a(strAR, a(strAQ));
            }
            com.anythink.core.a.a.a(context);
            com.anythink.core.a.a.a(nVarI, nVarI.aS(), nVarI.aQ(), nVarI.N());
            a(cVar, 5);
            a(cVar);
        }
    }

    public final bz a(String str, by byVar) {
        return this.f2155c.get(a(str, byVar.G()));
    }

    private static String a(String str, String str2) {
        return str + str2;
    }

    private static void a(String str, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder();
        sb.append(th.getMessage());
        if (stackTrace != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                sb.append(stackTraceElement.toString() + "\n");
            }
        }
        com.anythink.core.common.u.f.b(str, sb.toString(), com.anythink.core.common.d.s.b().r());
    }

    private void a(String str, int i2) {
        f fVar;
        List<ATAdInfo> listA;
        if (TextUtils.isEmpty(str) || com.anythink.core.common.d.s.b().g() == null || (fVar = this.f2156d) == null || (listA = fVar.a(str, i2, false)) == null || listA.isEmpty()) {
            return;
        }
        a(str, listA, 3);
    }

    public final List<com.anythink.core.common.h.c> a(String str, ATBaseAdAdapter aTBaseAdAdapter, List<? extends BaseAd> list, long j2, int i2) {
        List<com.anythink.core.common.h.c> listA;
        int size;
        f fVar;
        List<ATAdInfo> listA2;
        if (i2 != -1 && (listA = a(str)) != null && !listA.isEmpty() && (size = listA.size()) >= i2) {
            if (com.anythink.core.common.v.k.a(aTBaseAdAdapter.getUnitGroupInfo(), listA.get(size - 1).o()) == -1) {
                int iMax = Math.max(i2 - 2, -1);
                if (!TextUtils.isEmpty(str) && com.anythink.core.common.d.s.b().g() != null && (fVar = this.f2156d) != null && (listA2 = fVar.a(str, iMax, false)) != null && !listA2.isEmpty()) {
                    a(str, listA2, 3);
                }
            } else {
                com.anythink.core.common.h.c cVarA = a(aTBaseAdAdapter, j2);
                cVarA.m();
                com.anythink.core.c.d.c.a(cVarA, 3);
                com.anythink.core.common.u.f.b(cVarA.i(), "2");
                return new ArrayList();
            }
        }
        return a(str, aTBaseAdAdapter, list, j2);
    }
}
