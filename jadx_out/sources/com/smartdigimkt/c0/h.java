package com.smartdigimkt.c0;

import android.content.Context;
import android.text.TextUtils;
import com.smartdigimkt.i0.l;
import com.smartdigimkt.i0.m;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

/* loaded from: classes5.dex */
public abstract class h {
    public static String a(com.smartdigimkt.g0.g gVar, String str, String str2) {
        HashMap map;
        com.smartdigimkt.g0.f fVar;
        if (gVar == null || (map = gVar.f40314a) == null || (fVar = (com.smartdigimkt.g0.f) map.get(str)) == null) {
            return str2;
        }
        int i2 = fVar.f40312b;
        return i2 != 2 ? i2 != 3 ? fVar.f40311a : Matcher.quoteReplacement(fVar.f40313c) : "";
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("__C_SLD__") || str.contains("__C_DOWN_X__") || str.contains("__RE_C_DOWN_X__") || str.contains("__C_DOWN_Y__") || str.contains("__RE_C_DOWN_Y__") || str.contains("__C_UP_X__") || str.contains("__RE_C_UP_X__") || str.contains("__C_UP_Y__") || str.contains("__RE_C_UP_Y__") || str.contains("__C_DOWN_X_DT__") || str.contains("__RE_C_DOWN_X_DT__") || str.contains("__C_DOWN_Y_DT__") || str.contains("__RE_C_DOWN_Y_DT__") || str.contains("__C_UP_X_DT__") || str.contains("__RE_C_UP_X_DT__") || str.contains("__C_UP_Y_DT__") || str.contains("__RE_C_UP_Y_DT__");
    }

    public static String a(String str, String str2, String str3, LinkedHashMap linkedHashMap) {
        if (str3 == null) {
            str3 = "";
        }
        if (linkedHashMap != null && str.contains(str2)) {
            linkedHashMap.put(str2, str3);
        }
        return str.replaceAll(Pattern.quote(str2), Matcher.quoteReplacement(str3));
    }

