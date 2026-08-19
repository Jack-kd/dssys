package com.byazt.zn;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.byazt.ub.w;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 301})
/* loaded from: classes3.dex */
public class cx {
    public static volatile String hp = "";

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f28489j = false;
    public static volatile boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f28490l = "";

    public static void hp(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            jx = true;
            hp = str;
            com.byazt.oz.jx.l(7, hp == null ? "" : hp);
            f28489j = false;
            update(false);
        } catch (Throwable unused) {
        }
    }

    public static String jx(com.byazt.tn.j jVar) {
        if (jVar == null) {
            return null;
        }
        String type = jVar.getType();
        if (TextUtils.equals(type, "error")) {
            return "error";
        }
        if (TextUtils.equals(type, "timeout")) {
            return "timeout";
        }
        w.hp hpVarHp = jVar.hp();
        return (hpVarHp == null || TextUtils.isEmpty(hpVarHp.hp)) ? "error" : hpVarHp.hp;
    }

    public static String l(com.byazt.tn.j jVar) {
        JSONObject jSONObjectHp;
        if (jVar != null) {
            String type = jVar.getType();
            if (TextUtils.equals(type, "error")) {
                return "error";
            }
            if (TextUtils.equals(type, "timeout")) {
                return "timeout";
            }
            w.hp hpVarHp = jVar.hp();
            if (hpVarHp != null && !TextUtils.isEmpty(hpVarHp.hp) && (jSONObjectHp = hp(hpVarHp)) != null) {
                return jSONObjectHp.toString();
            }
        }
        return "error";
    }

    private static void update(boolean z2) {
        if (TextUtils.isEmpty(hp)) {
            return;
        }
        String strL = com.byazt.ymw.hp.l(hp);
        com.byazt.lca.j.hp().jx("app_log_oaid", hp);
        com.byazt.lca.j.hp().jx("new_app_log_oaid", strL);
        com.byazt.lca.j.hp().hp("is_use_dev_oaid", z2);
    }

    public static void hp(com.byazt.tn.j jVar) {
        com.byazt.lk.hp.hp(jVar);
        com.byazt.yx.l.hp().hp(jVar);
    }

    public static w.hp jx(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new w.hp(str, false, hp(com.byazt.jz.sz.getContext()));
    }

    private static JSONObject hp(w.hp hpVar) throws JSONException {
        if (hpVar == null) {
            return null;
        }
        String str = hpVar.hp;
        long j2 = hpVar.jx;
        boolean z2 = hpVar.f26138l;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("oaid", str);
            jSONObject.putOpt("isTrackLimited", Boolean.valueOf(z2));
            jSONObject.putOpt("hWIdVersionCode", Long.valueOf(j2));
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String l(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return "error";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("oaid", str);
            jSONObject.putOpt("isTrackLimited", Boolean.FALSE);
            jSONObject.putOpt("hWIdVersionCode", Integer.valueOf(hp(com.byazt.jz.sz.getContext())));
            return jSONObject.toString();
        } catch (Exception unused) {
            return "error";
        }
    }

    private static int hp(Context context) throws PackageManager.NameNotFoundException {
        String str = "com.huawei.hwid.tv";
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                str = "com.huawei.hwid";
            } else if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
                str = "com.huawei.hms";
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    private static void l() {
        f28489j = com.byazt.lca.j.hp().l("is_use_dev_oaid", false);
    }

    public static String hp(boolean z2) throws JSONException {
        long j2;
        if (!TextUtils.isEmpty(hp)) {
            return hp;
        }
        if (z2 && !TextUtils.isEmpty(f28490l)) {
            return f28490l;
        }
        try {
            String strL = com.byazt.lca.j.hp().l("new_app_log_oaid", (String) null);
            if (TextUtils.isEmpty(strL)) {
                j2 = 0;
            } else {
                JSONObject jSONObject = new JSONObject(strL);
                f28490l = com.byazt.ymw.hp.jx(jSONObject.getString(f.a.f3244d));
                j2 = jSONObject.getLong("time");
            }
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(f28490l) && (z2 || System.currentTimeMillis() - j2 < 86400000)) {
            l();
            return f28490l;
        }
        if (!jx) {
            com.byazt.jz.a.hp().l();
            com.byazt.jt.j jVarSz = com.byazt.jz.s.u().sz();
            if (jVarSz != null && !TextUtils.isEmpty(jVarSz.getDevOaid())) {
                hp = jVarSz.getDevOaid();
                boolean z3 = !TextUtils.isEmpty(jVarSz.getDevOaid());
                f28489j = z3;
                update(z3);
            }
            com.byazt.oz.jx.l(7, hp == null ? "" : hp);
        }
        return hp == null ? "" : hp;
    }

    public static int hp() {
        return f28489j ? 1 : 0;
    }
}
