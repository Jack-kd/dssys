package com.byazt.tn;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.ymw.a;
import com.byazt.ymw.eb;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.vv;
import com.kuaishou.weapon.p0.g;
import com.umeng.analytics.pro.bv;
import java.io.File;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 800, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp;

    public static void hp(JSONObject jSONObject) {
        if (d.f21859s.equals("privacy")) {
            return;
        }
        try {
            com.byazt.yb.hp location = ((jl) com.byazt.ym.j.getService("device_info_new")).getLocation(!com.byazt.lca.hp.l());
            float longitude = 0.0f;
            float latitude = location == null ? 0.0f : location.getLatitude();
            if (location != null) {
                longitude = location.getLongitude();
            }
            jSONObject.put("latitude", latitude);
            jSONObject.put("longitude", longitude);
        } catch (JSONException unused) {
        }
    }

    public static void jx(JSONObject jSONObject) {
        try {
            if (d.f21859s.equals("privacy")) {
                jSONObject.put("imei_md5", l());
            } else {
                jSONObject.put("imei", DeviceUtils.hp((Boolean) null));
            }
        } catch (JSONException unused) {
        }
    }

    public static void l(JSONObject jSONObject) throws JSONException {
        com.byazt.yb.hp location;
        if (d.f21859s.equals("privacy") || (location = ((jl) com.byazt.ym.j.getService("device_info_new")).getLocation(!com.byazt.lca.hp.l())) == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("latitude", location.getLatitude());
            jSONObject2.put("longitude", location.getLongitude());
            jSONObject.put("geo", jSONObject2);
        } catch (Exception unused) {
        }
    }

    public static void hp(com.byazt.jt.j jVar, List<String> list) {
        if (d.f21859s.equals("privacy") || !jVar.isCanUseLocation()) {
            return;
        }
        list.add(g.f31166h);
        list.add(g.f31165g);
    }

    private static String l() {
        if (TextUtils.isEmpty(hp)) {
            String strHp = DeviceUtils.hp((Boolean) null);
            if (!TextUtils.isEmpty(strHp)) {
                hp = a.l(strHp);
            }
        }
        return hp;
    }

    public static void hp(Context context, JSONObject jSONObject) throws JSONException {
        try {
            if (d.f21859s.equals("privacy")) {
                jSONObject.put("udid_md5", l());
                return;
            }
            jl jlVar = (jl) com.byazt.ym.j.getService("device_info_new");
            jSONObject.put("udid", DeviceUtils.hp((Boolean) null));
            jSONObject.put(bv.f48874A, jlVar.getMacAddress(null));
        } catch (Exception unused) {
        }
    }

    public static void l(Context context, JSONObject jSONObject) {
        if (d.f21859s.equals("privacy")) {
            return;
        }
        try {
            JSONArray jSONArrayHp = vv.hp(context);
            if (jSONArrayHp != null) {
                jSONObject.put("app_list", jSONArrayHp);
            }
        } catch (JSONException unused) {
        }
    }

    public static boolean l(String str) {
        if (d.f21859s.equals("privacy")) {
            return false;
        }
        return vv.hp(str);
    }

    public static void hp() {
        if (d.f21859s.equals("privacy")) {
            return;
        }
        ((jl) com.byazt.ym.j.getService("device_info_new")).getLocation(!com.byazt.lca.hp.l());
    }

    public static File l(Context context) {
        if (d.f21859s.equals("privacy")) {
            return eb.hp(context, "Download/Pangolin", false, null);
        }
        return eb.hp(context, Environment.DIRECTORY_DOWNLOADS, false, null);
    }

    public static void hp(String str) {
        if (d.f21859s.equals("privacy")) {
            return;
        }
        com.byazt.jkd.jx.l().hp(str);
    }

    public static void hp(Context context) {
        if (d.f21859s.equals("privacy") || (sz.l().qn() & 8) != 0) {
            return;
        }
        hp.hp(context);
    }
}
