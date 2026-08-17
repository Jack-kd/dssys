package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.api.ATSDK;
import com.anythink.core.common.d.i;
import com.anythink.core.common.h.ap;

/* loaded from: classes2.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static volatile i f4553a;

    private i() {
    }

    private static String a(String str) {
        return str;
    }

    public static String b(boolean z2) {
        String str = z2 ? h() ? i.e.f2601D : i.e.f2623h : h() ? i.e.f2602E : i.e.f2624i;
        String strAD = "";
        if (!ATSDK.isCnSDK()) {
            return com.anythink.core.common.g.c.a().a(str, "", z2);
        }
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        if (bVarB != null) {
            strAD = z2 ? bVarB.aD() : bVarB.aE();
        }
        com.anythink.core.common.g.c.a();
        return com.anythink.core.common.g.c.b(str, strAD);
    }

    public static String c() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2612O : i.e.f2635t, "tracking");
        return bVarB != null ? a(bVarB.r(), strA) : strA;
    }

    public static String d() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2606I : i.e.f2628m, "tracking");
        return bVarB != null ? a(bVarB.ab(), strA) : strA;
    }

    public static String e() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2604G : i.e.f2626k, "agent");
        return bVarB != null ? a(bVarB.ag(), strA) : strA;
    }

    public static String f() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        if (bVarB != null) {
            return a(bVarB.X(), "https:///gdpr/PrivacyPolicySetting.html");
        }
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        String gdprUrl = rVarC != null ? rVarC.getGdprUrl() : "";
        return !TextUtils.isEmpty(gdprUrl) ? gdprUrl : "https:///gdpr/PrivacyPolicySetting.html";
    }

    public static String g() {
        return i.e.f2638w;
    }

    public static boolean h() {
        return com.anythink.core.common.d.s.b().L() && com.anythink.core.common.d.s.b().K();
    }

    public static String i() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2603F : i.e.f2625j, "smart_wf");
        return bVarB != null ? a(bVarB.ar(), strA) : strA;
    }

    public static String j() {
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        String cdnUrl = rVarC != null ? rVarC.getCdnUrl() : "";
        if (TextUtils.isEmpty(cdnUrl)) {
            cdnUrl = "https://se.anythinktech.com/v2/open/ns";
        }
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        if (bVarA == null) {
            return cdnUrl;
        }
        String strQ = bVarA.Q();
        if (TextUtils.isEmpty(strQ)) {
            return cdnUrl;
        }
        if (!strQ.startsWith("http")) {
            return com.anythink.core.common.v.p.a(cdnUrl, strQ);
        }
        return strQ + "/v2/open/ns";
    }

    public static String k() {
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        String cdnTcpDm = (rVarC == null || rVarC.getOsDmEntity() == null) ? "" : rVarC.getOsDmEntity().getCdnTcpDm();
        if (TextUtils.isEmpty(cdnTcpDm)) {
            cdnTcpDm = i.g.b.f2657c;
        }
        if (bVarA != null) {
            String strAv = bVarA.av();
            if (!TextUtils.isEmpty(strAv)) {
                return strAv;
            }
        }
        return cdnTcpDm;
    }

    public static int l() {
        int iAw;
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        return (bVarB == null || (iAw = bVarB.aw()) <= 0) ? i.g.b.f2655a : iAw;
    }

    public static String m() {
        String str = h() ? i.e.f2615R : i.e.f2598A;
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        return (bVarB == null || TextUtils.isEmpty(bVarB.ax())) ? com.anythink.core.common.g.c.a().a(str, "") : bVarB.ax();
    }

    public static String n() {
        com.anythink.core.common.d.r rVarC = com.anythink.core.common.d.s.b().c();
        String cdnUrl = rVarC != null ? rVarC.getCdnUrl() : "";
        String strReplace = TextUtils.isEmpty(cdnUrl) ? "https://se.anythinktech.com/v2/open/api_hb" : cdnUrl.replace("/v2/open/ns", "/v2/open/api_hb");
        com.anythink.core.e.b bVarA = com.anythink.core.e.d.a();
        if (bVarA == null) {
            return strReplace;
        }
        String strQ = bVarA.Q();
        if (TextUtils.isEmpty(strQ)) {
            return strReplace;
        }
        if (strQ.startsWith("http")) {
            return strQ + "/v2/open/api_hb";
        }
        return "https://" + strQ + "/v2/open/api_hb";
    }

    private static String o() {
        return com.anythink.core.common.g.c.a().a(h() ? i.e.f2613P : i.e.f2636u, "");
    }

    private static String p() {
        ap apVarU = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p()).u();
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2609L : i.e.f2631p, "bid");
        return apVarU != null ? a(apVarU.b(), strA) : strA;
    }

    private static String q() {
        ap apVarU = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p()).u();
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2610M : i.e.f2632q, "tracking");
        return apVarU != null ? a(apVarU.d(), strA) : strA;
    }

    private static String r() {
        ap apVarU = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p()).u();
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2611N : i.e.f2633r, "bid");
        return apVarU != null ? a(apVarU.a(), strA) : strA;
    }

    private static String s() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2605H : i.e.f2627l, "tracking");
        if (bVarB != null) {
            String strAN = bVarB.aN();
            if (!TextUtils.isEmpty(strAN)) {
                if (!strAN.startsWith("http")) {
                    return com.anythink.core.common.v.p.a(strA, strAN);
                }
                return strAN + "/v2/open/anr";
            }
        }
        return strA;
    }

    private static String t() {
        return com.anythink.core.common.g.c.a().a(h() ? i.e.f2614Q : i.e.f2641z, "");
    }

    private static String u() {
        return k();
    }

    private static int v() {
        return l();
    }

    public static i a() {
        if (f4553a == null) {
            synchronized (i.class) {
                try {
                    if (f4553a == null) {
                        f4553a = new i();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4553a;
    }

    public static String a(boolean z2) {
        String str;
        if (z2) {
            str = h() ? i.e.f2599B : i.e.f2621f;
        } else {
            str = h() ? i.e.f2600C : i.e.f2622g;
        }
        String strAD = "";
        if (ATSDK.isCnSDK()) {
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p());
            if (bVarB != null) {
                strAD = z2 ? bVarB.aD() : bVarB.aE();
            }
            com.anythink.core.common.g.c.a();
            return com.anythink.core.common.g.c.b(str, strAD);
        }
        return com.anythink.core.common.g.c.a().a(str, "", z2);
    }

    public static String b() {
        return h() ? i.e.f2607J : i.e.f2629n;
    }

    public static String b(com.anythink.core.e.m mVar) {
        return mVar.N();
    }

    public static String a(com.anythink.core.e.m mVar, boolean z2) {
        if (z2) {
            String strS = mVar.S();
            mVar.aG();
            if (!TextUtils.isEmpty(strS)) {
                return strS;
            }
        }
        ap apVarU = com.anythink.core.e.d.a(com.anythink.core.common.d.s.b().g()).b(com.anythink.core.common.d.s.b().p()).u();
        String strA = com.anythink.core.common.g.c.a().a(h() ? i.e.f2608K : i.e.f2630o, "bid");
        return apVarU != null ? a(apVarU.c(), strA) : strA;
    }

    public static String a(com.anythink.core.e.m mVar) {
        String strO = mVar.O();
        return TextUtils.isEmpty(strO) ? "" : strO;
    }

    private static String a(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }
}
