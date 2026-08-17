package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class bu {

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f30908d = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    private Context f30909a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f30910b;

    /* renamed from: c, reason: collision with root package name */
    private int f30911c;

    public bu(Context context, int i2, boolean z2) {
        this.f30909a = context;
        this.f30910b = z2;
        this.f30911c = i2;
    }

    /* JADX WARN: Not initialized variable reg: 16, insn: 0x054d: RETURN (r16 I:org.json.JSONObject) A[SYNTHETIC], block:B:187:? */
    public JSONObject a() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            JSONObject jSONObject3 = new JSONObject();
            h hVarA = h.a(this.f30909a, "re_po_rt");
            boolean zE = hVarA.e("a1_p_s_p_s");
            boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            jSONObject3.put("11006", zE ? 1 : 0);
            jSONObject3.put("11029", zE2 ? 1 : 0);
            if (hVarA.b(dd.au, 1) == 1 && (zE || zE2)) {
                String strA = bf.a(this.f30909a);
                if (!TextUtils.isEmpty(strA) && !strA.startsWith("RISK")) {
                    jSONObject3.put("01001", f.a(strA));
                }
                String strC = bf.c(this.f30909a);
                if (!TextUtils.isEmpty(strC) && !strC.startsWith("RISK")) {
                    jSONObject3.put("01003", strC);
                }
                String strB = bf.b(this.f30909a, 0);
                if (!TextUtils.isEmpty(strB) && !strB.startsWith("RISK")) {
                    jSONObject3.put("01019", strB);
                }
                String strB2 = bf.b(this.f30909a, 1);
                if (!TextUtils.isEmpty(strB2) && !strB2.startsWith("RISK")) {
                    jSONObject3.put("01004", f.a(strB2));
                }
            }
            int iB = hVarA.b(dd.at, 1);
            if (iB == 1 && (zE || zE2)) {
                String strF = bf.f(this.f30909a);
                if (!TextUtils.isEmpty(strF) && !strF.startsWith("RISK")) {
                    jSONObject3.put("01013", strF);
                }
            }
            if (hVarA.b(dd.av, 1) == 1 && (zE || zE2)) {
                String strD = bf.d(this.f30909a);
                if (!TextUtils.isEmpty(strD) && !strD.startsWith("RISK")) {
                    jSONObject3.put("01007", strD);
                }
            }
            if (hVarA.b(dd.aw, 1) == 1 && (zE || zE2)) {
                jSONObject3.put("01011", bf.e(this.f30909a));
            }
            if (zE || zE2) {
                String strH = bf.h();
                if ((TextUtils.isEmpty(strH) || strH.startsWith("RISK")) && strH == null) {
                    jSONObject3.put("07005", "");
                } else {
                    jSONObject3.put("07005", strH);
                }
                jSONObject3.put("07006", bf.g());
            }
            if (hVarA.b(dd.ay, 1) == 1 && (zE || zE2)) {
                String strP = bf.p(this.f30909a);
                if (!TextUtils.isEmpty(strP) && !strP.startsWith("RISK")) {
                    jSONObject3.put("01016", strP);
                }
            }
            if (zE || zE2) {
                try {
                    double dB = bf.b();
                    if (dB > 0.0d) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(dB);
                        jSONObject3.put("09002", sb.toString());
                    }
                    double dC = bf.c();
                    if (dC > 0.0d) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(dC);
                        jSONObject3.put("09003", sb2.toString());
                    }
                } catch (Exception unused) {
                }
            }
            jSONObject3.put("11013", Integer.parseInt(bv.a(this.f30909a.getApplicationContext()), 2));
            jSONObject3.put("11012", bv.b(this.f30909a));
            try {
                jSONObject3.put("11202", bf.b(com.kwad.sdk.e.b.QY().QO()));
                jSONObject3.put("11204", bf.b(com.kwad.sdk.e.b.QY().QU()));
                jSONObject3.put("11205", bf.b(com.kwad.sdk.e.b.QY().getDeviceId()));
                jSONObject3.put("11206", bf.b(com.kwad.sdk.e.b.QY().getIccId()));
                jSONObject3.put("11207", bf.b(com.kwad.sdk.e.b.QY().getIMEI()));
                jSONObject3.put("11208", bf.b(com.kwad.sdk.e.b.QY().QP()));
                jSONObject3.put("11209", bf.b(com.kwad.sdk.e.b.QY().QQ()));
                jSONObject3.put("11210", bf.b(com.kwad.sdk.e.b.QY().QR()));
                jSONObject3.put("11211", bf.b(com.kwad.sdk.e.b.QY().getIp()));
                jSONObject3.put("11212", bf.b(com.kwad.sdk.e.b.QY().getLocation()));
                jSONObject3.put("11213", bf.b(com.kwad.sdk.e.b.QY().getOaid()));
                jSONObject3.put("11214", bf.b(com.kwad.sdk.e.b.QY().getMac()));
                jSONObject3.put("11215", bf.b(com.kwad.sdk.e.b.QY().QT()));
                jSONObject3.put("11216", bf.b(com.kwad.sdk.e.b.QY().QS()));
                jSONObject3.put("11301", bf.c(com.kwad.sdk.e.b.QY().QX()));
                jSONObject3.put("11302", bf.c(com.kwad.sdk.e.b.QY().getSdkVersion()));
                jSONObject3.put("11303", bf.c(com.kwad.sdk.e.b.QY().getAppId()));
                jSONObject3.put("11104", com.kwad.sdk.e.b.QY().QU());
                jSONObject3.put("11105", com.kwad.sdk.e.b.QY().getDeviceId());
                jSONObject3.put("11106", com.kwad.sdk.e.b.QY().getIccId());
                jSONObject3.put("11107", com.kwad.sdk.e.b.QY().getIMEI());
                jSONObject3.put("11108", com.kwad.sdk.e.b.QY().QP());
                jSONObject3.put("11109", com.kwad.sdk.e.b.QY().QQ());
                jSONObject3.put("11110", com.kwad.sdk.e.b.QY().QR());
                jSONObject3.put("11111", com.kwad.sdk.e.b.QY().getIp());
                jSONObject3.put("11112", com.kwad.sdk.e.b.QY().getLocation());
                jSONObject3.put("11113", com.kwad.sdk.e.b.QY().getOaid());
                jSONObject3.put("11114", com.kwad.sdk.e.b.QY().getMac());
                jSONObject3.put("11115", com.kwad.sdk.e.b.QY().QT());
                jSONObject3.put("11116", com.kwad.sdk.e.b.QY().QS());
            } catch (Throwable unused2) {
            }
            String strW = bf.w(this.f30909a);
            if (!TextUtils.isEmpty(strW)) {
                jSONObject3.put("01026", strW);
            }
            if (iB == 1) {
                try {
                    Object objA = ai.a(this.f30909a);
                    if (objA != null) {
                        jSONObject3.put("11015", objA);
                    }
                    try {
                        if (Engine.loadSuccess) {
                            jSONObject2 = null;
                            cc ccVar = new cc(this.f30909a);
                            jSONObject3.put("02001", ccVar.a("02001") != null ? ccVar.a("02001") : bj.a());
                            jSONObject3.put("02002", ccVar.a("02002") != null ? ccVar.a("02002") : bj.b());
                            jSONObject3.put("02003", ccVar.a("02003") != null ? ccVar.a("02003") : bj.c());
                            jSONObject3.put("02007", ccVar.a("02007") != null ? ccVar.a("02007") : bj.g());
                            jSONObject3.put("02006", ccVar.a("02006") != null ? ccVar.a("02006") : bj.f());
                            jSONObject3.put("02004", ccVar.a("02004") != null ? ccVar.a("02004") : bj.d());
                            jSONObject3.put("02005", ccVar.a("02005") != null ? ccVar.a("02005") : bj.e());
                            jSONObject3.put("02018", ccVar.a("02018") != null ? ccVar.a("02018") : bj.s());
                            jSONObject3.put("02013", ccVar.a("02013") != null ? ccVar.a("02013") : bj.m());
                            jSONObject3.put("02016", ccVar.a("02016") != null ? ccVar.a("02016") : bj.q());
                        } else {
                            jSONObject2 = null;
                            jSONObject3.put("02001", bj.a());
                            jSONObject3.put("02002", bj.b());
                            jSONObject3.put("02003", bj.c());
                            jSONObject3.put("02004", bj.d());
                            jSONObject3.put("02005", bj.e());
                            jSONObject3.put("02006", bj.f());
                            jSONObject3.put("02007", bj.g());
                            jSONObject3.put("02018", bj.s());
                            jSONObject3.put("02013", bj.m());
                            jSONObject3.put("02016", bj.q());
                        }
                        jSONObject3.put("02021", bj.d(this.f30909a));
                        jSONObject3.put("02022", bj.c(this.f30909a));
                        jSONObject3.put("02044", bj.t());
                        jSONObject3.put("11009", bq.a(this.f30909a.getApplicationContext()));
                        if (Engine.loadSuccess) {
                            bx bxVar = new bx(this.f30909a);
                            jSONObject3.put("04001", bxVar.a("04001") != null ? bxVar.a("04001") : "");
                            jSONObject3.put("04002", bxVar.a("04002") != null ? bxVar.a("04002") : "");
                            jSONObject3.put("04003", bxVar.a("04003") != null ? bxVar.a("04003") : "");
                            jSONObject3.put("04004", bxVar.a("04004") != null ? bxVar.a("04004") : "");
                        } else {
                            try {
                                bh bhVarB = bi.b();
                                jSONObject3.put("04001", bi.a());
                                jSONObject3.put("04002", bhVarB.b());
                                jSONObject3.put("04003", bhVarB.c());
                                jSONObject3.put("04004", bhVarB.a());
                            } catch (Exception unused3) {
                            }
                        }
                    } catch (Throwable unused4) {
                        return jSONObject;
                    }
                } catch (Throwable unused5) {
                    return null;
                }
            } else {
                jSONObject2 = null;
            }
            try {
                if (this.f30910b) {
                    jSONObject3.put(com.anythink.core.common.inner.b.b.f4589f, 1);
                }
                jSONObject3.put("11017", jSONObject3.toString().length());
                jSONObject3.put("20000", this.f30911c);
                jSONObject3.put("11028", WeaponHI.sKSSdkver);
                return jSONObject3;
            } catch (Throwable unused6) {
                return jSONObject2;
            }
        } catch (Throwable unused7) {
            return null;
        }
    }

    public String a(String str) {
        try {
            synchronized (f30908d) {
                try {
                    JSONObject jSONObjectA = new ck(str, ci.f30966j).a(this.f30909a);
                    if (jSONObjectA == null) {
                        return null;
                    }
                    JSONObject jSONObjectA2 = a();
                    if (jSONObjectA2 == null) {
                        return null;
                    }
                    jSONObjectA.put("module_section", jSONObjectA2);
                    return jSONObjectA.toString();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
