package com.anythink.core.c.d;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ac;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.ay;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.cg;
import com.anythink.core.common.v.af;
import com.anythink.core.common.v.j;
import com.anythink.core.common.v.o;
import com.anythink.core.common.v.p;
import com.anythink.core.e.d;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    static final String f2003a = "a";

    private static int a(boolean z2, int i2, int i3) {
        return i2 == i3 ? !z2 ? 1 : 4 : (i2 == 67 || i2 == 35) ? 3 : 2;
    }

    private static int b(boolean z2, int i2, int i3) {
        return i2 == i3 ? !z2 ? 1 : 2 : (i2 == 67 || i2 == 35) ? 3 : 4;
    }

    public static String a(ad adVar, cg cgVar, double d2, double d3) {
        String str = adVar.winNoticeUrl;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i2 = adVar.f3671d;
        String strReplace = str.replace(c.f2022f, a(adVar, d3));
        try {
            strReplace = strReplace.replace(c.f2018b, a(adVar, d2));
        } catch (Exception unused) {
        }
        return i2 == 66 ? a(strReplace, a(adVar, cgVar, d3)) : i2 == 39 ? strReplace.replace(c.f2024h, String.valueOf(d3)).replace(c.f2023g, a(adVar.f3669b)) : strReplace;
    }

    private static String b(ad adVar, double d2) {
        String strA = a(adVar, d2);
        try {
            return String.valueOf((int) Math.round(Double.parseDouble(strA)));
        } catch (Throwable unused) {
            return strA;
        }
    }

    private static String b(int i2) {
        if (i2 == 8) {
            return j.b("LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUZ3d0RRWUpLb1pJaHZjTkFRRUJCUUFEU3dBd1NBSkJBTGpNVCt3QTZEdVViaGZvYTZ5MDQ4czVNWFcrOEY2bgpxNkxzb2FaMWNDdVJ0MDhLU0ZoZ3kwYmp3dWpLVkxLeW1nUVJRUWFGUkhFamF2aTNXd28vUG9jQ0F3RUFBUT09Ci0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQ==");
        }
        return "";
    }

    public static String a(ad adVar, ay ayVar, int i2, boolean z2, double d2, double d3, String str, Map<String, Object> map) {
        String strReplace;
        double dMax;
        by byVarC;
        int i3 = adVar.f3671d;
        String str2 = adVar.loseNoticeUrl;
        if (TextUtils.isEmpty(str2)) {
            if (ayVar != null) {
                String strE = ayVar.E();
                String strK = ayVar.k();
                if (i3 == 8) {
                    str2 = af.b("kwwsv=22zlq1jgw1tt1frp2zlqbqrwlfh1ifj") + "?viewid=&position_id=" + strE + "&loss=${AUCTION_LOSS}&win_price=${AUCTION_PRICE}&server_bidding_type=1&win_seat=${AUCTION_SEAT_ID}&mrqid=" + strK + "&meSrc=299";
                } else {
                    str2 = "";
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return null;
            }
        }
        String strReplace2 = str2.replace(c.f2018b, a(adVar, d2)).replace(c.f2019c, b(adVar, d2)).replace(c.f2020d, str);
        if (i3 == 8) {
            strReplace = strReplace2.replace(c.f2021e, String.valueOf(i2 == i3 ? !z2 ? 1 : 4 : (i2 == 67 || i2 == 35) ? 3 : 2));
        } else if (i3 == 29) {
            strReplace = strReplace2.replace(c.f2021e, i3 == i2 ? "1" : "10001");
        } else {
            strReplace = strReplace2.replace(c.f2021e, "");
        }
        if (i3 == 6) {
            strReplace = strReplace.replace(c.f2023g, ATAdConst.CURRENCY.USD.toString());
        } else if (i3 == 39) {
            strReplace = strReplace.replace(c.f2020d, str).replace(c.f2023g, a(adVar.f3669b));
        }
        if (i3 == 66) {
            strReplace = a(strReplace, a(adVar, ayVar, d2, str));
        }
        if (i3 == 28 && map != null) {
            strReplace = a(strReplace, map, adVar, d2);
        }
        try {
            by byVarA = c.a(adVar);
            if (byVarA != null) {
                double dA = o.a(byVarA);
                double d4 = adVar.f3679l;
                if (d4 > 0.0d) {
                    dA *= d4;
                }
                dMax = Math.max(d3, dA);
            } else if (ayVar == null || (byVarC = ayVar.C()) == null || byVarC.az() <= 0.0d) {
                dMax = d3;
            } else {
                double dAz = byVarC.az();
                double d5 = adVar.f3679l;
                if (d5 > 0.0d) {
                    dAz *= d5;
                }
                dMax = Math.max(d3, dAz);
            }
            if (dMax != 0.0d) {
                double d6 = 0.01d + dMax;
                if (d6 < d2) {
                    dMax = d6;
                }
                return strReplace.replace(c.f2022f, String.valueOf(dMax));
            }
        } catch (Exception unused) {
        }
        return strReplace;
    }

    private static String a(String str, Map<String, Object> map, ad adVar, double d2) {
        try {
            String strA = a(adVar, d2);
            String strReplace = str.replace(c.f2035s, strA).replace(c.f2036t, strA);
            int iA = p.a(map, ATBiddingNotice.ADN_ID, -1);
            int i2 = 1;
            if (iA != 1 && iA != 2) {
                i2 = 3;
                if (iA == 3 || iA == 4) {
                    i2 = 2;
                }
            }
            String strReplace2 = strReplace.replace(c.f2028l, String.valueOf(i2));
            String str2 = "other";
            int iA2 = p.a(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
            if (iA2 > 0) {
                if (iA2 == 15) {
                    str2 = "chuanshanjia";
                } else if (iA2 == 22) {
                    str2 = "baidu";
                }
            }
            String strReplace3 = strReplace2.replace(c.f2029m, str2);
            Object obj = map.get(ATBiddingNotice.ADN_EXTRA_NATIVE_MATERIAL_INFO);
            if (obj != null) {
                try {
                    String strA2 = p.a((Map<String, Object>) obj, "native_material_tittle", "");
                    if (!TextUtils.isEmpty(strA2)) {
                        strReplace3 = strReplace3.replace(c.f2031o, strA2);
                    }
                    String strA3 = p.a((Map<String, Object>) obj, "native_material_publisher_name", "");
                    if (!TextUtils.isEmpty(strA3)) {
                        strReplace3 = strReplace3.replace(c.f2030n, strA3);
                    }
                } catch (Throwable unused) {
                }
            }
            String strA4 = p.a(map, ATBiddingNotice.ADN_REQUEST_ID, "");
            if (!TextUtils.isEmpty(strA4)) {
                strReplace3 = strReplace3.replace(c.f2032p, strA4);
            }
            return strReplace3.replace(c.f2033q, String.valueOf(p.a(map, ATBiddingNotice.ADN_REQUEST_IS_SHOW, 2))).replace(c.f2034r, String.valueOf(p.a(map, ATBiddingNotice.ADN_REQUEST_IS_CLICK, 2)));
        } catch (Exception unused2) {
            return str;
        }
    }

    public static String a(ad adVar, double d2) {
        int i2 = adVar.f3671d;
        if (i2 == 8 || i2 == 28) {
            return a(i2, String.valueOf((int) Math.round(d2)));
        }
        if (i2 == 66 && adVar.j() > 0.0d) {
            return String.valueOf(d2 / adVar.j());
        }
        return String.valueOf(d2);
    }

    public static String a(boolean z2, int i2, int i3, boolean z3) {
        if (i2 == 3) {
            return "-1";
        }
        if (i3 == 8) {
            if (i2 != 1) {
                return "1";
            }
            return "5";
        }
        if (i3 == 29) {
            if (i2 != 1) {
                return "2";
            }
            return "2002";
        }
        if (i3 == 34) {
            if (i2 == 2) {
                return "102";
            }
            return "1001";
        }
        if (i3 == 59) {
            return "102";
        }
        if (i3 == 39) {
            if (i2 != 6) {
                return "102";
            }
            return "103";
        }
        if (z3) {
            return "103";
        }
        if (i2 == 1) {
            return "2";
        }
        if (i2 == 5) {
            return "1";
        }
        if (z2) {
            return "102";
        }
        return "103";
    }

    private static String a(int i2) {
        if (i2 == 2) {
            return "102";
        }
        return "1001";
    }

    public static String a(boolean z2, int i2) {
        if (i2 == 3) {
            return "-1";
        }
        if (i2 == 1) {
            return "5";
        }
        if (i2 == 4) {
            return "2";
        }
        if (i2 == 6) {
            return "104";
        }
        return z2 ? "102" : "103";
    }

    public static Map<String, Object> a(boolean z2, int i2, int i3, by byVar, ad adVar) {
        int i4 = 2;
        HashMap map = new HashMap(2);
        if (i2 != i3) {
            i4 = (i2 == 67 || i2 == 35) ? 3 : 4;
        } else if (!z2) {
            i4 = 1;
        }
        map.put(ATBiddingNotice.ADN_ID, Integer.valueOf(i4));
        a(map, adVar);
        a(map, i3, i2, byVar);
        return map;
    }

    private static void a(Map<String, Object> map, ad adVar) {
        if (adVar != null) {
            try {
                String originRequestId = adVar.getOriginRequestId();
                if (TextUtils.isEmpty(originRequestId)) {
                    return;
                }
                map.put(ATBiddingNotice.ADN_REQUEST_ID, originRequestId);
                List<ac> list = adVar.f3688u;
                if (list == null || list.isEmpty()) {
                    return;
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    ac acVar = list.get(i2);
                    if (acVar != null && acVar.d().equals(originRequestId)) {
                        map.put(ATBiddingNotice.ADN_REQUEST_IS_SHOW, Integer.valueOf(acVar.g() ? 1 : 0));
                        map.put(ATBiddingNotice.ADN_REQUEST_IS_CLICK, Integer.valueOf(acVar.h() ? 1 : 0));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void a(Map<String, Object> map, int i2, int i3, by byVar) {
        com.anythink.core.e.b bVarB = d.a(s.b().g()).b(s.b().p());
        if (bVarB == null || bVarB.c() == null || !bVarB.c().contains(Integer.valueOf(i2)) || i3 == 8) {
            return;
        }
        map.put(ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, Integer.valueOf(i3));
        if (byVar != null) {
            map.put(ATBiddingNotice.ADN_EXTRA_NATIVE_MATERIAL_INFO, byVar.bf());
        }
    }

    public static Map<String, Object> a(int i2, by byVar) {
        HashMap map = new HashMap(2);
        if (byVar != null) {
            int iN = byVar.n();
            int i3 = iN == i2 ? 5 : 6;
            int i4 = byVar.w() ? 101 : 100;
            map.put(ATBiddingNotice.ADN_ID, Integer.valueOf(i3));
            map.put(ATBiddingNotice.ADN_TYPE, Integer.valueOf(i4));
            a(map, i2, iN, byVar);
        }
        return map;
    }

    public static Map<String, Object> a(ad adVar, cg cgVar, double d2) {
        HashMap map = new HashMap();
        map.put(c.f2022f, a(adVar, d2));
        String strB = cgVar.b();
        if (!TextUtils.isEmpty(strB)) {
            map.put(c.f2025i, strB);
            return map;
        }
        map.put(c.f2025i, "");
        return map;
    }

    public static Map<String, Object> a(ad adVar, ay ayVar, double d2, String str) {
        HashMap map = new HashMap();
        map.put(c.f2018b, a(adVar, d2));
        map.put(c.f2019c, b(adVar, d2));
        map.put(c.f2020d, str);
        String strE = ayVar.e();
        if (!TextUtils.isEmpty(strE)) {
            map.put(c.f2025i, strE);
        } else {
            map.put(c.f2025i, "");
        }
        map.put(c.f2026j, TextUtils.equals(str, "1") ? "900" : TextUtils.equals(str, "2") ? "203" : (TextUtils.equals(str, "102") || TextUtils.equals(str, "103")) ? "203" : "900");
        map.put(c.f2027k, Long.valueOf(System.currentTimeMillis() / 1000));
        return map;
    }

    private static String a(String str, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                str = str.replace(entry.getKey(), entry.getValue().toString());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return str;
    }

    private static String a(String str) {
        if (ATAdConst.CURRENCY.RMB.toString().equalsIgnoreCase(str)) {
            return "CNY";
        }
        return "USD";
    }

    public static String a(int i2, String str) {
        String strB;
        String strEncode;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (i2 == 8) {
            strB = j.b("LS0tLS1CRUdJTiBQVUJMSUMgS0VZLS0tLS0KTUZ3d0RRWUpLb1pJaHZjTkFRRUJCUUFEU3dBd1NBSkJBTGpNVCt3QTZEdVViaGZvYTZ5MDQ4czVNWFcrOEY2bgpxNkxzb2FaMWNDdVJ0MDhLU0ZoZ3kwYmp3dWpLVkxLeW1nUVJRUWFGUkhFamF2aTNXd28vUG9jQ0F3RUFBUT09Ci0tLS0tRU5EIFBVQkxJQyBLRVktLS0tLQ==");
        } else {
            strB = "";
        }
        if (TextUtils.isEmpty(strB)) {
            return str;
        }
        try {
            strEncode = URLEncoder.encode(com.anythink.core.common.q.a.a(strB, str, false).a());
        } catch (Throwable unused) {
            strEncode = null;
        }
        return !TextUtils.isEmpty(strEncode) ? strEncode : str;
    }

    private static String a(int i2, String str, String str2) {
        if (i2 == 8) {
            return af.b("kwwsv=22zlq1jgw1tt1frp2zlqbqrwlfh1ifj") + "?viewid=&position_id=" + str + "&loss=${AUCTION_LOSS}&win_price=${AUCTION_PRICE}&server_bidding_type=1&win_seat=${AUCTION_SEAT_ID}&mrqid=" + str2 + "&meSrc=299";
        }
        return "";
    }
}
