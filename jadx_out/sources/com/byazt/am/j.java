package com.byazt.am;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.byazt.jz.sz;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 214, 38})
/* loaded from: classes2.dex */
public class j {
    public static boolean hp(String str) {
        String str2;
        int iQy;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            str2 = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "fsswiper_freq").get(str, "");
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(str2) && (iQy = sz.l().qy()) > 0) {
            return new JSONObject(str2).optInt(hp(), 0) >= iQy;
        }
        return false;
    }

    private static void jx(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ctq.jx jxVarHp = com.byazt.ry.j.hp(com.byazt.el.hp.j(), "fsswiper_freq");
        try {
            String str2 = jxVarHp.get(str, "");
            JSONObject jSONObject = TextUtils.isEmpty(str2) ? new JSONObject() : new JSONObject(str2);
            String strHp = hp();
            int iOptInt = jSONObject.optInt(strHp, 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(strHp, iOptInt + 1);
            jxVarHp.put(str, jSONObject2.toString());
        } catch (Exception unused) {
        }
    }

    public static void l(String str) throws JSONException {
        jx(str);
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String hp() {
        try {
            return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
        } catch (Exception unused) {
            return null;
        }
    }
}
