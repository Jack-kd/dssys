package com.smartdigimkt.p3;

import android.text.TextUtils;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class a extends c {

    /* renamed from: e0, reason: collision with root package name */
    public String f42589e0;

    /* renamed from: f0, reason: collision with root package name */
    public String f42590f0;

    /* renamed from: g0, reason: collision with root package name */
    public String f42591g0;

    /* renamed from: h0, reason: collision with root package name */
    public String f42592h0;

    /* renamed from: i0, reason: collision with root package name */
    public String f42593i0;

    /* renamed from: j0, reason: collision with root package name */
    public String f42594j0;

    /* renamed from: k0, reason: collision with root package name */
    public String f42595k0;

    /* renamed from: l0, reason: collision with root package name */
    public String f42596l0;

    /* renamed from: m0, reason: collision with root package name */
    public String f42597m0;

    /* renamed from: n0, reason: collision with root package name */
    public String f42598n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f42599o0;

    /* renamed from: p0, reason: collision with root package name */
    public long f42600p0;

    /* renamed from: q0, reason: collision with root package name */
    public long f42601q0;

    /* renamed from: r0, reason: collision with root package name */
    public int f42602r0;

    /* renamed from: s0, reason: collision with root package name */
    public String f42603s0;

    /* renamed from: t0, reason: collision with root package name */
    public String f42604t0;

    /* renamed from: u0, reason: collision with root package name */
    public String f42605u0;

    /* renamed from: v0, reason: collision with root package name */
    public String f42606v0;

    /* renamed from: w0, reason: collision with root package name */
    public String f42607w0;

    /* renamed from: x0, reason: collision with root package name */
    public String f42608x0 = "";

    @Override // com.smartdigimkt.m3.c
    public final ArrayList b(e eVar) {
        b bVar = (b) eVar;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.equals(String.valueOf(bVar.f41915a), "2")) {
            String strA = a(bVar);
            if (!TextUtils.isEmpty(strA) && TextUtils.equals(strA, this.f41815f) && !TextUtils.isEmpty(this.f41814e)) {
                arrayList.add(this.f41814e);
            }
        }
        return arrayList;
    }

    @Override // com.smartdigimkt.m3.c
    public final int e() {
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x013f A[RETURN] */
    @Override // com.smartdigimkt.m3.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList a(com.smartdigimkt.m3.e r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p3.a.a(com.smartdigimkt.m3.e, boolean):java.util.ArrayList");
    }

    public final String b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(this.f42607w0);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                str = str.replaceAll("\\{" + next + "\\}", jSONObject.optString(next));
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    @Override // com.smartdigimkt.m3.c
    public final String a() {
        return this.f42608x0;
    }

    public static ArrayList a(String str, String str2, long j2, b bVar) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                a aVar = new a();
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                aVar.f41806a = jSONObjectOptJSONObject.optString("o_id");
                aVar.f41808b = jSONObjectOptJSONObject.optString("c_id");
                aVar.f41810c = jSONObjectOptJSONObject.optString(bv.aI);
                aVar.f41822m = jSONObjectOptJSONObject.optString("p_g");
                aVar.f41812d = jSONObjectOptJSONObject.optString("d");
                aVar.f41814e = jSONObjectOptJSONObject.optString("ic_u");
                jSONObjectOptJSONObject.optString("im_u");
                aVar.f41815f = jSONObjectOptJSONObject.optString("f_i_u");
                aVar.f41816g = jSONObjectOptJSONObject.optString("a_c_u");
                aVar.f41817h = jSONObjectOptJSONObject.optString("c_t");
                aVar.f41818i = jSONObjectOptJSONObject.optString("v_u");
                aVar.f41824o = jSONObjectOptJSONObject.optInt("l_t");
                aVar.f41819j = jSONObjectOptJSONObject.optString("p_u");
                aVar.f41820k = jSONObjectOptJSONObject.optString("dl");
                aVar.f41821l = jSONObjectOptJSONObject.optString("c_u");
                aVar.f42589e0 = jSONObjectOptJSONObject.optString("ip_u");
                aVar.f42590f0 = jSONObjectOptJSONObject.optString("t_u");
                aVar.f42591g0 = jSONObjectOptJSONObject.optString("t_u_25");
                aVar.f42592h0 = jSONObjectOptJSONObject.optString("t_u_50");
                aVar.f42593i0 = jSONObjectOptJSONObject.optString("t_u_75");
                aVar.f42594j0 = jSONObjectOptJSONObject.optString("t_u_100");
                aVar.f42595k0 = jSONObjectOptJSONObject.optString("s_e_c_t_u");
                aVar.f42596l0 = jSONObjectOptJSONObject.optString("c_t_u");
                aVar.f42597m0 = jSONObjectOptJSONObject.optString("ip_n_u");
                aVar.f42598n0 = jSONObjectOptJSONObject.optString("c_n_u");
                aVar.f42599o0 = jSONObjectOptJSONObject.optInt("o_a_d_c");
                aVar.f42600p0 = jSONObjectOptJSONObject.optLong("o_a_p");
                aVar.f42601q0 = j2;
                aVar.f41823n = jSONObjectOptJSONObject.optInt("unit_type");
                aVar.f42602r0 = jSONObjectOptJSONObject.optInt("c_m");
                aVar.f42603s0 = jSONObjectOptJSONObject.optString("ext_h_pic");
                aVar.f42604t0 = jSONObjectOptJSONObject.optString("ext_big_h_pic");
                aVar.f42605u0 = jSONObjectOptJSONObject.optString("ext_rect_h_pic");
                aVar.f42606v0 = jSONObjectOptJSONObject.optString("ext_home_h_pic");
                aVar.f42607w0 = str2;
                aVar.f41827r = jSONObjectOptJSONObject.optString("pub");
                aVar.f41828s = jSONObjectOptJSONObject.optString("app_vc");
                aVar.f41829t = jSONObjectOptJSONObject.optString("pvc");
                aVar.f41830u = jSONObjectOptJSONObject.optString("pms");
                aVar.f41832w = bVar;
                arrayList.add(aVar);
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return arrayList;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0053  */
    @Override // com.smartdigimkt.m3.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(com.smartdigimkt.p3.b r5) {
        /*
            r4 = this;
            int r0 = r5.f41915a
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.String r1 = "2"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L89
            java.lang.String r5 = r5.f41954n
            int r0 = r5.hashCode()
            r1 = -559799608(0xffffffffdea222c8, float:-5.84156E18)
            r2 = 1
            r3 = 2
            if (r0 == r1) goto L49
            r1 = 1507809730(0x59df59c2, float:7.858451E15)
            if (r0 == r1) goto L3f
            r1 = 1507809854(0x59df5a3e, float:7.858518E15)
            if (r0 == r1) goto L35
            r1 = 1622564786(0x60b65fb2, float:1.0513134E20)
            if (r0 == r1) goto L2b
            goto L53
        L2b:
            java.lang.String r0 = "728x90"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L53
            r5 = r3
            goto L54
        L35:
            java.lang.String r0 = "320x90"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L53
            r5 = 0
            goto L54
        L3f:
            java.lang.String r0 = "320x50"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L53
            r5 = 3
            goto L54
        L49:
            java.lang.String r0 = "300x250"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L53
            r5 = r2
            goto L54
        L53:
            r5 = -1
        L54:
            if (r5 == 0) goto L7b
            if (r5 == r2) goto L70
            if (r5 == r3) goto L65
            java.lang.String r5 = r4.f42603s0
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L86
            java.lang.String r5 = r4.f42603s0
            return r5
        L65:
            java.lang.String r5 = r4.f42606v0
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L86
            java.lang.String r5 = r4.f42606v0
            return r5
        L70:
            java.lang.String r5 = r4.f42605u0
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L86
            java.lang.String r5 = r4.f42605u0
            return r5
        L7b:
            java.lang.String r5 = r4.f42604t0
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 != 0) goto L86
            java.lang.String r5 = r4.f42604t0
            return r5
        L86:
            java.lang.String r5 = r4.f41815f
            return r5
        L89:
            java.lang.String r5 = ""
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.p3.a.a(com.smartdigimkt.p3.b):java.lang.String");
    }
}