    public static String a(String str, l lVar, long j2, com.smartdigimkt.m3.c cVar, boolean z2, LinkedHashMap linkedHashMap) throws JSONException, UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (lVar.f40671g != null) {
            str = a(str, lVar, cVar, z2, linkedHashMap);
        }
        m mVar = lVar.f40672h;
        if (mVar != null) {
            str = a(a(a(a(a(a(a(a(a(a(a(str, "{__VIDEO_TIME__}", mVar.f40680a + "", linkedHashMap), "{__BEGIN_TIME__}", mVar.f40681b + "", linkedHashMap), "{__END_TIME__}", mVar.f40682c + "", linkedHashMap), "{__PLAY_FIRST_FRAME__}", g.a(new StringBuilder(), mVar.f40683d, ""), linkedHashMap), "{__PLAY_LAST_FRAME__}", g.a(new StringBuilder(), mVar.f40684e, ""), linkedHashMap), "{__SCENE__}", g.a(new StringBuilder(), mVar.f40687h, ""), linkedHashMap), "{__TYPE__}", g.a(new StringBuilder(), mVar.f40688i, ""), linkedHashMap), "{__BEHAVIOR__}", g.a(new StringBuilder(), mVar.f40689j, ""), linkedHashMap), "{__STATUS__}", g.a(new StringBuilder(), mVar.f40690k, ""), linkedHashMap), "{__PLAY_SEC__}", (mVar.f40685f / 1000) + "", linkedHashMap), "{__PLAY_MSEC__}", mVar.f40685f + "", linkedHashMap);
        }
        com.smartdigimkt.i0.b bVar = lVar.f40673i;
        if (bVar != null) {
            String str2 = bVar.f40633a;
            if (str2 == null) {
                str2 = "";
            }
            str = a(str, "{__CLICK_ID__}", str2, linkedHashMap);
            int i2 = bVar.f40634b;
            if (i2 > 0) {
                str = a(str, "__DP_APP_INSTALL__", String.valueOf(i2), linkedHashMap);
            }
        }
        Map map = lVar.f40679o;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    String string = entry.getValue().toString();
                    if (linkedHashMap != null && str.contains(str3)) {
                        linkedHashMap.put(str3, string);
                    }
                    str = str.replaceAll(Pattern.quote(str3), Matcher.quoteReplacement(string));
                } catch (Throwable th) {
                    th.getMessage();
                    th.printStackTrace();
                }
            }
        }
        long j3 = j2 / 1000;
        String strA = a(a(a(a(a(a(a(str, "{__REQ_WIDTH__}", "__REQ_WIDTH__", linkedHashMap), "{__REQ_HEIGHT__}", "__REQ_HEIGHT__", linkedHashMap), "__WIDTH__", g.a(new StringBuilder(), lVar.f40669e, ""), linkedHashMap), "__HEIGHT__", g.a(new StringBuilder(), lVar.f40670f, ""), linkedHashMap), "{__PLAY_SEC__}", "0", linkedHashMap), "__S_SCREEN_X__", g.a(new StringBuilder(), lVar.f40676l, ""), linkedHashMap), "__S_SCREEN_Y__", g.a(new StringBuilder(), lVar.f40677m, ""), linkedHashMap);
        Context contextD = SDKContext.getInstance().d();
        if (contextD != null) {
            strA = a(a(a(a(strA, "__WIDTH_DT__", f.a(contextD, lVar.f40669e, new StringBuilder(), ""), linkedHashMap), "__HEIGHT_DT__", f.a(contextD, lVar.f40670f, new StringBuilder(), ""), linkedHashMap), "__S_SCREEN_X_DT__", f.a(contextD, lVar.f40676l, new StringBuilder(), ""), linkedHashMap), "__S_SCREEN_Y_DT__", f.a(contextD, lVar.f40677m, new StringBuilder(), ""), linkedHashMap);
        }
        if (lVar.f40671g == null) {
            strA = a(a(a(a(strA, "__TS__", j3 + "", linkedHashMap), "__TS_MSEC__", j2 + "", linkedHashMap), "__END_TS__", j3 + "", linkedHashMap), "__END_TS_MSEC__", j2 + "", linkedHashMap);
        }
        long jCurrentTimeMillis = lVar.f40678n;
        if (jCurrentTimeMillis == 0) {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 < 500) {
            jCurrentTimeMillis2 = new Random().nextInt(500) + 500;
        }
        return a(a(a(strA, "__SHOW_T__", jCurrentTimeMillis2 + "", linkedHashMap), "__M_SHOW_RATIO__", "100", linkedHashMap), "__DENSITY__", com.smartdigimkt.c5.h.q(SDKContext.getInstance().d()), linkedHashMap).replaceAll("\\{", "").replaceAll("\\}", "");
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x069a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x06fb  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0815  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0848  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x08b4  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x08de  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x08f2  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x08ff  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0902  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0955  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0958  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x095e  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0961  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r40, com.smartdigimkt.i0.l r41, com.smartdigimkt.m3.c r42, boolean r43, java.util.LinkedHashMap r44) throws org.json.JSONException, java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 2421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c0.h.a(java.lang.String, com.smartdigimkt.i0.l, com.smartdigimkt.m3.c, boolean, java.util.LinkedHashMap):java.lang.String");
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("__SLD__") || str.contains("__DOWN_X__") || str.contains("__RE_DOWN_X__") || str.contains("__DOWN_Y__") || str.contains("__RE_DOWN_Y__") || str.contains("__UP_X__") || str.contains("__RE_UP_X__") || str.contains("__UP_Y__") || str.contains("__RE_UP_Y__") || str.contains("__DOWN_X_DT__") || str.contains("__RE_DOWN_X_DT__") || str.contains("__DOWN_Y_DT__") || str.contains("__RE_DOWN_Y_DT__") || str.contains("__UP_X_DT__") || str.contains("__RE_UP_X_DT__") || str.contains("__UP_Y_DT__") || str.contains("__RE_UP_Y_DT__");
    }
}
