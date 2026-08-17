package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.AdError;

/* loaded from: classes5.dex */
public final class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public com.smartdigimkt.j1.f f40076a;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.smartdigimkt.e5.g r5, java.lang.String r6, java.lang.String r7, com.smartdigimkt.sdk.api.AdError r8) {
        /*
            java.lang.String r0 = "fail"
            if (r5 != 0) goto L6
            goto Lae
        L6:
            int r1 = r6.hashCode()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "request_result"
            r3 = 1
            r4 = 9
            switch(r1) {
                case -1746754611: goto L6f;
                case -239580146: goto L65;
                case 94750088: goto L5b;
                case 94756344: goto L51;
                case 120623625: goto L47;
                case 149999551: goto L3d;
                case 629233382: goto L33;
                case 1879083344: goto L29;
                case 1912965437: goto L1e;
                case 1925938071: goto L14;
                default: goto L12;
            }
        L12:
            goto L77
        L14:
            java.lang.String r1 = "play_start"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 6
            goto L78
        L1e:
            java.lang.String r1 = "play_error"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 8
            goto L78
        L29:
            java.lang.String r1 = "play_end"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 7
            goto L78
        L33:
            java.lang.String r1 = "deeplink"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = r4
            goto L78
        L3d:
            java.lang.String r1 = "show_failed"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = r3
            goto L78
        L47:
            java.lang.String r1 = "impression"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 5
            goto L78
        L51:
            java.lang.String r1 = "close"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 3
            goto L78
        L5b:
            java.lang.String r1 = "click"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 2
            goto L78
        L65:
            java.lang.String r1 = "rewarded"
            boolean r6 = r6.equals(r1)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 4
            goto L78
        L6f:
            boolean r6 = r6.equals(r2)     // Catch: java.lang.Throwable -> Lae
            if (r6 == 0) goto L77
            r6 = 0
            goto L78
        L77:
            r6 = -1
        L78:
            java.lang.String r1 = "success"
            if (r6 == 0) goto L8b
            if (r6 == r3) goto L85
            if (r6 == r4) goto L81
            goto Lae
        L81:
            r1.equals(r7)     // Catch: java.lang.Throwable -> Lae
            return
        L85:
            com.smartdigimkt.e5.a r5 = (com.smartdigimkt.e5.a) r5     // Catch: java.lang.Throwable -> Lae
            r5.a(r8)     // Catch: java.lang.Throwable -> Lae
            return
        L8b:
            boolean r5 = r1.equals(r7)     // Catch: java.lang.Throwable -> Lae
            if (r5 == 0) goto L92
            goto Lae
        L92:
            boolean r5 = r0.equals(r7)     // Catch: java.lang.Throwable -> Lae
            if (r5 == 0) goto La9
            boolean r5 = r8 instanceof com.smartdigimkt.k4.a     // Catch: java.lang.Throwable -> Lae
            if (r5 == 0) goto Lae
            r5 = r8
            com.smartdigimkt.k4.a r5 = (com.smartdigimkt.k4.a) r5     // Catch: java.lang.Throwable -> Lae
            com.smartdigimkt.q3.a r5 = r5.f41393a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r6 = r8.getErrorInfo()     // Catch: java.lang.Throwable -> Lae
            com.smartdigimkt.c5.w.a(r5, r2, r0, r6)     // Catch: java.lang.Throwable -> Lae
            return
        La9:
            java.lang.String r5 = "timeout"
            r5.equals(r7)     // Catch: java.lang.Throwable -> Lae
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e5.a.a(com.smartdigimkt.e5.g, java.lang.String, java.lang.String, com.smartdigimkt.sdk.api.AdError):void");
    }

    public final void a(AdError adError) {
        String code;
        String message;
        String str;
        String str2 = "";
        com.smartdigimkt.j1.f fVar = this.f40076a;
        if (fVar == null) {
            return;
        }
        try {
            com.smartdigimkt.q3.c cVar = new com.smartdigimkt.q3.c("", null);
            cVar.f42817a = "3000002";
            com.smartdigimkt.q3.a aVar = fVar.f41076l;
            if (aVar != null) {
                cVar.a(aVar);
                com.smartdigimkt.a5.e eVarA = com.smartdigimkt.z4.m.a().a(aVar.f42748a);
                if (eVarA == null) {
                    str = "";
                } else {
                    str = eVarA.f39409C;
                }
                cVar.f42825i = str;
            }
            if (adError == null) {
                code = "";
            } else {
                code = adError.getCode();
            }
            cVar.f42828l = code;
            if (adError == null) {
                message = "";
            } else {
                message = adError.getMessage();
            }
            cVar.f42829m = message;
            com.smartdigimkt.m3.b bVar = fVar.f41069e;
            if (bVar != null) {
                str2 = bVar.f41806a;
            }
            cVar.f42830n = str2;
            if (bVar != null) {
                cVar.f42831o = bVar.f42054o0;
            }
            com.smartdigimkt.y3.h.a(cVar);
        } catch (Throwable unused) {
        }
    }
}
