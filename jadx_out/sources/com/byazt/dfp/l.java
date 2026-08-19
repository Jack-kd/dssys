package com.byazt.dfp;

import android.os.Handler;
import android.text.TextUtils;
import com.byazt.ctq.w;
import com.byazt.pg.r;
import com.byazt.ry.j;
import com.byazt.ymw.u;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 199, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile Handler hp;

    public static void hp(JSONArray jSONArray, String str) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                String strOptString = jSONObjectOptJSONObject.optString("url");
                String strOptString2 = jSONObjectOptJSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                    hp(strOptString2, strOptString, str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static w jx(String str) {
        return j.l(str, "feature_data");
    }

    private static void hp(final String str, String str2, final String str3) {
        com.byazt.ap.hp hpVarW;
        if (hp(str, str3) || (hpVarW = com.byazt.cm.w.hp().l().w()) == null) {
            return;
        }
        hpVarW.hp(str2);
        hpVarW.hp(new com.byazt.mnb.hp() { // from class: com.byazt.dfp.l.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar != null) {
                    try {
                        if (lVar.q()) {
                            String str4 = new String(lVar.gu());
                            l.jx(str3).put(str, str4);
                            com.byazt.bll.l.hp().hp(new JSONObject(str4).optJSONArray("rules"));
                        }
                    } catch (Throwable th) {
                        u.hp("Tmee_TTFeatureUtils", "download rule error, md5:" + str, th);
                    }
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                u.l("Tmee_TTFeatureUtils", "download rule failed error");
            }
        });
    }

    private static boolean hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            String str3 = jx(str2).get(str, "");
            if (TextUtils.isEmpty(str3)) {
                return false;
            }
            com.byazt.bll.l.hp().hp(new JSONObject(str3).optJSONArray("rules"));
            return true;
        } catch (Throwable th) {
            u.l("Tmee_TTFeatureUtils", "get feature rule error :" + th.toString());
            return false;
        }
    }

    public static Handler hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = ((r) com.byazt.ym.j.getService("thread_service")).obtainHandler("tt_csj_feature_handler");
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (str.startsWith("${") && str.endsWith("}")) ? str.substring(2, str.length() - 1) : str;
    }
}
