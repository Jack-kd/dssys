package com.anythink.core.common.v;

import android.text.TextUtils;
import com.anythink.core.api.ATAdFilter;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.AdError;
import com.anythink.core.common.h.br;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.bz;
import com.anythink.core.common.h.cd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class ac {

    /* renamed from: a, reason: collision with root package name */
    static Random f8030a = new Random();

    /* renamed from: b, reason: collision with root package name */
    private static final String f8031b = "PlacementPrepareUtils";

    public static final br a(com.anythink.core.e.m mVar, com.anythink.core.common.h.n nVar) throws JSONException, NumberFormatException {
        List<by> listA;
        List<by> listA2;
        List<by> listC;
        List<by> listD;
        List<by> listE;
        if (mVar == null) {
            return null;
        }
        ATAdRequest aTAdRequestB = nVar.b();
        if (aTAdRequestB != null) {
            mVar.a(aTAdRequestB);
        }
        if (nVar.al()) {
            listA = new ArrayList<>();
            listA2 = com.anythink.core.e.v.a(mVar, mVar.Z());
            listC = new ArrayList<>();
            listD = new ArrayList<>();
            listE = new ArrayList<>();
        } else {
            listA = a(nVar, mVar, com.anythink.core.e.v.b(mVar));
            listA2 = com.anythink.core.e.v.a(mVar);
            listC = com.anythink.core.e.v.c(mVar);
            com.anythink.core.d.a.a().a(nVar, listA, mVar);
            com.anythink.core.d.a.a().a(nVar, listC, mVar);
            listD = com.anythink.core.e.v.d(mVar);
            listE = com.anythink.core.e.v.e(mVar);
        }
        br brVar = new br(mVar, nVar, listA.size() + listA2.size() + listC.size() + listD.size() + listE.size());
        brVar.a(listA);
        brVar.b(listA2);
        brVar.e(listC);
        brVar.c(listD);
        brVar.d(listE);
        a(mVar, (List<by>[]) new List[]{listA, listA2, listC, listD, listE});
        b(mVar, brVar.c(), listA);
        b(mVar, brVar.c(), listA2);
        b(mVar, brVar.c(), listC);
        b(mVar, brVar.c(), listD);
        b(mVar, brVar.c(), listE);
        return brVar;
    }

    public static void b(br brVar, List<by> list) {
        List<by> listD = brVar.d();
        List<by> listE = brVar.e();
        List<by> listF = brVar.f();
        List<by> listG = brVar.g();
        a(listD, listE, brVar.c(), list);
        a(listD, listF, brVar.c(), list);
        a(listD, listG, brVar.c(), list);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(com.anythink.core.e.m r16, com.anythink.core.common.h.n r17, java.util.List<com.anythink.core.common.h.by> r18) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.b(com.anythink.core.e.m, com.anythink.core.common.h.n, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.anythink.core.common.h.by> a(com.anythink.core.common.h.n r16, com.anythink.core.e.m r17, java.util.List<com.anythink.core.common.h.by> r18) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.a(com.anythink.core.common.h.n, com.anythink.core.e.m, java.util.List):java.util.List");
    }

    private static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public static List<by> a(final br brVar, List<by> list) {
        return o.a(list, new com.anythink.core.common.k.f() { // from class: com.anythink.core.common.v.ac.1
            @Override // com.anythink.core.common.k.f
            public final void a(by byVar, int i2, int i3) {
                com.anythink.core.common.f fVarA;
                bz bzVarA;
                byVar.L(i2);
                if (i3 >= 0) {
                    byVar.K(i3);
                    br brVar2 = brVar;
                    if (brVar2 == null || (fVarA = brVar2.c().a()) == null || fVarA.e() == null || (bzVarA = fVarA.e().a(brVar.c().aQ(), byVar)) == null) {
                        return;
                    }
                    bzVarA.b(byVar.aE());
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0080 A[Catch: all -> 0x008a, TRY_LEAVE, TryCatch #1 {all -> 0x008a, blocks: (B:28:0x0062, B:30:0x0068, B:32:0x0072, B:34:0x0078, B:36:0x0080), top: B:59:0x0062 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.util.List<com.anythink.core.common.h.by> r11, java.util.List<com.anythink.core.common.h.by> r12, com.anythink.core.common.h.n r13, java.util.List<com.anythink.core.common.h.by> r14) {
        /*
            java.lang.String r0 = r13.aQ()
            if (r11 == 0) goto Lc7
            if (r12 != 0) goto La
            goto Lc7
        La:
            int r1 = r12.size()
            r2 = 1
            int r1 = r1 - r2
            r3 = 0
            r4 = r3
        L12:
            r5 = 7
            if (r1 < 0) goto Lac
            java.lang.Object r6 = r12.get(r1)
            com.anythink.core.common.h.by r6 = (com.anythink.core.common.h.by) r6
            boolean r7 = r6.av()
            if (r7 == 0) goto L24
            r14.add(r6)
        L24:
            boolean r7 = a(r0, r6, r13)
            if (r7 != 0) goto La8
            com.anythink.core.common.f r7 = r13.a()
            r8 = 0
            if (r7 == 0) goto L40
            com.anythink.core.common.a r9 = r7.e()
            if (r9 == 0) goto L40
            com.anythink.core.common.a r9 = r7.e()
            com.anythink.core.common.h.bz r9 = r9.a(r0, r6)
            goto L41
        L40:
            r9 = r8
        L41:
            if (r9 == 0) goto L4c
            com.anythink.core.common.h.j r9 = r9.a(r8)
            com.anythink.core.common.h.c r9 = r9.a()
            goto L4d
        L4c:
            r9 = r8
        L4d:
            if (r9 == 0) goto L5d
            com.anythink.core.api.bridge.ATBaseAdAdapter r9 = r9.e()
            com.anythink.core.common.h.by r9 = r9.getUnitGroupInfo()
            r10 = 3
            r6.a(r9, r3, r10, r2)
            r9 = r6
            goto L5e
        L5d:
            r9 = r8
        L5e:
            if (r9 != 0) goto L8a
            if (r7 == 0) goto L70
            com.anythink.core.c.f r10 = r7.f()     // Catch: java.lang.Throwable -> L8a
            if (r10 == 0) goto L70
            com.anythink.core.c.f r7 = r7.f()     // Catch: java.lang.Throwable -> L8a
            com.anythink.core.common.h.ad r8 = r7.a(r0, r6)     // Catch: java.lang.Throwable -> L8a
        L70:
            if (r8 == 0) goto L7e
            boolean r7 = r8.a()     // Catch: java.lang.Throwable -> L8a
            if (r7 != 0) goto L7e
            r7 = 2
            r6.a(r8, r3, r7, r2)     // Catch: java.lang.Throwable -> L8a
            r9 = r6
            goto L8a
        L7e:
            if (r8 == 0) goto L8a
            com.anythink.core.common.h.ay r7 = new com.anythink.core.common.h.ay     // Catch: java.lang.Throwable -> L8a
            r7.<init>(r2, r6, r13)     // Catch: java.lang.Throwable -> L8a
            r10 = 25
            com.anythink.core.c.d.c.a(r8, r7, r2, r10)     // Catch: java.lang.Throwable -> L8a
        L8a:
            if (r9 == 0) goto La8
            int r7 = r6.y()     // Catch: java.lang.Exception -> La8
            if (r7 != r5) goto L93
            r4 = r2
        L93:
            r12.remove(r1)     // Catch: java.lang.Exception -> La8
            com.anythink.core.common.v.o.a(r11, r6)     // Catch: java.lang.Exception -> La8
            boolean r5 = r6.av()     // Catch: java.lang.Exception -> La8
            if (r5 == 0) goto La8
            boolean r5 = r6.at()     // Catch: java.lang.Exception -> La8
            if (r5 == 0) goto La8
            r14.remove(r6)     // Catch: java.lang.Exception -> La8
        La8:
            int r1 = r1 + (-1)
            goto L12
        Lac:
            if (r4 == 0) goto Lc7
            int r11 = r12.size()
            int r11 = r11 - r2
        Lb3:
            if (r11 < 0) goto Lc7
            java.lang.Object r13 = r12.get(r11)
            com.anythink.core.common.h.by r13 = (com.anythink.core.common.h.by) r13
            int r13 = r13.y()
            if (r13 != r5) goto Lc4
            r12.remove(r11)
        Lc4:
            int r11 = r11 + (-1)
            goto Lb3
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.a(java.util.List, java.util.List, com.anythink.core.common.h.n, java.util.List):void");
    }

    @SafeVarargs
    private static void a(com.anythink.core.e.m mVar, List<by>... listArr) {
        if (mVar == null) {
            return;
        }
        com.anythink.core.a.b bVarA = com.anythink.core.a.b.a(com.anythink.core.common.d.s.b().g());
        String strValueOf = String.valueOf(mVar.ap());
        for (int i2 = 0; i2 < 5; i2++) {
            List<by> list = listArr[i2];
            if (list != null && !list.isEmpty()) {
                Iterator<by> it = list.iterator();
                while (it.hasNext()) {
                    bVarA.a(it.next(), strValueOf);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.anythink.core.e.m r10, com.anythink.core.common.h.n r11, java.util.List<com.anythink.core.common.h.by> r12) {
        /*
            java.util.Iterator r12 = r12.iterator()
        L4:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto La6
            java.lang.Object r0 = r12.next()
            r4 = r0
            com.anythink.core.common.h.by r4 = (com.anythink.core.common.h.by) r4
            com.anythink.core.common.h.n r0 = r11.ah()
            java.lang.String r1 = r11.aQ()
            r2 = 0
            com.anythink.core.common.v.ah.a(r0, r4, r2, r2)
            com.anythink.core.common.d.s r3 = com.anythink.core.common.d.s.b()
            android.content.Context r3 = r3.g()
            com.anythink.core.a.a.a(r3)
            java.lang.String r3 = r4.G()
            r10.ap()
            com.anythink.core.common.h.bq$a r3 = com.anythink.core.a.a.a(r3)
            int r5 = r3.f4029e
            int r6 = r3.f4028d
            r3 = 0
            com.anythink.core.api.AdError r7 = a(r2, r0, r4, r3)
            if (r7 == 0) goto L4
            java.lang.String r3 = r7.getCode()
            r3.getClass()
            int r8 = r3.hashCode()
            r9 = -1
            switch(r8) {
                case 1537309: goto L65;
                case 1537310: goto L5a;
                case 1537311: goto L4f;
                default: goto L4d;
            }
        L4d:
            r2 = r9
            goto L6e
        L4f:
            java.lang.String r2 = "2034"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L58
            goto L4d
        L58:
            r2 = 2
            goto L6e
        L5a:
            java.lang.String r2 = "2033"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L63
            goto L4d
        L63:
            r2 = 1
            goto L6e
        L65:
            java.lang.String r8 = "2032"
            boolean r3 = r3.equals(r8)
            if (r3 != 0) goto L6e
            goto L4d
        L6e:
            switch(r2) {
                case 0: goto L7b;
                case 1: goto L78;
                case 2: goto L75;
                default: goto L71;
            }
        L71:
            r2 = 9
        L73:
            r8 = r2
            goto L7e
        L75:
            r2 = 31
            goto L73
        L78:
            r2 = 30
            goto L73
        L7b:
            r2 = 29
            goto L73
        L7e:
            java.lang.String r2 = r7.getPlatformMSG()
            r4.i(r2)
            double r2 = r4.bF()
            r0.o(r2)
            java.lang.String r2 = r4.bG()
            r0.C(r2)
            java.lang.String r3 = r7.getPlatformMSG()
            r2 = r11
            com.anythink.core.common.v.aa.a(r1, r2, r3, r4, r5, r6)
            com.anythink.core.common.u.f.a(r0, r8, r7)
            r4.m()
            r12.remove()
            goto L4
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.a(com.anythink.core.e.m, com.anythink.core.common.h.n, java.util.List):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(com.anythink.core.e.m r9, com.anythink.core.common.h.n r10, com.anythink.core.common.h.by r11) throws java.lang.NumberFormatException {
        /*
            com.anythink.core.common.h.n r0 = r10.ah()
            java.lang.String r1 = r10.aQ()
            r2 = 0
            com.anythink.core.common.v.ah.a(r0, r11, r2, r2)
            com.anythink.core.common.d.s r3 = com.anythink.core.common.d.s.b()
            android.content.Context r3 = r3.g()
            com.anythink.core.a.a.a(r3)
            java.lang.String r3 = r11.G()
            r9.ap()
            com.anythink.core.common.h.bq$a r9 = com.anythink.core.a.a.a(r3)
            int r5 = r9.f4029e
            int r6 = r9.f4028d
            r9 = 0
            com.anythink.core.api.AdError r9 = a(r2, r0, r11, r9)
            if (r9 == 0) goto L90
            java.lang.String r3 = r9.getCode()
            r3.getClass()
            int r4 = r3.hashCode()
            r7 = 1
            r8 = -1
            switch(r4) {
                case 1537309: goto L55;
                case 1537310: goto L4a;
                case 1537311: goto L3f;
                default: goto L3d;
            }
        L3d:
            r2 = r8
            goto L5e
        L3f:
            java.lang.String r2 = "2034"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L48
            goto L3d
        L48:
            r2 = 2
            goto L5e
        L4a:
            java.lang.String r2 = "2033"
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto L53
            goto L3d
        L53:
            r2 = r7
            goto L5e
        L55:
            java.lang.String r4 = "2032"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L5e
            goto L3d
        L5e:
            switch(r2) {
                case 0: goto L6b;
                case 1: goto L68;
                case 2: goto L65;
                default: goto L61;
            }
        L61:
            r2 = 9
        L63:
            r8 = r2
            goto L6e
        L65:
            r2 = 31
            goto L63
        L68:
            r2 = 30
            goto L63
        L6b:
            r2 = 29
            goto L63
        L6e:
            java.lang.String r2 = r9.getPlatformMSG()
            r11.i(r2)
            double r2 = r11.bF()
            r0.o(r2)
            java.lang.String r2 = r11.bG()
            r0.C(r2)
            java.lang.String r3 = r9.getPlatformMSG()
            r2 = r10
            r4 = r11
            com.anythink.core.common.v.aa.a(r1, r2, r3, r4, r5, r6)
            com.anythink.core.common.u.f.a(r0, r8, r9)
            return r7
        L90:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.a(com.anythink.core.e.m, com.anythink.core.common.h.n, com.anythink.core.common.h.by):boolean");
    }

    public static AdError a(int i2, com.anythink.core.common.h.n nVar, by byVar, com.anythink.core.common.h.z zVar) {
        Map<String, ATAdFilter> mapZ;
        ATAdFilter aTAdFilter;
        if (nVar == null || byVar == null || (mapZ = com.anythink.core.common.d.s.b().Z()) == null || mapZ.isEmpty() || (aTAdFilter = mapZ.get(nVar.aQ())) == null) {
            return null;
        }
        int iE = o.e(byVar.k());
        String strA = ai.a(byVar, null);
        double dA = o.a(byVar);
        if (zVar != null) {
            dA = zVar.getSortPrice();
        }
        return aTAdFilter.doFilter(new cd(i2, String.valueOf(byVar.n()), String.valueOf(iE), dA, strA, byVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(int r18, com.anythink.core.e.m r19, com.anythink.core.common.h.n r20, com.anythink.core.common.h.by r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 984
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.v.ac.a(int, com.anythink.core.e.m, com.anythink.core.common.h.n, com.anythink.core.common.h.by):boolean");
    }

    private static boolean a(String str, by byVar, com.anythink.core.common.h.n nVar) {
        bz bzVarA;
        com.anythink.core.common.h.c cVarA;
        com.anythink.core.common.h.ad adVarA;
        if (ai.b(byVar)) {
            com.anythink.core.common.f fVarA = nVar.a();
            if (fVarA != null && fVarA.f() != null && (adVarA = fVarA.f().a(str, byVar)) != null && !adVarA.a() && adVarA.r()) {
                return false;
            }
            if (fVarA != null && fVarA.e() != null && (bzVarA = fVarA.e().a(str, byVar)) != null && (cVarA = bzVarA.a((com.anythink.core.common.h.ad) null).a()) != null && cVarA.e() != null && cVarA.e().getUnitGroupInfo() != null && TextUtils.equals(cVarA.e().getUnitGroupInfo().G(), byVar.G()) && cVarA.e().getUnitGroupInfo().bz()) {
                return false;
            }
            Boolean boolA = com.anythink.core.common.a.h.a(com.anythink.core.common.d.s.b().g()).a(byVar);
            if (boolA != null) {
                return boolA.booleanValue();
            }
        }
        return byVar.z() == 2;
    }
}
