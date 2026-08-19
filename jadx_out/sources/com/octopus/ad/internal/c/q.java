package com.octopus.ad.internal.c;

import android.text.TextUtils;

/* loaded from: classes4.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static String f34613a = "${SECOND_PRICE}";

    /* renamed from: b, reason: collision with root package name */
    public static String f34614b = "${WIN_PRICE}";

    /* renamed from: c, reason: collision with root package name */
    public static String f34615c = "${LOSS_REASON}";

    /* renamed from: d, reason: collision with root package name */
    public static String f34616d = "${WIN_BIDDER}";

    /* renamed from: e, reason: collision with root package name */
    public static String f34617e = "${SLOT_ID}";

    /* renamed from: f, reason: collision with root package name */
    public static String f34618f = "${REQ_ID}";

    /* renamed from: g, reason: collision with root package name */
    public static String f34619g = "${SDK_VERSION}";

    /* renamed from: h, reason: collision with root package name */
    public static String f34620h = "${DEVICE_ID}";

    public static String a(String str, com.octopus.ad.a.h hVar, long j2, long j3) {
        if (hVar == null) {
            return str;
        }
        if (j2 != 0) {
            str = str.replace("__oct_video_start_ts__", String.valueOf(j2));
        } else if (!TextUtils.isEmpty(hVar.a())) {
            str = str.replace("__oct_video_start_ts__", hVar.a());
        }
        return j3 == 0 ? !TextUtils.isEmpty(hVar.b()) ? str.replace("__oct_video_end_ts__", hVar.b()) : str : str.replace("__oct_video_end_ts__", String.valueOf(j3));
    }

    public static String a(String str, com.octopus.ad.a.d dVar, com.octopus.ad.a.e eVar) {
        String strReplace;
        String strReplace2;
        String strReplace3;
        String strReplace4;
        String strReplace5;
        String strReplace6;
        String strReplace7;
        String strReplace8;
        String strReplace9;
        String strReplace10;
        String strReplace11;
        String strReplace12;
        String strReplace13;
        String strReplace14;
        String strReplace15;
        String strReplace16;
        String strReplace17;
        String strReplace18;
        String strA;
        if (dVar == null || eVar == null || str == null || !str.contains("__oct_click_type__")) {
            return str;
        }
        if (eVar.t() != null) {
            if (dVar.a() == 2) {
                strA = eVar.t().b();
            } else if (dVar.a() == 3) {
                strA = eVar.t().c();
            } else {
                strA = eVar.t().a();
            }
            str = str.replace("__oct_click_type__", strA);
        }
        if (!TextUtils.isEmpty(dVar.b())) {
            strReplace = str.replace("__oct_down_x__", dVar.b());
        } else {
            strReplace = str.replace("__oct_down_x__", eVar.d());
        }
        if (!TextUtils.isEmpty(dVar.c())) {
            strReplace2 = strReplace.replace("__oct_down_y__", dVar.c());
        } else {
            strReplace2 = strReplace.replace("__oct_down_y__", eVar.e());
        }
        if (!TextUtils.isEmpty(dVar.d())) {
            strReplace3 = strReplace2.replace("__oct_down_time__", dVar.d());
        } else {
            strReplace3 = strReplace2.replace("__oct_down_time__", eVar.f());
        }
        if (!TextUtils.isEmpty(dVar.e())) {
            strReplace4 = strReplace3.replace("__oct_up_x__", dVar.e());
        } else {
            strReplace4 = strReplace3.replace("__oct_up_x__", eVar.a());
        }
        if (!TextUtils.isEmpty(dVar.f())) {
            strReplace5 = strReplace4.replace("__oct_up_y__", dVar.f());
        } else {
            strReplace5 = strReplace4.replace("__oct_up_y__", eVar.b());
        }
        if (!TextUtils.isEmpty(dVar.g())) {
            strReplace6 = strReplace5.replace("__oct_up_time__", dVar.g());
        } else {
            strReplace6 = strReplace5.replace("__oct_up_time__", eVar.c());
        }
        if (!TextUtils.isEmpty(dVar.l())) {
            strReplace7 = strReplace6.replace("__oct_x_max_acc__", a(dVar.l(), eVar.s()));
        } else {
            strReplace7 = strReplace6.replace("__oct_x_max_acc__", eVar.g());
        }
        if (!TextUtils.isEmpty(dVar.m())) {
            strReplace8 = strReplace7.replace("__oct_y_max_acc__", a(dVar.m(), eVar.s()));
        } else {
            strReplace8 = strReplace7.replace("__oct_y_max_acc__", eVar.h());
        }
        if (!TextUtils.isEmpty(dVar.n())) {
            strReplace9 = strReplace8.replace("__oct_z_max_acc__", a(dVar.n(), eVar.s()));
        } else {
            strReplace9 = strReplace8.replace("__oct_z_max_acc__", eVar.i());
        }
        if (!TextUtils.isEmpty(dVar.o())) {
            strReplace10 = strReplace9.replace("__oct_shake_acc__", dVar.o());
        } else {
            strReplace10 = strReplace9.replace("__oct_shake_acc__", eVar.k());
        }
        if (!TextUtils.isEmpty(dVar.p())) {
            strReplace11 = strReplace10.replace("__oct_shake_ang__", dVar.p());
        } else {
            strReplace11 = strReplace10.replace("__oct_shake_ang__", eVar.l());
        }
        if (!TextUtils.isEmpty(dVar.q())) {
            strReplace12 = strReplace11.replace("__oct_shake_cnt__", dVar.q());
        } else {
            strReplace12 = strReplace11.replace("__oct_shake_cnt__", eVar.j());
        }
        if (!TextUtils.isEmpty(dVar.r())) {
            strReplace13 = strReplace12.replace("__oct_turn_x__", dVar.r());
        } else {
            strReplace13 = strReplace12.replace("__oct_turn_x__", eVar.m());
        }
        if (!TextUtils.isEmpty(dVar.s())) {
            strReplace14 = strReplace13.replace("__oct_turn_y__", dVar.s());
        } else {
            strReplace14 = strReplace13.replace("__oct_turn_y__", eVar.n());
        }
        if (!TextUtils.isEmpty(dVar.t())) {
            strReplace15 = strReplace14.replace("__oct_turn_z__", dVar.t());
        } else {
            strReplace15 = strReplace14.replace("__oct_turn_z__", eVar.o());
        }
        if (!TextUtils.isEmpty(dVar.u())) {
            strReplace16 = strReplace15.replace("__oct_turn_time__", dVar.u());
        } else {
            strReplace16 = strReplace15.replace("__oct_turn_time__", eVar.p());
        }
        if (!TextUtils.isEmpty(dVar.i())) {
            strReplace17 = strReplace16.replace("__oct_ms_time__", dVar.i());
        } else {
            strReplace17 = strReplace16.replace("__oct_ms_time__", eVar.r());
        }
        if (!TextUtils.isEmpty(dVar.h())) {
            strReplace18 = strReplace17.replace("__oct_s_time__", dVar.h());
        } else {
            strReplace18 = strReplace17.replace("__oct_s_time__", eVar.q());
        }
        if (!TextUtils.isEmpty(dVar.j())) {
            strReplace18 = strReplace18.replace("__oct_container_w__", dVar.j());
        }
        if (!TextUtils.isEmpty(dVar.k())) {
            strReplace18 = strReplace18.replace("__oct_container_h__", dVar.k());
        }
        return !TextUtils.isEmpty(a.f34504p) ? strReplace18.replace("__oct_screen_ppi__", a.f34504p) : strReplace18;
    }

    private static String a(String str, int i2) {
        if (i2 > 1) {
            try {
                return String.valueOf((int) (Double.parseDouble(str) * i2));
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
        return str;
    }

    public static String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str.replace(f34617e, str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            str = str.replace(f34620h, str3);
        }
        return str.replace(f34619g, "2.6.5.7");
    }

    public static String a(String str, int i2, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strReplace = str.replace(f34613a, String.valueOf(i2));
        return !TextUtils.isEmpty(str2) ? strReplace.replace(f34617e, str2) : strReplace;
    }

    public static String a(String str, int i2, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strReplace = str.replace(f34614b, String.valueOf(i2));
        if (!TextUtils.isEmpty(str2)) {
            strReplace = strReplace.replace(f34615c, str2);
        }
        return !TextUtils.isEmpty(str3) ? strReplace.replace(f34616d, str3) : strReplace;
    }
}
