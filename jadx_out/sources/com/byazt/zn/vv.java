package com.byazt.zn;

import android.content.Context;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 65})
/* loaded from: classes3.dex */
public class vv {
    public static final String hp = null;

    /* renamed from: l, reason: collision with root package name */
    public static long f28563l = -1;

    public static JSONArray hp(final Context context) {
        if (System.currentTimeMillis() - f28563l <= 1000) {
            return null;
        }
        f28563l = System.currentTimeMillis();
        if (!com.byazt.jkd.s.w() || !l() || !com.byazt.jz.sz.l().dh() || !com.byazt.jz.s.u().xs().alist()) {
            return null;
        }
        com.byazt.uid.w.hp(new com.byazt.uid.eb("getIncrementalInstallApps") { // from class: com.byazt.zn.vv.1
            @Override // java.lang.Runnable
            public void run() {
                vv.jx(context);
            }
        }, 1);
        return hp();
    }

    private static List<String> j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(Context context) {
        try {
            List<String> listHp = com.byazt.jkd.jx.l().hp(context);
            if (listHp != null && !listHp.isEmpty()) {
                List<String> listJ = j(com.byazt.jz.l.hp().get("install_app_string", hp));
                l(hp(listHp));
                if (listJ != null && !listJ.isEmpty()) {
                    listHp.removeAll(listJ);
                }
                jx(hp(listHp));
            }
        } catch (Exception unused) {
        }
    }

    private static void l(String str) {
        com.byazt.jz.l.hp().put("install_app_string", str);
    }

    private static boolean l() {
        long j2 = com.byazt.jz.l.hp().get("apptime", -1L);
        return j2 == -1 || System.currentTimeMillis() - j2 > 43200000;
    }

    private static JSONArray hp() {
        try {
            String str = com.byazt.jz.l.hp().get("install_app_incremental_string", hp);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new JSONArray((Collection) j(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void jx(String str) {
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        jxVarHp.put("install_app_incremental_string", str);
        jxVarHp.put("apptime", System.currentTimeMillis());
    }

    private static String hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(list.get(i2));
            if (i2 != list.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString().trim();
    }

    public static boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            hp(0, 0, null);
            return false;
        }
        if (ky.o() && !ky.l(str)) {
            hp(0, 0, null);
        }
        return false;
    }

    private static void hp(final int i2, final int i3, final String str) {
        com.byazt.lf.l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.zn.vv.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("call_api_status", i2);
                    jSONObject.put("has_actived", i3);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("error_msg", str);
                    }
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("call_active_api").l(jSONObject.toString());
            }
        }, "call_active_api", true);
    }
}
