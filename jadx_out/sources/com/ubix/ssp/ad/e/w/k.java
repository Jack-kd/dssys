package com.ubix.ssp.ad.e.w;

import android.content.Context;
import android.text.TextUtils;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.x.a;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.open.UBiXInitManger;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static k f47356a;

    /* renamed from: b, reason: collision with root package name */
    private Context f47357b;

    public class a extends a.c {

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f47358b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f47359c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f47360d;

        public a(int i2, String str, int i3) {
            this.f47358b = i2;
            this.f47359c = str;
            this.f47360d = i3;
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void b(com.ubix.ssp.ad.e.x.d dVar) {
            if (this.f47358b < 1) {
                k.this.a(this.f47359c, this.f47360d);
            }
        }

        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(com.ubix.ssp.ad.e.x.d dVar) {
        }
    }

    private k(Context context) {
        this.f47357b = context;
    }

    private float a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return -999.0f;
            }
            return Float.valueOf(str).floatValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -999.0f;
        }
    }

    private int b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return -999;
            }
            return Float.valueOf(str).intValue();
        } catch (Exception e2) {
            e2.printStackTrace();
            return -999;
        }
    }

    private String c(String str, HashMap<String, String> map, String str2) {
        if (str.equals("3") || str.equals("6") || str.equals("14") || str.equals("22")) {
            map.put("__DOWN_X__", SigMacroCommon.DEFAULT_XY);
            map.put("__DOWN_Y__", SigMacroCommon.DEFAULT_XY);
            map.put("__UP_X__", SigMacroCommon.DEFAULT_XY);
            map.put("__UP_Y__", SigMacroCommon.DEFAULT_XY);
            map.put("__RAW_DOWN_X__", SigMacroCommon.DEFAULT_XY);
            map.put("__RAW_DOWN_Y__", SigMacroCommon.DEFAULT_XY);
            map.put("__RAW_UP_X__", SigMacroCommon.DEFAULT_XY);
            map.put("__RAW_UP_Y__", SigMacroCommon.DEFAULT_XY);
        }
        return str2.replace("__RAW_DOWN_X__", a(map, "__RAW_DOWN_X__")).replace("__RAW_DOWN_Y__", a(map, "__RAW_DOWN_Y__")).replace("__RAW_UP_X__", a(map, "__RAW_UP_X__")).replace("__RAW_UP_Y__", a(map, "__RAW_UP_Y__")).replace("__DOWN_X__", a(map, "__DOWN_X__")).replace("__DOWN_Y__", a(map, "__DOWN_Y__")).replace("__UP_X__", a(map, "__UP_X__")).replace("__UP_Y__", a(map, "__UP_Y__"));
    }

    public static k a(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (f47356a == null) {
            synchronized (UBiXInitManger.class) {
                try {
                    if (f47356a == null) {
                        f47356a = new k(applicationContext);
                    }
                } finally {
                }
            }
        }
        return f47356a;
    }

    private String b(String str, a.b.d dVar, HashMap<String, String> map) {
        String str2;
        int iB = b(map.get("__TURN_X__"));
        int iB2 = b(map.get("__TURN_Y__"));
        int iB3 = b(map.get("__TURN_Z__"));
        int iB4 = b(map.get("__TURN_TIME__"));
        float f2 = iB + iB2 + iB3;
        if (f2 == 0.0f || f2 == -2997.0f) {
            iB = -999;
            iB2 = -999;
            iB3 = -999;
        } else {
            int iB5 = b(map.get("__UBIX_TURN_TARGET__"));
            if (dVar != null && !TextUtils.isEmpty(dVar.f47510e)) {
                String[] strArrSplit = dVar.f47510e.split(",");
                if (strArrSplit.length == 2 && b(strArrSplit[0]) < b(strArrSplit[1])) {
                    int iB6 = (int) (b(strArrSplit[0]) + (Math.random() * (b(strArrSplit[1]) - b(strArrSplit[0]))));
                    if (iB5 != 0) {
                        if (iB5 != 1) {
                            if (iB5 == 2 && Math.abs(iB3) < b(strArrSplit[0])) {
                                iB3 = iB3 > 0 ? iB6 : iB6 * (-1);
                            }
                        } else if (Math.abs(iB2) < b(strArrSplit[0])) {
                            iB2 = iB2 > 0 ? iB6 : iB6 * (-1);
                        }
                    } else if (Math.abs(iB) < b(strArrSplit[0])) {
                        iB = iB > 0 ? iB6 : iB6 * (-1);
                    }
                }
            }
        }
        String strReplace = str.replace("__TURN_X__", iB + "").replace("__TURN_Y__", iB2 + "").replace("__TURN_Z__", iB3 + "");
        if (iB4 == 0) {
            str2 = SigMacroCommon.DEFAULT_XY;
        } else {
            str2 = iB4 + "";
        }
        return strReplace.replace("__TURN_TIME__", str2);
    }

    private String b(String str, HashMap<String, String> map, String str2) {
        if (str.equals("3") || str.equals("6") || str.equals("14") || str.equals("22")) {
            return str2;
        }
        return str2.replace("__RAW_DOWN_X__", b(a(map, "__RAW_DOWN_X__")) + "").replace("__RAW_DOWN_Y__", b(a(map, "__RAW_DOWN_Y__")) + "").replace("__RAW_UP_X__", b(a(map, "__RAW_UP_X__")) + "").replace("__RAW_UP_Y__", b(a(map, "__RAW_UP_Y__")) + "").replace("__DOWN_X__", b(a(map, "__DOWN_X__")) + "").replace("__DOWN_Y__", b(a(map, "__DOWN_Y__")) + "").replace("__UP_X__", b(a(map, "__UP_X__")) + "").replace("__UP_Y__", b(a(map, "__UP_Y__")) + "");
    }

    public String a(int i2, int i3, a.b.d dVar, HashMap<String, String> map, String str) {
        HashMap<String, String> map2 = new HashMap<>(map);
        if (i2 == 701 || i2 == 702) {
            return b(map2, str);
        }
        String strA = a(map2, "__CLICK_AREA__");
        String strB = b(a(a(str.replace("__TMS__", System.currentTimeMillis() + "").replace("__TMS_END__", System.currentTimeMillis() + "").replace("__TS__", (System.currentTimeMillis() / 1000) + "").replace("__TS_END__", (System.currentTimeMillis() / 1000) + "").replace("__CLICK_XY__", a(map2, "__CLICK_XY__")).replace("__CLICK_ID__", a(map2, "__CLICK_ID__")).replace("__CLICK_AREA__", a(map2, "__CLICK_AREA__")).replace("__DISLIKE_IDS__", a(map2, "__DISLIKE_IDS__")).replace("__DURATION__", a(map2, "__DURATION__")).replace("__PLAY_TIME__", a(map2, "__PLAY_TIME__")).replace("__SKIP_TIME__", a(map2, "__SKIP_TIME__")).replace("__DOWN_ERR_ID__", a(map2, "__DOWN_ERR_ID__")).replace("__AUCTION_PRICE__", a(map2, "__AUCTION_PRICE__")).replace("__TRI_VAL__", a(map2, "__TRI_VAL__")).replace("__SLD__", a(dVar, ("22".equals(strA) || "14".equals(strA)) ? "3" : strA)).replace("__MP_RESULT__", a(map2, "__MP_RESULT__")).replace("__U_TB_CHECK__", a(map2, "__U_TB_CHECK__")), map2, a(dVar)), dVar, map2), dVar, map2);
        if (i3 == 1) {
            return b(strA, map2, strB);
        }
        String strC = c(strA, map2, strB);
        return i3 == 2 ? a(strA, map2, strC) : strC;
    }

    private String a(a.b.d dVar, String str) {
        HashMap<String, String> mapB = b(dVar);
        if (str == null) {
            return "0";
        }
        if (!mapB.containsKey(str)) {
            str = "default";
        }
        return mapB.get(str);
    }

    private String b(HashMap<String, String> map, String str) {
        if (map != null && !map.isEmpty()) {
            if (map.containsKey("__second_price__")) {
                str = str.replace("__second_price__", com.ubix.ssp.ad.e.a0.a.b(map.get("__second_price__").getBytes(Charset.forName("UTF-8"))));
            }
            if (map.containsKey("__win_price__")) {
                str = str.replace("__win_price__", com.ubix.ssp.ad.e.a0.a.b(map.get("__win_price__").getBytes(Charset.forName("UTF-8"))));
            }
            if (map.containsKey("__win_meta__")) {
                str = str.replace("__win_meta__", URLEncoder.encode(map.get("__win_meta__")));
            }
            if (map.containsKey("__loss_reason__")) {
                str = str.replace("__loss_reason__", URLEncoder.encode(map.get("__loss_reason__")));
            }
            if (map.containsKey("__win_bidder__")) {
                return str.replace("__win_bidder__", URLEncoder.encode(map.get("__win_bidder__")));
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.lang.String r19, com.ubix.ssp.ad.e.y.a.a.b.d r20, java.util.HashMap<java.lang.String, java.lang.String> r21) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.w.k.a(java.lang.String, com.ubix.ssp.ad.e.y.a.a$b$d, java.util.HashMap):java.lang.String");
    }

    private HashMap<String, String> b(a.b.d dVar) {
        a.b.h hVar;
        HashMap<String, String> map = new HashMap<>();
        map.put("4", "1");
        map.put("7", "1");
        map.put("11", "1");
        map.put("12", "1");
        map.put("3", "2");
        map.put("6", "2");
        map.put("default", "0");
        if (dVar != null && (hVar = dVar.f47507b) != null && !TextUtils.isEmpty(hVar.f47525b)) {
            try {
                a.b.h hVar2 = dVar.f47507b;
                JSONObject jSONObject = new JSONObject(hVar2.f47525b);
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys.hasNext()) {
                    map.clear();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        for (String str : jSONObject.getString(next).split(",")) {
                            map.put(str, next);
                        }
                    }
                    if (TextUtils.isEmpty(hVar2.f47526c)) {
                        map.put("default", "0");
                        return map;
                    }
                    map.put("default", hVar2.f47526c);
                    return map;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return map;
    }

    private String a(String str, HashMap<String, String> map, double d2) {
        String strA = a(map, str);
        if (TextUtils.isEmpty(strA)) {
            return strA;
        }
        String[] strArrSplit = strA.split("_");
        int i2 = 0;
        String string = "";
        while (i2 < strArrSplit.length) {
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            sb.append((int) (Integer.parseInt(strArrSplit[i2]) / d2));
            sb.append(i2 == strArrSplit.length + (-1) ? "" : "_");
            string = sb.toString();
            i2++;
        }
        return string;
    }

    private void b(String str, HashMap<String, String> map, double d2) {
        if (map.containsKey(str)) {
            float fA = a(map.get(str));
            if (fA != -999.0f) {
                map.put(str, ((float) (fA / d2)) + "");
            }
        }
    }

    private String a(String str, HashMap<String, String> map, String str2) {
        if (str.equals("3") || str.equals("6") || str.equals("14") || str.equals("22")) {
            return str2;
        }
        return str2.replace("__INT_DOWN_X__", b(a(map, "__DOWN_X__")) + "").replace("__INT_DOWN_Y__", b(a(map, "__DOWN_Y__")) + "").replace("__INT_UP_X__", b(a(map, "__UP_X__")) + "").replace("__INT_UP_Y__", b(a(map, "__UP_Y__")) + "").replace("__RAW_INT_DOWN_X__", b(a(map, "__RAW_DOWN_X__")) + "").replace("__RAW_INT_DOWN_Y__", b(a(map, "__RAW_DOWN_Y__")) + "").replace("__RAW_INT_UP_X__", b(a(map, "__RAW_UP_X__")) + "").replace("__RAW_INT_UP_Y__", b(a(map, "__RAW_UP_Y__")) + "");
    }

    private String a(String str, HashMap<String, String> map, ArrayList<String> arrayList) {
        StringBuilder sb;
        StringBuilder sb2;
        double dA = r.a().a(this.f47357b);
        int iH = r.a().h(this.f47357b);
        int iC = r.a().c(this.f47357b);
        if (arrayList.contains("__REQ_WIDTH__")) {
            sb = new StringBuilder();
            iH = (int) (iH / dA);
        } else {
            sb = new StringBuilder();
        }
        sb.append(iH);
        sb.append("");
        String strReplace = str.replace("__REQ_WIDTH__", sb.toString());
        if (arrayList.contains("__REQ_HEIGHT__")) {
            sb2 = new StringBuilder();
            iC = (int) (iC / dA);
        } else {
            sb2 = new StringBuilder();
        }
        sb2.append(iC);
        sb2.append("");
        String strReplace2 = strReplace.replace("__REQ_HEIGHT__", sb2.toString());
        String strA = a(map, "__WIDTH__");
        String strA2 = a(map, "__HEIGHT__");
        if (arrayList.contains("__WIDTH__") && !TextUtils.isEmpty(strA)) {
            strA = ((int) (Integer.parseInt(strA) / dA)) + "";
        }
        String strReplace3 = strReplace2.replace("__WIDTH__", strA);
        if (arrayList.contains("__HEIGHT__") && !TextUtils.isEmpty(strA2)) {
            strA2 = ((int) (Integer.parseInt(strA2) / dA)) + "";
        }
        String strReplace4 = strReplace3.replace("__HEIGHT__", strA2);
        if (arrayList.contains("__DOWN_X__")) {
            b("__DOWN_X__", map, dA);
        }
        if (arrayList.contains("__DOWN_Y__")) {
            b("__DOWN_Y__", map, dA);
        }
        if (arrayList.contains("__UP_X__")) {
            b("__UP_X__", map, dA);
        }
        if (arrayList.contains("__UP_Y__")) {
            b("__UP_Y__", map, dA);
        }
        if (arrayList.contains("__RAW_DOWN_X__")) {
            b("__RAW_DOWN_X__", map, dA);
        }
        if (arrayList.contains("__RAW_DOWN_Y__")) {
            b("__RAW_DOWN_Y__", map, dA);
        }
        if (arrayList.contains("__RAW_UP_X__")) {
            b("__RAW_UP_X__", map, dA);
        }
        if (arrayList.contains("__RAW_UP_Y__")) {
            b("__RAW_UP_Y__", map, dA);
        }
        return strReplace4.replace("__IMP_AREA__", arrayList.contains("__IMP_AREA__") ? a("__IMP_AREA__", map, dA) : a(map, "__IMP_AREA__")).replace("__BUTTON_AREA__", arrayList.contains("__BUTTON_AREA__") ? a("__BUTTON_AREA__", map, dA) : a(map, "__BUTTON_AREA__"));
    }

    private String a(HashMap<String, String> map, String str) {
        return map.get(str) == null ? "" : map.get(str);
    }

    private ArrayList<String> a(a.b.d dVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (dVar != null && !TextUtils.isEmpty(dVar.f47508c)) {
            if (dVar.f47508c.contains("reqSize")) {
                arrayList.add("__REQ_WIDTH__");
                arrayList.add("__REQ_HEIGHT__");
            }
            if (dVar.f47508c.contains("adSize")) {
                arrayList.add("__WIDTH__");
                arrayList.add("__HEIGHT__");
            }
            if (dVar.f47508c.contains("position")) {
                arrayList.add("__DOWN_X__");
                arrayList.add("__DOWN_Y__");
                arrayList.add("__UP_X__");
                arrayList.add("__UP_Y__");
                arrayList.add("__RAW_DOWN_X__");
                arrayList.add("__RAW_DOWN_Y__");
                arrayList.add("__RAW_UP_X__");
                arrayList.add("__RAW_UP_Y__");
                arrayList.add("__INT_DOWN_X__");
                arrayList.add("__INT_DOWN_Y__");
                arrayList.add("__INT_UP_X__");
                arrayList.add("__INT_UP_Y__");
                arrayList.add("__RAW_INT_DOWN_X__");
                arrayList.add("__RAW_INT_DOWN_Y__");
                arrayList.add("__RAW_INT_UP_X__");
                arrayList.add("__RAW_INT_UP_Y__");
            }
            if (dVar.f47508c.contains("impress")) {
                arrayList.add("__IMP_AREA__");
                arrayList.add("__BUTTON_AREA__");
            }
        }
        return arrayList;
    }

    public void a(a.b bVar, int i2) {
        a(bVar, new HashMap<>(), i2);
    }

    public void a(a.b bVar, HashMap<String, String> map, int i2) {
        if (bVar != null) {
            u.b("dealTrack getEvent", bVar.f47472b + " actionId: " + i2);
            a.b.d dVar = bVar.f47468P;
            int i3 = 0;
            while (true) {
                a.b.k[] kVarArr = bVar.f47486p;
                if (i3 >= kVarArr.length) {
                    break;
                }
                if (kVarArr[i3].f47534c == i2) {
                    int i4 = 0;
                    while (true) {
                        String[] strArr = bVar.f47486p[i3].f47535d;
                        if (i4 < strArr.length) {
                            HashMap<String, String> map2 = map;
                            int i5 = i2;
                            String strA = a(i5, bVar.f47465M, dVar, map2, strArr[i4]);
                            a(strA, 0);
                            u.b("dealTrack getEvent", "Pos=" + i3 + ";Size=" + bVar.f47486p[i3].f47535d.length + " EVENT ID= " + i5 + " : " + strA);
                            i4++;
                            i2 = i5;
                            map = map2;
                        }
                    }
                }
                i3++;
                i2 = i2;
                map = map;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
        int i3 = i2 + 1;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.ubix.ssp.ad.e.x.g.b().a(str, (a.c) new a(i2, str, i3));
    }
}
