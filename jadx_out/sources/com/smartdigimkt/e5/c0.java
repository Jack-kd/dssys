package com.smartdigimkt.e5;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.j1.f f40080a;

    public c0(com.smartdigimkt.j1.f fVar) {
        this.f40080a = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0182 A[PHI: r4
      0x0182: PHI (r4v10 java.lang.String) = (r4v2 java.lang.String), (r4v11 java.lang.String) binds: [B:57:0x018a, B:53:0x017f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.smartdigimkt.f5.a r15) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e5.c0.a(com.smartdigimkt.f5.a):void");
    }

    public final boolean a() {
        com.smartdigimkt.j1.f fVar = this.f40080a;
        com.smartdigimkt.q3.a aVar = fVar != null ? fVar.f41076l : null;
        if (aVar != null) {
            return aVar.f42787v;
        }
        return false;
    }

    public static String a(com.smartdigimkt.o3.b bVar, double d2) {
        if (bVar.f42253p == 66) {
            double d3 = bVar.f42238F;
            if (d3 > 0.0d) {
                return String.valueOf(d2 / d3);
            }
        }
        return String.valueOf(d2);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap a(com.smartdigimkt.j1.f r9, com.smartdigimkt.sdk.api.format.SDMLossInfo r10, com.smartdigimkt.f5.a r11) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            com.smartdigimkt.sdk.api.SDMAdConst$CURRENCY r1 = com.smartdigimkt.sdk.api.SDMAdConst.CURRENCY.USD
            double r1 = r10.getWinPrice(r1)
            com.smartdigimkt.sdk.api.format.SDMLossInfo$LOSS_REASON r3 = r10.getLossReason()
            java.lang.String r4 = "2"
            java.lang.String r5 = "102"
            java.lang.String r6 = "103"
            if (r3 != 0) goto L19
        L17:
            r3 = r6
            goto L31
        L19:
            int[] r7 = com.smartdigimkt.e5.b0.f40079a
            int r3 = r3.ordinal()
            r3 = r7[r3]
            r7 = 1
            if (r3 == r7) goto L2f
            r7 = 2
            if (r3 == r7) goto L2d
            r7 = 3
            if (r3 == r7) goto L2b
            goto L17
        L2b:
            r3 = r5
            goto L31
        L2d:
            r3 = r4
            goto L31
        L2f:
            java.lang.String r3 = "100"
        L31:
            boolean r5 = android.text.TextUtils.equals(r3, r5)
            java.lang.String r7 = "203"
            java.lang.String r8 = "900"
            if (r5 != 0) goto L44
            boolean r5 = android.text.TextUtils.equals(r3, r6)
            if (r5 == 0) goto L42
            goto L44
        L42:
            r5 = r8
            goto L45
        L44:
            r5 = r7
        L45:
            boolean r4 = android.text.TextUtils.equals(r3, r4)
            if (r4 == 0) goto L4c
            goto L4d
        L4c:
            r7 = r5
        L4d:
            java.lang.String r4 = "1"
            boolean r4 = android.text.TextUtils.equals(r3, r4)
            if (r4 == 0) goto L56
            goto L57
        L56:
            r8 = r7
        L57:
            java.util.Map r10 = r10.getExtraMap()
            java.lang.String r4 = "bidding_name"
            java.lang.String r10 = com.smartdigimkt.c5.k.a(r4, r10)
            boolean r4 = android.text.TextUtils.isEmpty(r10)
            java.lang.String r5 = "{__BIDDER__}"
            if (r4 != 0) goto L6d
            r0.put(r5, r10)
            goto L72
        L6d:
            java.lang.String r10 = ""
            r0.put(r5, r10)
        L72:
            java.lang.String r10 = "${AUCTION_LOSS}"
            r0.put(r10, r3)
            java.lang.String r10 = "${AUCTION_LOSS_BD}"
            r0.put(r10, r8)
            long r3 = java.lang.System.currentTimeMillis()
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 / r5
            java.lang.Long r10 = java.lang.Long.valueOf(r3)
            java.lang.String r3 = "{__TS__}"
            r0.put(r3, r10)
            com.smartdigimkt.o3.b r9 = r9.f41075k
            if (r9 != 0) goto L91
            goto Lbd
        L91:
            double r3 = r9.f42233A
            r5 = 0
            int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r10 <= 0) goto L9a
            double r1 = r1 * r3
        L9a:
            java.lang.String r10 = a(r9, r1)
            java.lang.String r3 = "${AUCTION_PRICE}"
            r0.put(r3, r10)
            java.lang.String r9 = a(r9, r1)
            double r1 = java.lang.Double.parseDouble(r9)     // Catch: java.lang.Throwable -> Lb4
            long r1 = java.lang.Math.round(r1)     // Catch: java.lang.Throwable -> Lb4
            int r1 = (int) r1     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r9 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            java.lang.String r1 = "${AUCTION_PRICE_INT}"
            r0.put(r1, r9)
            if (r11 == 0) goto Lbd
            r11.f40281g = r10
        Lbd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e5.c0.a(com.smartdigimkt.j1.f, com.smartdigimkt.sdk.api.format.SDMLossInfo, com.smartdigimkt.f5.a):java.util.HashMap");
    }

    public static HashMap a(com.smartdigimkt.j1.f fVar, SDMWinInfo sDMWinInfo, com.smartdigimkt.f5.a aVar) {
        com.smartdigimkt.o3.b bVar = fVar.f41075k;
        if (bVar == null) {
            return new HashMap();
        }
        double secondPrice = sDMWinInfo.getSecondPrice(SDMAdConst.CURRENCY.USD);
        double d2 = bVar.f42233A;
        if (d2 > 0.0d) {
            secondPrice *= d2;
        }
        String strA = com.smartdigimkt.c5.k.a("bidding_name", sDMWinInfo.getExtraMap());
        if (TextUtils.isEmpty(strA)) {
            strA = "";
        }
        HashMap map = new HashMap();
        String strA2 = a(bVar, secondPrice);
        map.put(com.anythink.core.c.d.c.f2022f, strA2);
        if (!TextUtils.isEmpty(strA)) {
            map.put(com.anythink.core.c.d.c.f2025i, strA);
        } else {
            map.put(com.anythink.core.c.d.c.f2025i, "");
        }
        if (aVar != null) {
            aVar.f40282h = strA2;
        }
        return map;
    }

    public static com.smartdigimkt.f5.a a(boolean z2, com.smartdigimkt.j1.f fVar, SDMWinInfo sDMWinInfo, SDMLossInfo sDMLossInfo) {
        String strReplace;
        com.smartdigimkt.o3.b bVar = fVar.f41075k;
        com.smartdigimkt.f5.a aVar = new com.smartdigimkt.f5.a(fVar, z2);
        aVar.f40277c = sDMWinInfo;
        aVar.f40278d = sDMLossInfo;
        if (bVar != null) {
            if (z2) {
                strReplace = bVar.f42227g;
                if (sDMWinInfo != null) {
                    for (Map.Entry entry : a(fVar, sDMWinInfo, aVar).entrySet()) {
                        try {
                            strReplace = strReplace.replace((String) entry.getKey(), entry.getValue().toString());
                        } catch (Throwable unused) {
                        }
                    }
                }
            } else {
                String strReplace2 = bVar.f42228h;
                if (sDMLossInfo != null) {
                    for (Map.Entry entry2 : a(fVar, sDMLossInfo, aVar).entrySet()) {
                        try {
                            strReplace2 = strReplace2.replace((String) entry2.getKey(), entry2.getValue().toString());
                        } catch (Throwable unused2) {
                        }
                    }
                    strReplace = strReplace2.replace(com.anythink.core.c.d.c.f2021e, "");
                } else {
                    strReplace = strReplace2;
                }
            }
            if (z2) {
                aVar.f40279e = strReplace;
            } else {
                aVar.f40280f = strReplace;
            }
        }
        return aVar;
    }

    public static void a(com.smartdigimkt.j1.f fVar, SDMLossInfo sDMLossInfo) {
        com.smartdigimkt.a5.f fVar2;
        com.smartdigimkt.o3.b bVar;
        if (fVar == null || sDMLossInfo == null || (fVar2 = fVar.f41074j) == null || (bVar = fVar2.f39440a) == null) {
            return;
        }
        synchronized (bVar) {
            if (bVar.f42258u) {
                return;
            }
            bVar.f42258u = true;
            bVar.f42260w = sDMLossInfo;
            if (sDMLossInfo.getLossReason() == SDMLossInfo.LOSS_REASON.LOSS_TO_EXPIRE) {
                com.smartdigimkt.f3.f fVarA = com.smartdigimkt.f3.f.a();
                Context contextD = SDKContext.getInstance().d();
                String str = bVar.f42225e;
                fVarA.getClass();
                com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.f3.c(fVarA, contextD, str));
            }
            if (fVar2.f39460u == 1) {
                com.smartdigimkt.b4.e.a().b(new z(fVar, sDMLossInfo));
                return;
            }
            com.smartdigimkt.f5.a aVar = new com.smartdigimkt.f5.a(fVar, false);
            aVar.f40278d = sDMLossInfo;
            a(aVar);
        }
    }

    public static void a(com.smartdigimkt.j1.f fVar, SDMWinInfo sDMWinInfo) {
        com.smartdigimkt.a5.f fVar2;
        com.smartdigimkt.o3.b bVar;
        if (fVar == null || sDMWinInfo == null || (fVar2 = fVar.f41074j) == null || (bVar = fVar2.f39440a) == null) {
            return;
        }
        synchronized (bVar) {
            if (bVar.f42258u) {
                return;
            }
            bVar.f42258u = true;
            bVar.f42259v = true;
            if (fVar2.f39459t == 1) {
                com.smartdigimkt.b4.e.a().b(new y(fVar, sDMWinInfo));
                return;
            }
            com.smartdigimkt.f5.a aVar = new com.smartdigimkt.f5.a(fVar, true);
            aVar.f40277c = sDMWinInfo;
            a(aVar);
        }
    }
}
