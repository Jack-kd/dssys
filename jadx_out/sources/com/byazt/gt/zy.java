package com.byazt.gt;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.kc.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bv;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER, 302})
/* loaded from: classes2.dex */
public class zy {
    public static String hp = ":push";

    public static com.byazt.ub.eb a() {
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null) {
            return null;
        }
        return sVarZy.nu();
    }

    public static Looper eb() {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null || (ebVarNu = sVarZy.nu()) == null) {
            return null;
        }
        return ebVarNu.j();
    }

    public static boolean hp(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean j() {
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null) {
            return false;
        }
        return sVarZy.b();
    }

    public static boolean jx() {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null || (ebVarNu = sVarZy.nu()) == null) {
            return false;
        }
        return ebVarNu.l();
    }

    public static boolean l() {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null || (ebVarNu = sVarZy.nu()) == null) {
            return false;
        }
        return ebVarNu.hp();
    }

    public static boolean w() {
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null) {
            return false;
        }
        return sVarZy.xs();
    }

    public static boolean hp(JSONObject jSONObject, JSONObject jSONObject2) {
        return (jSONObject == null || jSONObject2 == null) ? hp((Object) jSONObject, (Object) jSONObject2) : jSONObject.toString().equals(jSONObject2.toString());
    }

    public static String hp(Context context) {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy != null && (ebVarNu = sVarZy.nu()) != null) {
            return ebVarNu.hp(context);
        }
        return "";
    }

    public static boolean jx(Context context) {
        String strHp = hp(context);
        return strHp != null && strHp.endsWith(hp);
    }

    public static void l(JSONObject jSONObject, JSONObject jSONObject2) {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy == null || (ebVarNu = sVarZy.nu()) == null) {
            return;
        }
        ebVarNu.hp(jSONObject, jSONObject2);
    }

    public static JSONObject jx(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.put(next, jSONObject2.opt(next));
            }
            return jSONObject;
        } catch (JSONException e2) {
            e.l(e2);
            return jSONObject;
        }
    }

    public static String l(JSONObject jSONObject) throws UnsupportedEncodingException {
        try {
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            if (bytes.length == 0) {
                return "";
            }
            return com.byakv.z.TTEncryptUtils.clientPackedBase64(bytes, bytes.length);
        } catch (Exception e2) {
            com.byazt.fg.hp.l("parseEncrypt#parse error: " + e2.getMessage());
            return "";
        }
    }

    public static boolean hp() {
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy != null) {
            return sVarZy.d();
        }
        return true;
    }

    public static JSONObject hp(JSONObject jSONObject) {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        return (sVarZy == null || (ebVarNu = sVarZy.nu()) == null) ? jSONObject : ebVarNu.hp(jSONObject);
    }

    public static JSONObject jx(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        jx(jSONObject2, jSONObject);
        try {
            String strHp = com.byazt.hk.eb.hp(jSONObject2.optJSONObject("oaid"));
            if (!TextUtils.isEmpty(strHp)) {
                jSONObject2.put("oaid", strHp);
            }
        } catch (Exception e2) {
            e.l(e2);
        }
        return jSONObject2;
    }

    public static SharedPreferences l(Context context) {
        return com.byazt.rz.l.l(context, com.byazt.yu.s.hp(), 0);
    }

    public static JSONObject hp(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("aid", com.byazt.ub.hp.eb());
            jSONObject2.putOpt(bv.f48923x, "android");
            jSONObject2.putOpt(bv.f48924y, Build.VERSION.RELEASE);
            jSONObject2.putOpt(bv.f48879F, Build.BRAND);
            jSONObject2.putOpt(bv.ac, Build.MODEL);
            jSONObject2.putOpt("device_platform", "android");
            if (jSONObject != null) {
                jSONObject2.putOpt("app_version", jSONObject.optString("app_version"));
                if (TextUtils.isEmpty(str)) {
                    jSONObject2.putOpt("device_id", jSONObject.optString("device_id"));
                } else {
                    jSONObject2.putOpt("device_id", str);
                }
                jSONObject2.putOpt("device_model", jSONObject.optString("device_model"));
                jSONObject2.putOpt("os_api", Integer.valueOf(jSONObject.optInt("os_api")));
                jSONObject2.putOpt(bv.f48918s, jSONObject.optString(bv.f48918s));
                jSONObject2.putOpt(AbsServerManager.PACKAGE_QUERY_BINDER, jSONObject.optString(AbsServerManager.PACKAGE_QUERY_BINDER));
                jSONObject2.putOpt("rom", jSONObject.optString("rom"));
                jSONObject2.putOpt("rom_version", com.byazt.zq.hp.l());
                jSONObject2.putOpt("sdk_version", jSONObject.optString("sdk_version_name"));
                jSONObject2.putOpt("version_code", jSONObject.optString("version_code"));
            }
        } catch (Exception unused) {
        }
        return jSONObject2;
    }

    public static Looper l(com.byazt.yu.s sVar) {
        com.byazt.ub.s sVarF;
        com.byazt.ub.eb ebVarNu;
        if (sVar == null || (sVarF = sVar.f()) == null || (ebVarNu = sVarF.nu()) == null) {
            return null;
        }
        return ebVarNu.j();
    }

    public static Looper hp(com.byazt.yu.s sVar) {
        com.byazt.ub.s sVarF;
        com.byazt.ub.eb ebVarNu;
        if (sVar == null || (sVarF = sVar.f()) == null || (ebVarNu = sVarF.nu()) == null) {
            return null;
        }
        return ebVarNu.jx();
    }

    public static String hp(String str, HashMap<String, String> map, String str2) {
        StringBuilder sb = new StringBuilder(str);
        for (String str3 : map.keySet()) {
            String strHp = hp(str3, str2);
            String str4 = map.get(str3);
            String strHp2 = str4 != null ? hp(str4, str2) : "";
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(strHp);
            sb.append("=");
            sb.append(strHp2);
        }
        return sb.toString();
    }

    private static String hp(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static void hp(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                e.hp(th);
            }
        }
    }

    public static void hp(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                e.l(th);
            }
        }
    }

    public static String hp(String str) {
        com.byazt.ub.eb ebVarNu;
        com.byazt.ub.s sVarZy = com.byazt.ub.hp.zy();
        if (sVarZy != null && (ebVarNu = sVarZy.nu()) != null) {
            return ebVarNu.hp(str);
        }
        return "";
    }
}
