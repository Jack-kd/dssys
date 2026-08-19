package com.smartdigimkt.y3;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.smartdigimkt.c5.a0;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static String f45216a = "";

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.smartdigimkt.a5.a r6, com.smartdigimkt.q3.c r7) {
        /*
            com.smartdigimkt.sdk.core.SDKContext r0 = com.smartdigimkt.sdk.core.SDKContext.getInstance()
            boolean r0 = r0.i()
            if (r0 == 0) goto Lb
            goto L67
        Lb:
            java.lang.String r0 = r6.f39348J
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r1 != 0) goto L36
            java.lang.String r1 = r7.f42802H
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L36
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L36
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L36
            int r0 = r3.length()     // Catch: java.lang.Throwable -> L36
            r4 = r2
        L26:
            if (r4 >= r0) goto L36
            java.lang.String r5 = r3.optString(r4)     // Catch: java.lang.Throwable -> L36
            boolean r5 = android.text.TextUtils.equals(r1, r5)     // Catch: java.lang.Throwable -> L36
            if (r5 == 0) goto L33
            goto L67
        L33:
            int r4 = r4 + 1
            goto L26
        L36:
            java.util.Map r6 = r6.f39392w
            if (r6 == 0) goto L68
            java.lang.String r0 = r7.f42801G
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L49
            java.lang.String r7 = r7.f42817a
            boolean r2 = r6.containsKey(r7)
            goto L68
        L49:
            java.lang.String r0 = r7.f42817a
            boolean r0 = r6.containsKey(r0)
            if (r0 == 0) goto L68
            java.lang.String r0 = r7.f42817a
            java.lang.Object r6 = r6.get(r0)
            java.lang.String r6 = (java.lang.String) r6
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 != 0) goto L68
            java.lang.String r7 = r7.f42801G
            boolean r6 = r6.contains(r7)
            if (r6 == 0) goto L68
        L67:
            r2 = 1
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.h.a(com.smartdigimkt.a5.a, com.smartdigimkt.q3.c):boolean");
    }

    public static boolean b(com.smartdigimkt.a5.a aVar, com.smartdigimkt.q3.c cVar) {
        if ("3000008".equals(cVar.f42817a)) {
            return true;
        }
        if (!TextUtils.isEmpty(cVar.f42817a) && !TextUtils.isEmpty(cVar.f42802H) && !TextUtils.isEmpty(cVar.f42801G)) {
            String str = cVar.f42817a;
            Map map = aVar.f39394y;
            Map map2 = map != null ? (Map) map.get(str) : null;
            if (map2 != null) {
                if (map2.containsKey("0")) {
                    String str2 = (String) map2.get("0");
                    if (!TextUtils.isEmpty(str2) && str2.contains(cVar.f42801G)) {
                        return true;
                    }
                } else if (map2.containsKey(cVar.f42802H)) {
                    String str3 = (String) map2.get(cVar.f42802H);
                    if (!TextUtils.isEmpty(str3) && str3.contains(cVar.f42801G)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void c(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar) {
        try {
            com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
            cVar2.f42817a = "1004679";
            cVar2.a(aVar);
            if (cVar instanceof com.smartdigimkt.m3.b) {
                cVar2.f42828l = ((com.smartdigimkt.m3.b) cVar).f42054o0;
            }
            cVar2.f42829m = aVar.f41631e;
            cVar2.f42830n = cVar.f41806a;
            cVar2.f42831o = String.valueOf(cVar.e());
            cVar2.f42832p = cVar.f41782C;
            cVar2.f42833q = cVar.f41783D;
            cVar2.f42834r = String.valueOf(i2);
            a(cVar2);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(int r18, int r19, com.smartdigimkt.l3.a r20, com.smartdigimkt.m3.c r21, java.lang.String r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.h.b(int, int, com.smartdigimkt.l3.a, com.smartdigimkt.m3.c, java.lang.String, boolean):void");
    }

    public static void a(com.smartdigimkt.q3.c cVar) {
        if (SDKContext.getInstance().d() != null && SDKContext.getInstance().f44116e) {
            com.smartdigimkt.b4.e.a().a(8, (Runnable) new e(cVar));
            return;
        }
        if (!com.smartdigimkt.c5.h.C() || TextUtils.isEmpty("dq|wklqn")) {
            return;
        }
        String strA = a0.a("dq|wklqn");
        Context context = com.smartdigimkt.c4.c.a().f39693i;
        if (context == null) {
            return;
        }
        String str = cVar.f42817a;
        str.getClass();
        if (str.equals("3000012")) {
            cVar.f42835s = "1";
            com.smartdigimkt.b4.e.a().a(new f(context, strA, cVar.a().toString()));
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004616";
        cVar.f42819c = str5;
        cVar.f42828l = str;
        cVar.f42829m = str2;
        cVar.f42830n = str3;
        cVar.f42831o = str4;
        cVar.f42832p = str6;
        cVar.f42833q = str7;
        cVar.f42834r = String.valueOf(com.smartdigimkt.c5.k.g(SDKContext.getInstance().d()) ? 1 : 0);
        com.smartdigimkt.m4.b bVar = com.smartdigimkt.z4.d.c().a().f39378i0;
        cVar.f42835s = String.valueOf(bVar != null ? bVar.f42145a : 1);
        a(cVar);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (cVar == null || aVar == null || !(cVar instanceof com.smartdigimkt.m3.k)) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004697";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        cVar2.f42829m = cVar.f41808b;
        cVar2.f42830n = ((com.smartdigimkt.m3.k) cVar).f42054o0;
        a(cVar2);
    }

    public static void b(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, String str3, String str4) {
        if (aVar == null || cVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
        cVar2.f42817a = "1004648";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        cVar2.f42829m = String.valueOf(cVar.e());
        cVar2.f42830n = str;
        cVar2.f42831o = str2;
        cVar2.f42832p = str3;
        cVar2.f42833q = str4;
        a(cVar2);
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, int i2, String str) {
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004706";
        cVar2.a(aVar);
        cVar2.f42828l = String.valueOf(aVar.f41636j);
        cVar2.f42829m = aVar.f41631e;
        cVar2.f42830n = String.valueOf(aVar.f41628b);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42831o = bVar.f42054o0;
            cVar2.f42832p = bVar.f41806a;
        }
        cVar2.f42833q = String.valueOf(i2);
        cVar2.f42834r = str;
        a(cVar2);
    }

    public static void b(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar) {
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004768";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42829m = bVar.f42054o0;
            cVar2.f42830n = String.valueOf(bVar.f42058s0);
        }
        cVar2.f42831o = String.valueOf(i2);
        a(cVar2);
    }

    public static void a(String str, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        if (aVar == null || cVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), "66");
        cVar2.f42817a = "1004737";
        cVar2.a(aVar);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42828l = String.valueOf(bVar.f42054o0);
            cVar2.f42829m = String.valueOf(bVar.f41806a);
        }
        cVar2.f42830n = cVar.f41799T;
        cVar2.f42831o = cVar.f41800U;
        cVar2.f42832p = cVar.f41801V;
        cVar2.f42833q = str;
        cVar2.f42834r = String.valueOf(aVar.f41628b);
        a(cVar2);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, boolean z2, long j2, int i2, String str, long j3, String str2) {
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004761";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42829m = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        }
        cVar2.f42830n = z2 ? "1" : "2";
        cVar2.f42831o = String.valueOf(j2);
        com.smartdigimkt.m3.e eVar = cVar.f41832w;
        cVar2.f42832p = eVar != null ? eVar.f41980v1 : "";
        cVar2.f42833q = eVar != null ? com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41977u1, "") : "";
        cVar2.f42834r = cVar.f41832w != null ? com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41989y1, "") : "";
        cVar2.f42835s = cVar.f41832w != null ? com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41992z1, "") : "";
        if (!z2) {
            cVar2.f42836t = String.valueOf(i2);
            cVar2.f42837u = str;
        }
        if (j3 > 0) {
            cVar2.f42838v = String.valueOf(j3);
        }
        cVar2.f42839w = str2;
        cVar2.f42840x = cVar.f41832w != null ? com.smartdigimkt.c0.g.a(new StringBuilder(), cVar.f41832w.f41840A1, "") : "";
        a(cVar2);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, int i2, int i3) {
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004747";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42829m = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        }
        cVar2.f42830n = String.valueOf(i2);
        if (i3 > 0) {
            cVar2.f42831o = String.valueOf(i3);
        }
        cVar2.f42832p = String.valueOf(cVar.f41824o);
        cVar2.f42833q = cVar.f41820k;
        cVar2.f42834r = cVar.f41821l;
        a(cVar2);
    }

    public static void a(int i2, int i3, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, boolean z2) {
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004748";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42829m = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        }
        if (TextUtils.isEmpty(str)) {
            cVar2.f42830n = cVar.f41820k;
        } else {
            cVar2.f42830n = str;
        }
        cVar2.f42831o = cVar.f41821l;
        cVar2.f42832p = String.valueOf(i2);
        if (i2 != 1 && z2) {
            cVar2.f42833q = z2 ? "1" : "2";
        }
        if (i2 == 3 && i3 > 0) {
            cVar2.f42834r = String.valueOf(i3);
        }
        a(cVar2);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, String str, String str2) {
        com.smartdigimkt.m3.e eVar;
        if (aVar != null) {
            try {
                com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
                cVar2.f42817a = "3000015";
                cVar2.a(aVar);
                cVar2.f42828l = cVar.f41806a;
                cVar2.f42829m = aVar.f41631e;
                cVar2.f42830n = str;
                if (str2 != null && !str2.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str2);
                    cVar2.f42831o = new JSONArray((Collection) arrayList).toString();
                }
                if (str == "3" && (eVar = cVar.f41832w) != null) {
                    cVar2.f42832p = String.valueOf(eVar.f41913Z);
                }
                a(cVar2);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(com.smartdigimkt.m3.k kVar, com.smartdigimkt.l3.a aVar, int i2, ArrayList arrayList, ArrayList arrayList2, LinkedHashMap linkedHashMap) {
        if (aVar == null) {
            return;
        }
        if (i2 == 8 || i2 == 9 || i2 == 24 || i2 == 10 || i2 == 36) {
            try {
                if (!arrayList.isEmpty() && arrayList2 != null && !arrayList2.isEmpty()) {
                    int i3 = i2 == 8 ? 1 : i2 == 9 ? 2 : i2 == 24 ? 3 : i2 == 10 ? 4 : 5;
                    com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
                    cVar.f42817a = "3000016";
                    cVar.a(aVar);
                    cVar.f42828l = kVar instanceof com.smartdigimkt.m3.b ? String.valueOf(((com.smartdigimkt.m3.b) kVar).f42054o0) : "";
                    cVar.f42829m = kVar.f41806a;
                    cVar.f42830n = String.valueOf(i3);
                    cVar.f42831o = new JSONArray((Collection) arrayList).toString();
                    cVar.f42832p = new JSONArray((Collection) arrayList2).toString();
                    String string = (linkedHashMap == null || linkedHashMap.isEmpty()) ? "{}" : new JSONObject(linkedHashMap).toString();
                    if (i3 == 1) {
                        cVar.f42833q = string;
                    } else if (i3 == 2) {
                        cVar.f42834r = string;
                    } else if (i3 == 3) {
                        cVar.f42835s = string;
                    } else if (i3 == 4) {
                        cVar.f42836t = string;
                    } else {
                        cVar.f42837u = string;
                    }
                    a(cVar);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(int i2, com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar) {
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004749";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42829m = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        }
        cVar2.f42830n = cVar.f41820k;
        cVar2.f42831o = String.valueOf(i2);
        a(cVar2);
    }

    public static void a(com.smartdigimkt.l3.a aVar, int i2, String str, LinkedHashMap linkedHashMap, int i3, int i4, int i5, String str2, int i6, int i7, long j2, String str3, int i8, boolean z2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004675";
        cVar.a(aVar);
        cVar.f42828l = str;
        cVar.f42829m = String.valueOf(i2);
        cVar.f42831o = String.valueOf(i3);
        cVar.f42832p = String.valueOf(i4);
        cVar.f42833q = String.valueOf(i5);
        cVar.f42834r = str2;
        cVar.f42835s = String.valueOf(i6);
        if (i7 >= 0) {
            cVar.f42836t = String.valueOf(i7);
        }
        if (j2 > 0) {
            cVar.f42837u = String.valueOf(j2);
        }
        if (!TextUtils.isEmpty(str3)) {
            cVar.f42838v = str3;
        }
        if (i8 > 0) {
            cVar.f42839w = String.valueOf(i8);
        }
        if (linkedHashMap != null && linkedHashMap.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    jSONObject.put((String) entry.getKey(), (JSONArray) entry.getValue());
                }
                cVar.f42840x = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        if (z2) {
            cVar.f42841y = "1";
        }
        a(cVar);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, int i2, boolean z2, int i3, String str, int i4, int i5) {
        com.smartdigimkt.m3.e eVar;
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
        cVar2.f42817a = "1004719";
        cVar2.a(aVar);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42828l = bVar.f42054o0;
            cVar2.f42829m = bVar.f41806a;
        }
        cVar2.f42830n = z2 ? "2" : "1";
        if (i3 > 0) {
            cVar2.f42831o = String.valueOf(i3);
            if (!TextUtils.isEmpty(str)) {
                cVar2.f42832p = str;
            }
            if (i4 > 0) {
                cVar2.f42833q = String.valueOf(i4);
            }
        } else {
            cVar2.f42831o = "1";
        }
        cVar2.f42834r = String.valueOf(aVar.f41628b);
        if (cVar != null && (eVar = cVar.f41832w) != null) {
            cVar2.f42835s = eVar.f41981w;
        }
        cVar2.f42836t = String.valueOf(i2);
        cVar2.f42837u = String.valueOf(i5);
        a(cVar2);
    }

    public static void a(String str, String str2, String str3, int i2, String str4, long j2, long j3, com.smartdigimkt.m3.c cVar, int i3, long j4) {
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
        cVar2.f42817a = "1004642";
        cVar2.f42818b = str;
        if (cVar != null) {
            cVar2.f42811Q = cVar.f41802W;
            cVar2.f42812R = cVar.f41803X;
            cVar2.f42837u = cVar.f41822m;
            cVar2.f42839w = cVar.f41820k;
            if (cVar instanceof com.smartdigimkt.m3.b) {
                cVar2.f42838v = ((com.smartdigimkt.m3.b) cVar).f42054o0;
            }
        }
        cVar2.f42828l = str2;
        cVar2.f42829m = str3;
        cVar2.f42830n = String.valueOf(i2);
        if (i2 == 3 || i2 == 10) {
            cVar2.f42831o = str4;
        } else if (i2 == 2) {
            cVar2.f42832p = String.valueOf(j2);
            cVar2.f42833q = String.valueOf(j3 / 1024.0f);
        }
        if (i2 == 11) {
            cVar2.f42834r = "" + i3;
        }
        if (i2 == 13) {
            if (cVar != null && TextUtils.isEmpty(cVar.f41822m) && TextUtils.isEmpty(cVar.f41820k)) {
                cVar2.f42835s = "1";
            } else {
                cVar2.f42835s = "0";
            }
        }
        if (i2 == 6 || i2 == 9 || i2 == 12) {
            cVar2.f42836t = String.valueOf(System.currentTimeMillis() - j4);
        }
        a(cVar2);
    }

    public static void a(com.smartdigimkt.m3.k kVar, ArrayList arrayList, ArrayList arrayList2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004771";
        cVar.f42818b = kVar.f41833x;
        cVar.f42811Q = kVar.f41802W;
        cVar.f42812R = kVar.f41803X;
        cVar.f42828l = kVar.f41806a;
        cVar.f42829m = kVar.f41822m;
        if (kVar instanceof com.smartdigimkt.m3.b) {
            cVar.f42830n = ((com.smartdigimkt.m3.b) kVar).f42054o0;
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray((Collection) arrayList);
                JSONArray jSONArray2 = new JSONArray((Collection) arrayList2);
                jSONObject.put(cb.f11292o, jSONArray);
                jSONObject.put("fail", jSONArray2);
                cVar.f42831o = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        a(cVar);
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, int i2, int i3, String str3) {
        if (aVar == null || cVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004650";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        cVar2.f42829m = String.valueOf(cVar.e());
        cVar2.f42830n = str;
        cVar2.f42831o = str2;
        cVar2.f42832p = String.valueOf(i2);
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42834r = String.valueOf(((com.smartdigimkt.m3.b) cVar).f42054o0);
        }
        cVar2.f42835s = String.valueOf(aVar.f41628b);
        if (i3 > 0) {
            cVar2.f42836t = String.valueOf(i3);
        }
        cVar2.f42837u = str3;
        a(cVar2);
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, int i2) {
        if (aVar == null || cVar == null) {
            return;
        }
        boolean z2 = i2 == 0;
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "1004728";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        cVar2.f42829m = String.valueOf(aVar.f41644r.f41938h1);
        cVar2.f42830n = String.valueOf(z2 ? 1 : 2);
        cVar2.f42831o = str;
        cVar2.f42832p = str2;
        if (!z2) {
            cVar2.f42833q = String.valueOf(i2);
        }
        a(cVar2);
    }

    public static void a(com.smartdigimkt.l3.a aVar, String str, String str2, String str3, String str4, long j2, String str5, String str6, String str7, String str8, String str9, String str10) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004715";
        cVar.a(aVar);
        cVar.f42828l = str;
        cVar.f42829m = str2;
        cVar.f42830n = str3;
        cVar.f42831o = str4;
        cVar.f42832p = "" + j2;
        cVar.f42833q = str5;
        cVar.f42834r = str6;
        cVar.f42835s = str7;
        cVar.f42836t = str8;
        cVar.f42837u = str9;
        cVar.f42838v = str10;
        a(cVar);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, boolean z2, String str, double d2, double d3, long j2, long j3, long j4, int i2) {
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(null, null);
        cVar2.f42817a = "1004764";
        cVar2.a(aVar);
        if (cVar != null) {
            cVar2.f42828l = String.valueOf(cVar.e());
            if (cVar instanceof com.smartdigimkt.m3.b) {
                cVar2.f42830n = ((com.smartdigimkt.m3.b) cVar).f42054o0;
                cVar2.f42831o = cVar.f41806a;
            }
            cVar2.f42832p = cVar.f41818i;
        }
        if (aVar != null) {
            cVar2.f42829m = String.valueOf(aVar.f41628b);
            com.smartdigimkt.m3.e eVar = aVar.f41644r;
            if (eVar != null) {
                cVar2.f42837u = String.valueOf(eVar.f41895T);
            }
        }
        cVar2.f42833q = z2 ? "1" : "2";
        if (!TextUtils.isEmpty(str)) {
            cVar2.f42834r = str;
        }
        if (d2 > 0.0d) {
            cVar2.f42835s = String.valueOf(Math.round(d2 / 1024.0d));
        }
        if (d3 > 0.0d) {
            cVar2.f42836t = String.valueOf(Math.round(d3 / 1024.0d));
        }
        if (j2 > 0) {
            cVar2.f42838v = String.valueOf(j2);
        }
        if (j3 > 0) {
            cVar2.f42839w = String.valueOf(j3);
        }
        if (j4 > 0) {
            cVar2.f42840x = String.valueOf(j4);
        }
        if (i2 > 0) {
            cVar2.f42841y = String.valueOf(i2);
        }
        a(cVar2);
    }

    public static void a(com.smartdigimkt.m3.b bVar, com.smartdigimkt.l3.a aVar, String str, com.smartdigimkt.m3.j jVar, boolean z2, int i2) {
        String str2;
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(66));
        cVar.f42817a = "1004704";
        cVar.a(aVar);
        if (bVar != null) {
            str2 = bVar.f41806a;
        } else {
            str2 = "";
        }
        cVar.f42828l = str2;
        cVar.f42829m = "2";
        cVar.f42830n = String.valueOf(aVar.f41628b);
        if (!TextUtils.isEmpty(str)) {
            cVar.f42831o = str;
        }
        cVar.f42832p = String.valueOf(jVar.f42038b - jVar.f42037a);
        cVar.f42833q = String.valueOf(jVar.f42039c - jVar.f42037a);
        if (bVar != null) {
            cVar.f42834r = bVar.f41779x0 == 1 ? "1" : "0";
        } else {
            cVar.f42834r = "0";
        }
        cVar.f42835s = String.valueOf(jVar.f42041e - jVar.f42040d);
        cVar.f42836t = aVar.f41646t ? "1" : "0";
        cVar.f42837u = String.valueOf(jVar.f42038b - jVar.f42039c);
        cVar.f42838v = z2 ? "1" : "0";
        long j2 = jVar.f42042f;
        if (j2 > 0) {
            long j3 = jVar.f42043g;
            if (j3 > 0) {
                cVar.f42839w = String.valueOf(j3 - j2);
            }
        }
        cVar.f42840x = String.valueOf(i2);
        a(cVar);
    }

    public static void a(String str, String str2) {
        boolean zIsEmpty = str.isEmpty();
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004729";
        cVar.f42828l = Build.MANUFACTURER;
        cVar.f42829m = !zIsEmpty ? "1" : "2";
        if (!zIsEmpty) {
            cVar.f42830n = str;
        } else {
            cVar.f42831o = str2;
        }
        a(cVar);
    }

    public static void a(int i2, int i3, String str, long j2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "1004769";
        try {
            cVar.f42828l = Build.MANUFACTURER;
        } catch (Throwable unused) {
        }
        cVar.f42829m = String.valueOf(i2);
        cVar.f42830n = String.valueOf(i3);
        if (!TextUtils.isEmpty(str)) {
            cVar.f42831o = str;
        }
        cVar.f42832p = String.valueOf(j2);
        a(cVar);
    }

    public static void a(com.smartdigimkt.l3.a aVar, com.smartdigimkt.m3.c cVar, String str, String str2, String str3, String str4) {
        if (aVar == null || cVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(66));
        cVar2.f42817a = "1004743";
        cVar2.f42818b = aVar.f41632f;
        cVar2.f42819c = aVar.f41627a;
        cVar2.a(aVar);
        cVar2.f42828l = str;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            com.smartdigimkt.m3.b bVar = (com.smartdigimkt.m3.b) cVar;
            cVar2.f42829m = String.valueOf(bVar.f42054o0);
            cVar2.f42830n = String.valueOf(bVar.f41806a);
        }
        cVar2.f42831o = String.valueOf(aVar.f41628b);
        cVar2.f42832p = str2;
        cVar2.f42833q = "2";
        cVar2.f42834r = str3;
        cVar2.f42835s = str4;
        a(cVar2);
    }

    public static void a(boolean z2, String str, com.smartdigimkt.j1.f fVar, long j2, int i2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", null);
        cVar.f42817a = "3000003";
        if (fVar != null) {
            com.smartdigimkt.q3.a aVar = fVar.f41076l;
            if (aVar != null) {
                cVar.a(aVar);
            }
            com.smartdigimkt.m3.b bVar = fVar.f41069e;
            if (bVar != null) {
                cVar.f42831o = bVar.f42054o0;
            }
            cVar.f42832p = bVar != null ? bVar.f41806a : "";
        }
        cVar.f42828l = z2 ? "1" : "0";
        cVar.f42829m = String.valueOf(i2);
        cVar.f42830n = String.valueOf(j2);
        cVar.f42819c = str;
        a(cVar);
    }

    public static void a(long j2, long j3, String str, String str2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "3000009";
        if (!TextUtils.isEmpty(str2)) {
            cVar.f42819c = str2;
        }
        cVar.f42828l = str;
        cVar.f42829m = String.valueOf(j2);
        cVar.f42830n = String.valueOf(j3);
        cVar.f42831o = String.valueOf(j3 - j2);
        a(cVar);
    }

    public static void a(String str, String str2, String str3, String str4) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "3000010";
        cVar.f42820d = str3;
        cVar.f42828l = str2;
        cVar.f42829m = str;
        cVar.f42830n = str4;
        a(cVar);
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, boolean z2, boolean z3) {
        String string;
        if (cVar == null || aVar == null) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c(String.valueOf(aVar.f41628b), String.valueOf(aVar.f41636j));
        cVar2.f42817a = "3000011";
        cVar2.a(aVar);
        cVar2.f42828l = cVar.f41806a;
        if (cVar instanceof com.smartdigimkt.m3.b) {
            cVar2.f42829m = ((com.smartdigimkt.m3.b) cVar).f42054o0;
        }
        com.smartdigimkt.m3.e eVar = aVar.f41644r;
        if (eVar != null) {
            cVar2.f42830n = String.valueOf(eVar.f41965q1);
            cVar2.f42833q = String.valueOf(aVar.f41644r.f41882O1);
            com.smartdigimkt.m3.e eVar2 = aVar.f41644r;
            if (eVar2.f41882O1 == 2) {
                string = String.valueOf(eVar2.f41891R1);
            } else {
                List list = eVar2.f41888Q1;
                if (list != null) {
                    string = list.toString();
                } else {
                    string = "";
                }
            }
            cVar2.f42834r = string;
            cVar2.f42835s = String.valueOf(aVar.f41644r.f41968r1);
        }
        cVar2.f42831o = z2 ? "1" : "2";
        cVar2.f42832p = z3 ? "1" : "2";
        a(cVar2);
    }

    public static void a(String str, String str2, String str3, String str4, String str5, long j2) {
        com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c(null, null);
        cVar.f42817a = "3000012";
        cVar.f42828l = str;
        cVar.f42829m = str2;
        cVar.f42830n = str3;
        cVar.f42831o = str4;
        cVar.f42832p = str5;
        cVar.f42834r = String.valueOf(SystemClock.elapsedRealtime() - j2);
        a(cVar);
    }
}
