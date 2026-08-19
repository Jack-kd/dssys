package com.byazt.et;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.anythink.core.common.m.AbstractC1114b;
import com.baidu.mobads.sdk.internal.cb;
import com.byakv.z.TTEncryptUtils;
import com.byazt.gt.j;
import com.byazt.gt.zy;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 315, 28})
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f19495a;
    public static JSONObject hp;

    /* renamed from: q, reason: collision with root package name */
    public static volatile boolean f19498q;

    /* renamed from: s, reason: collision with root package name */
    public static volatile int f19499s;

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f19496j = {"GET", "POST"};

    /* renamed from: w, reason: collision with root package name */
    public static final String[] f19500w = {"aid", "app_version", "tt_data"};

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f19497l = {"aid", "version_code", "ab_client", "ab_version", "ab_feature", "ab_group", "iid", "device_platform"};
    public static final String[] jx = {"tt_data", "device_platform"};
    public static Object eb = new Object();

    public static boolean hp(int i2) {
        return i2 >= 500 && i2 < 600;
    }

    public static JSONObject jx(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        jx jxVarHp = hp(1, str, null, j.hp(jSONObject.toString()));
        if (jxVarHp == null || jxVarHp.hp() == null) {
            jSONObject2 = null;
        } else {
            try {
                jSONObject2 = new JSONObject(jxVarHp.hp());
            } catch (JSONException unused) {
            }
        }
        if (jSONObject2 == null || !cb.f11292o.equals(jSONObject2.optString("message", ""))) {
            return null;
        }
        return jSONObject2.optJSONObject("data");
    }

    private static void l(Context context) {
        if (f19498q || context == null) {
            return;
        }
        synchronized (eb) {
            try {
                SharedPreferences.Editor editorEdit = zy.l(context).edit();
                if (f19499s > 2) {
                    f19499s -= 2;
                } else {
                    f19499s = 0;
                }
                editorEdit.putInt("app_log_encrypt_faild_count", f19499s);
                editorEdit.apply();
                f19498q = true;
            } catch (Throwable unused) {
            }
        }
    }

    private static String hp(String str) {
        if (TextUtils.isEmpty(str) || !com.byazt.ub.hp.s()) {
            return str;
        }
        Uri uri = Uri.parse(str);
        String query = uri.getQuery();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (String str2 : f19500w) {
            String queryParameter = uri.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                arrayList.add(new Pair(str2, queryParameter));
            }
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.clearQuery();
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Pair pair = (Pair) obj;
            builderBuildUpon.appendQueryParameter((String) pair.first, (String) pair.second);
        }
        builderBuildUpon.appendQueryParameter("tt_info", new String(Base64.encode(j.hp(query), 8)));
        return builderBuildUpon.build().toString();
    }

    public static JSONObject l(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        HashMap map = new HashMap(2);
        if (com.byazt.ub.hp.s()) {
            map.put(AbstractC1114b.f5589g, "application/octet-stream;tt-data=a");
        } else {
            map.put(AbstractC1114b.f5589g, "application/json; charset=utf-8");
        }
        jx jxVarHp = hp(1, str, map, j.hp(jSONObject.toString()));
        if (jxVarHp == null || jxVarHp.hp() == null) {
            jSONObject2 = null;
        } else {
            try {
                jSONObject2 = new JSONObject(jxVarHp.hp());
            } catch (JSONException unused) {
            }
        }
        if (jSONObject2 == null || !"ss_app_log".equals(jSONObject2.optString("magic_tag", ""))) {
            return null;
        }
        return jSONObject2.optJSONObject("config");
    }

    public static String hp(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Uri uri = Uri.parse(str);
        HashMap map = new HashMap(strArr.length);
        for (String str2 : strArr) {
            String queryParameter = uri.getQueryParameter(str2);
            if (!TextUtils.isEmpty(queryParameter)) {
                map.put(str2, queryParameter);
            }
        }
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.clearQuery();
        for (String str3 : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str3, (String) map.get(str3));
        }
        return builderBuildUpon.build().toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01df A[EXC_TOP_SPLITTER, PHI: r1 r12
      0x01df: PHI (r1v3 ??) = (r1v2 ??), (r1v10 ??) binds: [B:88:0x0204, B:80:0x01dd] A[DONT_GENERATE, DONT_INLINE]
      0x01df: PHI (r12v4 java.lang.String) = (r12v3 java.lang.String), (r12v13 java.lang.String) binds: [B:88:0x0204, B:80:0x01dd] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0201 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x020b  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.byazt.et.jx hp(int r10, java.lang.String r11, java.util.HashMap<java.lang.String, java.lang.String> r12, byte[] r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.et.hp.hp(int, java.lang.String, java.util.HashMap, byte[]):com.byazt.et.jx");
    }

    private static String hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int size = list.size();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            if (str == null) {
                str = "null";
            }
            if (i2 == 0) {
                sb.append(str);
            } else {
                sb.append(", ");
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static jx hp(String str, JSONObject jSONObject) {
        HashMap map = new HashMap(2);
        if (com.byazt.ub.hp.s()) {
            map.put(AbstractC1114b.f5589g, "application/octet-stream;tt-data=a");
        } else {
            map.put(AbstractC1114b.f5589g, "application/json; charset=utf-8");
        }
        return hp(1, hp(str), map, j.hp(jSONObject.toString()));
    }

    public static String hp(Context context, String str, byte[] bArr, String str2, boolean z2, boolean z3) {
        byte[] bArrHp;
        try {
            try {
                HashMap map = new HashMap();
                if (z2) {
                    try {
                        bArrHp = hp(bArr);
                        map.put("Content-Encoding", "gzip");
                    } catch (Exception unused) {
                        return null;
                    }
                } else {
                    bArrHp = hp(context, bArr);
                    map.put("log-encode-type", "gzip");
                    str = str + "&tt_data=a";
                    if (z3) {
                        str = str + "&config_retry=b";
                    }
                    map.remove("Content-Encoding");
                    map.put(AbstractC1114b.f5589g, "application/octet-stream;tt-data=a");
                }
                if (!TextUtils.isEmpty(str2)) {
                    map.put(AbstractC1114b.f5589g, str2);
                }
                jx jxVarHp = hp(1, str, map, bArrHp);
                if (jxVarHp != null) {
                    return jxVarHp.hp();
                }
                return null;
            } catch (RuntimeException e2) {
                com.byazt.fg.hp.jx("__kite", e2.getMessage());
                return "";
            }
        } catch (Exception e3) {
            com.byazt.fg.hp.jx("__kite", e3.getMessage());
            return "";
        }
    }

    public static byte[] hp(byte[] bArr) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(8192);
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        } catch (Throwable th) {
            th = th;
        }
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            throw th;
        }
    }

    private static byte[] hp(Context context, byte[] bArr) throws Exception {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (context != null) {
                hp(context);
                if (f19499s >= 3) {
                    return null;
                }
                byte[] bArrHp = TTEncryptUtils.hp(byteArray, byteArray.length);
                l(context);
                return bArrHp;
            }
            return TTEncryptUtils.hp(byteArray, byteArray.length);
        } catch (Throwable th) {
            try {
                com.byazt.fg.hp.jx("__kite", "gzip " + th);
                return null;
            } finally {
                gZIPOutputStream.close();
            }
        }
    }

    private static void hp(Context context) {
        if (f19495a || context == null) {
            return;
        }
        synchronized (eb) {
            try {
                SharedPreferences sharedPreferencesL = zy.l(context);
                f19499s = sharedPreferencesL.getInt("app_log_encrypt_faild_count", 0);
                SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
                editorEdit.putInt("app_log_encrypt_faild_count", f19499s + 1);
                editorEdit.apply();
                f19495a = true;
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int hp(java.lang.String[] r8, byte[] r9, com.byazt.yu.s r10) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.et.hp.hp(java.lang.String[], byte[], com.byazt.yu.s):int");
    }
}
