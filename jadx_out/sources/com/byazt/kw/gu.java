package com.byazt.kw;

import android.text.TextUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 756, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes.dex */
public final class gu {
    public static void hp(com.byazt.rw.hp hpVar, com.byazt.rw.l lVar, com.byazt.aj.jx jxVar) {
        if (hpVar == null || hpVar.hp() == null || jxVar == null) {
            return;
        }
        JSONObject jSONObjectHp = hpVar.hp();
        long jOptLong = jSONObjectHp.optLong("crash_time");
        int iL = l(hp("aid"));
        String strHp = com.byazt.aj.s.jx().hp();
        if (jOptLong <= 0 || iL <= 0 || TextUtils.isEmpty(strHp) || "0".equals(strHp) || TextUtils.isEmpty(jxVar.hp())) {
            return;
        }
        try {
            String str = "android_" + iL + "_" + strHp + "_" + jOptLong + "_" + jxVar;
            if (lVar == null) {
                jSONObjectHp.put("unique_key", str);
                return;
            }
            JSONObject jSONObjectHp2 = lVar.hp();
            if (jSONObjectHp2 != null) {
                jSONObjectHp2.put("unique_key", str);
            }
        } catch (JSONException unused) {
        }
    }

    public static int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            e.l(e2);
            return 0;
        }
    }

    public static String hp(String str) {
        Map<String, Object> mapHp;
        if (com.byazt.aj.s.hp() == null || (mapHp = com.byazt.aj.s.hp().hp()) == null) {
            return null;
        }
        Object obj = mapHp.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}
