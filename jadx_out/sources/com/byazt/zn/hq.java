package com.byazt.zn;

import android.os.Looper;
import android.text.TextUtils;
import com.anythink.core.c.d.c;
import com.byazt.xci.mp;
import com.sigmob.sdk.base.mta.PointCategory;

@com.byazt.kj.hp(hp = {0, 1, 442, 158})
/* loaded from: classes3.dex */
public class hq {
    public static void hp(final mp mpVar, final Double d2) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb(PointCategory.WIN) { // from class: com.byazt.zn.hq.1
                @Override // java.lang.Runnable
                public void run() {
                    hq.jx(mpVar, d2);
                }
            });
        } else {
            jx(mpVar, d2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(mp mpVar, Double d2) {
        if (mpVar == null || mpVar.rp() == null) {
            return;
        }
        mpVar.xm().jx(1);
        try {
            Object obj = mpVar.rp().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mpVar.rp().get("nurl");
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d2 != null) {
                    strReplace = strReplace.replace(c.f2022f, String.valueOf(d2));
                }
                com.byazt.jz.sz.hp().hp(hp(mpVar, strReplace, "${AUCTION_EXT}"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(final mp mpVar, final Double d2, final String str, final String str2) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("loss") { // from class: com.byazt.zn.hq.2
                @Override // java.lang.Runnable
                public void run() {
                    hq.jx(mpVar, d2, str, str2);
                }
            });
        } else {
            jx(mpVar, d2, str, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034 A[PHI: r0
      0x0034: PHI (r0v3 java.lang.String) = (r0v2 java.lang.String), (r0v5 java.lang.String) binds: [B:8:0x001b, B:13:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String hp(com.byazt.xci.mp r3, java.lang.String r4, java.lang.String r5) throws java.lang.Exception {
        /*
            if (r3 == 0) goto L74
            if (r4 == 0) goto L74
            boolean r0 = r4.contains(r5)
            if (r0 != 0) goto Lb
            goto L74
        Lb:
            java.lang.String r3 = r3.w_()
            com.byazt.lca.a r0 = com.byazt.lca.a.hp()
            r1 = 0
            android.util.Pair r3 = r0.hp(r3, r1)
            java.lang.String r0 = ""
            r1 = 3
            if (r3 == 0) goto L34
            java.lang.Object r2 = r3.second
            if (r2 == 0) goto L29
            org.json.JSONObject r2 = (org.json.JSONObject) r2
            java.lang.String r0 = "message"
            java.lang.String r0 = r2.optString(r0)
        L29:
            java.lang.Object r3 = r3.first
            if (r3 == 0) goto L34
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            goto L35
        L34:
            r3 = r1
        L35:
            if (r3 == r1) goto L69
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Exception -> L69
            r3.<init>(r4)     // Catch: java.lang.Exception -> L69
            java.lang.String r3 = r3.getQuery()     // Catch: java.lang.Exception -> L69
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L69
            if (r3 == 0) goto L58
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L69
            r3.<init>()     // Catch: java.lang.Exception -> L69
            r3.append(r4)     // Catch: java.lang.Exception -> L69
            java.lang.String r1 = "?abort_aes=1"
            r3.append(r1)     // Catch: java.lang.Exception -> L69
            java.lang.String r4 = r3.toString()     // Catch: java.lang.Exception -> L69
            goto L69
        L58:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L69
            r3.<init>()     // Catch: java.lang.Exception -> L69
            r3.append(r4)     // Catch: java.lang.Exception -> L69
            java.lang.String r1 = "&abort_aes=1"
            r3.append(r1)     // Catch: java.lang.Exception -> L69
            java.lang.String r4 = r3.toString()     // Catch: java.lang.Exception -> L69
        L69:
            java.lang.String r3 = "UTF-8"
            java.lang.String r3 = java.net.URLEncoder.encode(r0, r3)
            java.lang.String r3 = r4.replace(r5, r3)
            return r3
        L74:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.hq.hp(com.byazt.xci.mp, java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(mp mpVar, Double d2, String str, String str2) {
        if (mpVar == null || mpVar.rp() == null) {
            return;
        }
        try {
            mpVar.xm().jx(2);
            Object obj = mpVar.rp().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mpVar.rp().get("lurl");
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d2 != null) {
                    strReplace = strReplace.replace(c.f2018b, String.valueOf(d2));
                }
                if (str != null) {
                    strReplace = strReplace.replace(c.f2020d, str);
                }
                if (str2 != null) {
                    strReplace = strReplace.replace("${AUCTION_WINNER}", str2);
                }
                com.byazt.jz.sz.hp().hp(hp(mpVar, strReplace, "${AUCTION_EXT}"));
            }
        } catch (Throwable unused) {
        }
    }
}
