package com.smartdigimkt.z;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class z {
    public static int a(Context context, int i2) {
        return (i2 == 1 || i2 == 4) ? com.smartdigimkt.c5.k.a(context, "myoffer_shake_full_title_download_type", "string") : com.smartdigimkt.c5.k.a(context, "myoffer_shake_full_title", "string");
    }

    public static boolean b(com.smartdigimkt.m3.c cVar) {
        return cVar != null && cVar.j();
    }

    public static boolean c(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar == null || aVar == null || aVar.f41644r == null || !"4".equals(String.valueOf(aVar.f41628b)) || !(cVar instanceof com.smartdigimkt.m3.k) || aVar.f41636j == 67) {
            return false;
        }
        return com.smartdigimkt.m3.h.a(2, aVar.f41644r.f41897T1);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:35|71|36|(4:(1:40)(4:41|42|(0)|66)|45|(1:47)|66)(1:38)|48|(1:50)|51|73|52|55|(2:58|(1:61)(1:60))(1:57)|66) */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008f, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a9, code lost:
    
        if (r1.a() == false) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(com.smartdigimkt.l3.a r12) {
        /*
            r0 = 0
            if (r12 != 0) goto L4
            return r0
        L4:
            com.smartdigimkt.m3.e r12 = r12.f41644r
            if (r12 != 0) goto L9
            return r0
        L9:
            com.smartdigimkt.sdk.core.SDKContext r1 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            java.lang.String r2 = "sensor_deny"
            boolean r1 = r1.a(r2)
            if (r1 == 0) goto L16
            return r0
        L16:
            com.smartdigimkt.e1.a r1 = com.smartdigimkt.e1.a.a()
            android.hardware.Sensor r1 = r1.f40046b
            if (r1 == 0) goto Lb5
            int r1 = r12.f41894S1
            r2 = 1
            if (r1 > 0) goto L29
            int r12 = r12.f41868K
            if (r12 != r2) goto L28
            return r2
        L28:
            return r0
        L29:
            if (r1 != r2) goto Lb5
            java.lang.Boolean r1 = r12.f41876M1
            if (r1 == 0) goto L34
            boolean r12 = r1.booleanValue()
            return r12
        L34:
            com.smartdigimkt.z4.j r1 = com.smartdigimkt.z4.j.b()
            r1.getClass()
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lb1
            java.lang.String r3 = com.smartdigimkt.z4.j.a(r3)     // Catch: java.lang.Throwable -> Lb1
            java.lang.String r4 = r1.f45482l     // Catch: java.lang.Throwable -> Lb1
            if (r4 == 0) goto L4d
            boolean r3 = android.text.TextUtils.equals(r4, r3)     // Catch: java.lang.Throwable -> Lb1
            if (r3 != 0) goto L50
        L4d:
            r1.c()     // Catch: java.lang.Throwable -> Lb1
        L50:
            java.util.HashMap r3 = r1.f45472b     // Catch: java.lang.Throwable -> Lb1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lb1
            java.lang.Object r3 = r3.get(r4)     // Catch: java.lang.Throwable -> Lb1
            com.smartdigimkt.z4.g r3 = (com.smartdigimkt.z4.g) r3     // Catch: java.lang.Throwable -> Lb1
            if (r3 != 0) goto L65
            boolean r1 = r1.a()     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto Lac
            goto Lb1
        L65:
            int r4 = r3.f45463b     // Catch: java.lang.Throwable -> Lb1
            boolean r5 = r1.f45481k     // Catch: java.lang.Throwable -> L82
            if (r5 == 0) goto L6c
            goto L82
        L6c:
            if (r4 > 0) goto L6f
            goto L7b
        L6f:
            double r5 = java.lang.Math.random()     // Catch: java.lang.Throwable -> L82
            r7 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r5 = r5 * r7
            int r5 = (int) r5
            int r5 = r5 + r2
            if (r5 > r4) goto L7b
            goto L82
        L7b:
            boolean r3 = r1.f45481k     // Catch: java.lang.Throwable -> Lb1
            if (r3 != 0) goto Lb1
            r1.f45481k = r2     // Catch: java.lang.Throwable -> Lb1
            goto Lb1
        L82:
            boolean r4 = r1.f45481k     // Catch: java.lang.Throwable -> Lb1
            if (r4 != 0) goto L88
            r1.f45481k = r2     // Catch: java.lang.Throwable -> Lb1
        L88:
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lb1
            long r6 = r1.f45475e     // Catch: java.lang.Throwable -> L8f
            goto L91
        L8f:
            r6 = 0
        L91:
            long r8 = r3.f45464c     // Catch: java.lang.Throwable -> Lb1
            r10 = 1000(0x3e8, double:4.94E-321)
            long r8 = r8 * r10
            long r4 = r4 - r6
            int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r4 >= 0) goto L9c
            goto Lb1
        L9c:
            int r4 = r1.a(r2)     // Catch: java.lang.Throwable -> Lb1
            int r3 = r3.f45465d     // Catch: java.lang.Throwable -> Lb1
            if (r4 < r3) goto La5
            goto Lb1
        La5:
            boolean r1 = r1.a()     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto Lac
            goto Lb1
        Lac:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r12.f41876M1 = r0
            return r2
        Lb1:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r12.f41876M1 = r1
        Lb5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z.z.d(com.smartdigimkt.l3.a):boolean");
    }

    public static boolean e(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar == null || aVar == null || aVar.f41644r == null || !"4".equals(String.valueOf(aVar.f41628b)) || !(cVar instanceof com.smartdigimkt.m3.k) || aVar.f41636j == 67) {
            return false;
        }
        return com.smartdigimkt.m3.h.a(1, aVar.f41644r.f41897T1);
    }

    public static boolean f(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        if (aVar != null && (eVar = aVar.f41644r) != null) {
            String strValueOf = String.valueOf(eVar.f41915a);
            strValueOf.getClass();
            switch (strValueOf) {
                case "0":
                case "2":
                case "4":
                    if (cVar != null && cVar.g()) {
                        return true;
                    }
                    break;
                default:
                    return false;
            }
        }
        return false;
    }

    public static boolean g(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar != null && aVar != null) {
            String strValueOf = String.valueOf(aVar.f41628b);
            strValueOf.getClass();
            if (strValueOf.equals("4") && aVar.f41644r.f41851E0 > 0 && (!TextUtils.isEmpty(cVar.f41815f) || !TextUtils.isEmpty(cVar.f41814e))) {
                return true;
            }
        }
        return false;
    }

    public static boolean h(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar != null && aVar != null) {
            String strValueOf = String.valueOf(aVar.f41628b);
            strValueOf.getClass();
            switch (strValueOf) {
                case "0":
                case "2":
                case "4":
                    if (!cVar.j() && cVar.g() && com.smartdigimkt.e0.t.a(cVar, aVar.f41644r)) {
                        return true;
                    }
                    break;
                case "1":
                    return true;
                case "3":
                    return cVar.f41823n == 1 && cVar.g();
                default:
                    return false;
            }
        }
        return false;
    }

    public static boolean i(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        return (cVar == null || aVar == null || aVar.f41644r == null || ((!e(cVar, aVar) || 1 != ((com.smartdigimkt.m3.k) cVar).f42046g0) && (!e(cVar, aVar) || 3 != ((com.smartdigimkt.m3.k) cVar).f42046g0))) ? false : true;
    }

    public static int j(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        int i2;
        boolean z2 = false;
        if (aVar != null && (eVar = aVar.f41644r) != null && cVar != null) {
            int i3 = aVar.f41628b;
            int i4 = 4;
            if ((i3 != 3 && i3 != 4) || eVar.f41848D0 != 1) {
                String str = cVar.f41821l;
                if (eVar.f41974t1 == 1) {
                    boolean zIsEmpty = TextUtils.isEmpty(str);
                    int i5 = zIsEmpty ? 2 : 1;
                    boolean z3 = !zIsEmpty;
                    if (!zIsEmpty && !str.startsWith("http")) {
                        z3 = false;
                        i5 = 3;
                    }
                    if (!z3 || (i2 = cVar.f41824o) == 2 || i2 == 3) {
                        i4 = i5;
                        z2 = z3;
                    }
                    if (z2 && TextUtils.isEmpty(cVar.f41820k)) {
                        return 5;
                    }
                    return i4;
                }
            }
        }
        return 0;
    }

    public static boolean b(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        return (c(cVar, aVar) && 1 == ((com.smartdigimkt.m3.k) cVar).f42046g0) || (c(cVar, aVar) && 3 == ((com.smartdigimkt.m3.k) cVar).f42046g0);
    }

    public static int a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if ((!(cVar instanceof com.smartdigimkt.m3.b) || TextUtils.isEmpty(((com.smartdigimkt.m3.b) cVar).f41777v0)) && cVar != null && aVar != null) {
            boolean zG = cVar.g();
            boolean z2 = (TextUtils.isEmpty(cVar.f41815f) && TextUtils.isEmpty(cVar.a(cVar.f41832w))) ? false : true;
            int iD = cVar.d();
            if (iD == 3) {
                return zG ? 7 : 8;
            }
            if (iD == 2) {
                return zG ? 6 : 5;
            }
            if (zG && z2) {
                return 3;
            }
            if (zG) {
                return 2;
            }
            if (z2) {
                return 1;
            }
        }
        return 0;
    }

    public static boolean b(com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.d dVar;
        if (aVar == null || (eVar = aVar.f41644r) == null || (dVar = eVar.f41897T1) == null || !com.smartdigimkt.m3.h.a(2, dVar)) {
            return false;
        }
        String strA = dVar.a();
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        try {
            return a(new JSONObject(strA.trim())) == 1;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean c(com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.d dVar;
        if (aVar == null || (eVar = aVar.f41644r) == null || (dVar = eVar.f41897T1) == null || !com.smartdigimkt.m3.h.a(2, dVar)) {
            return false;
        }
        String strA = dVar.a();
        return strA == null || strA.trim().isEmpty();
    }

    public static boolean a(com.smartdigimkt.m3.c cVar) {
        return (TextUtils.isEmpty(cVar.f41814e) && TextUtils.isEmpty(cVar.f41810c) && TextUtils.isEmpty(cVar.f41812d)) ? false : true;
    }

    public static int a(com.smartdigimkt.l3.a aVar, Context context) {
        if (aVar == null) {
            return 1;
        }
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        if (eVar != null && aVar.f41628b == 4) {
            return eVar.f41951m;
        }
        return com.smartdigimkt.c5.h.y(context);
    }

    public static int a(Context context, com.smartdigimkt.m3.c cVar) {
        int i2 = cVar.f41824o;
        if (i2 != 1 && i2 != 4) {
            return com.smartdigimkt.c5.k.a(context, "myoffer_cta_learn_more", "string");
        }
        return com.smartdigimkt.c5.k.a(context, "myoffer_cta_install_now", "string");
    }

    public static String a(com.smartdigimkt.l3.a aVar) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.m3.d dVar;
        if (aVar != null && (eVar = aVar.f41644r) != null && (dVar = eVar.f41897T1) != null && com.smartdigimkt.m3.h.a(2, dVar)) {
            String strA = dVar.a();
            if (!TextUtils.isEmpty(strA)) {
                try {
                    return new JSONObject(strA.trim()).optString("ic_u", "");
                } catch (Throwable unused) {
                }
            }
        }
        return "";
    }

    public static boolean d(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar == null || aVar == null) {
            return false;
        }
        String strValueOf = String.valueOf(aVar.f41628b);
        strValueOf.getClass();
        if (strValueOf.equals("3")) {
            return !h(cVar, aVar);
        }
        return false;
    }

    public static int a(JSONObject jSONObject) {
        Object objOpt;
        if (jSONObject.has("v_m") && (objOpt = jSONObject.opt("v_m")) != null && !JSONObject.NULL.equals(objOpt)) {
            if (objOpt instanceof Number) {
                return ((Number) objOpt).intValue();
            }
            if (objOpt instanceof String) {
                String strTrim = ((String) objOpt).trim();
                if (!strTrim.isEmpty()) {
                    try {
                        return Integer.parseInt(strTrim);
                    } catch (NumberFormatException unused) {
                        return 0;
                    }
                }
            } else if (objOpt instanceof Boolean) {
                return ((Boolean) objOpt).booleanValue() ? 1 : 0;
            }
        }
        return 0;
    }

    public static boolean a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.m3.e eVar, com.smartdigimkt.i0.l lVar, int i2) {
        com.smartdigimkt.i0.a aVar;
        int i3;
        if (cVar != null && eVar != null && lVar != null && (aVar = lVar.f40671g) != null) {
            int i4 = cVar.f41824o;
            if (eVar.f41936h == 1 && i2 == i4) {
                int i5 = i2 == 4 ? eVar.f41939i : 0;
                if (i2 == 1) {
                    i5 = eVar.f41942j;
                }
                if (i5 == 1 ? aVar.f40631s == 2 : !(i5 != 2 && (i5 != 3 || (aVar.f40631s == 0 && ((i3 = aVar.f40632t) == 1 || i3 == 5 || i3 == 6 || i3 == 24 || i3 == 25 || i3 == 40 || i3 == 41))))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean a(com.smartdigimkt.m3.e eVar) {
        if (eVar == null || eVar.f41955n0 != 1) {
            return false;
        }
        return !(TextUtils.equals(String.valueOf(eVar.f41915a), "4") || TextUtils.equals(String.valueOf(eVar.f41915a), "3") || TextUtils.equals(String.valueOf(eVar.f41915a), "1")) || eVar.f41872L0 == 1;
    }
}
