package com.byazt.ky;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.s;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 574, 28})
/* loaded from: classes.dex */
public class hp {
    public static volatile hp hp;
    public l jx;

    /* renamed from: w, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f22256w;

    /* renamed from: l, reason: collision with root package name */
    public boolean f22255l = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f22254j = false;

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public Function<SparseArray<Object>, Object> a() {
        return this.f22256w;
    }

    public void j() {
        l lVar = this.jx;
        if (lVar != null) {
            lVar.hp();
        }
    }

    public boolean jx() {
        return this.f22255l;
    }

    public void l() {
        this.f22255l = true;
    }

    public void w() {
        this.f22254j = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String jx(java.lang.String r5) throws org.json.JSONException {
        /*
            r4 = this;
            java.lang.String r0 = "waterfall_ab_version"
            com.byazt.jz.s r1 = com.byazt.jz.s.u()
            java.lang.String r1 = r1.qu()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L4e
            java.lang.String r2 = r1.trim()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L4e
            java.lang.String r5 = hp(r5, r0, r1)     // Catch: java.lang.Throwable -> L1f
            return r5
        L1f:
            r1 = move-exception
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L38
            r2.<init>()     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "type"
            r2.put(r3, r0)     // Catch: java.lang.Throwable -> L38
            java.lang.String r0 = "json"
            r2.put(r0, r5)     // Catch: java.lang.Throwable -> L38
            com.byazt.lf.k r0 = com.byazt.lf.k.hp()     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "gm_add_csj_libra_vids"
            r0.hp(r3, r2, r1)     // Catch: java.lang.Throwable -> L38
        L38:
            r0 = 0
            if (r5 == 0) goto L41
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L41
            r1.<init>(r5)     // Catch: org.json.JSONException -> L41
            goto L42
        L41:
            r1 = r0
        L42:
            org.json.JSONObject r5 = r4.l(r1)
            if (r5 == 0) goto L4d
            java.lang.String r5 = r5.toString()
            return r5
        L4d:
            return r0
        L4e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ky.hp.jx(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String l(java.lang.String r5) throws org.json.JSONException {
        /*
            r4 = this;
            java.lang.String r0 = "app_ab_version"
            com.byazt.jz.s r1 = com.byazt.jz.s.u()
            java.lang.String r1 = r1.qu()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L4e
            java.lang.String r2 = r1.trim()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L4e
            java.lang.String r5 = hp(r5, r0, r1)     // Catch: java.lang.Throwable -> L1f
            return r5
        L1f:
            r1 = move-exception
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L38
            r2.<init>()     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "type"
            r2.put(r3, r0)     // Catch: java.lang.Throwable -> L38
            java.lang.String r0 = "json"
            r2.put(r0, r5)     // Catch: java.lang.Throwable -> L38
            com.byazt.lf.k r0 = com.byazt.lf.k.hp()     // Catch: java.lang.Throwable -> L38
            java.lang.String r3 = "gm_add_csj_libra_vids"
            r0.hp(r3, r2, r1)     // Catch: java.lang.Throwable -> L38
        L38:
            r0 = 0
            if (r5 == 0) goto L41
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L41
            r1.<init>(r5)     // Catch: org.json.JSONException -> L41
            goto L42
        L41:
            r1 = r0
        L42:
            org.json.JSONObject r5 = r4.hp(r1)
            if (r5 == 0) goto L4d
            java.lang.String r5 = r5.toString()
            return r5
        L4d:
            return r0
        L4e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ky.hp.l(java.lang.String):java.lang.String");
    }

    public boolean hp(String str, int i2, boolean z2) {
        return z2 || hp(str) || com.byazt.di.l.l().hp(str, i2, 101) != null;
    }

    public boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if ("200000000".equals(str)) {
            return true;
        }
        return str.matches("^1[0-9]{8}$");
    }

    public void hp(l lVar) {
        this.jx = lVar;
    }

    public JSONObject l(JSONObject jSONObject) throws JSONException {
        String strQu = s.u().qu();
        if (TextUtils.isEmpty(strQu)) {
            return jSONObject;
        }
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("waterfall_ab_version", strQu);
                return jSONObject2;
            } catch (JSONException unused) {
                return null;
            }
        }
        if (jSONObject.has("waterfall_ab_version")) {
            String strOptString = jSONObject.optString("waterfall_ab_version");
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject.put("waterfall_ab_version", strQu);
                return jSONObject;
            }
            jSONObject.put("waterfall_ab_version", strOptString + "," + strQu);
            return jSONObject;
        }
        jSONObject.put("waterfall_ab_version", strQu);
        return jSONObject;
    }

    public void hp(int i2, String str) {
        l lVar = this.jx;
        if (lVar != null) {
            lVar.hp(i2, str);
        }
    }

    public void hp(Function<SparseArray<Object>, Object> function) {
        this.f22256w = function;
    }

    public JSONObject hp(JSONObject jSONObject) throws JSONException {
        String strQu = s.u().qu();
        if (TextUtils.isEmpty(strQu)) {
            return jSONObject;
        }
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("app_ab_version", strQu);
                return jSONObject2;
            } catch (JSONException unused) {
                return null;
            }
        }
        if (jSONObject.has("app_ab_version")) {
            String strOptString = jSONObject.optString("app_ab_version");
            if (TextUtils.isEmpty(strOptString)) {
                jSONObject.put("app_ab_version", strQu);
                return jSONObject;
            }
            jSONObject.put("app_ab_version", strOptString + "," + strQu);
            return jSONObject;
        }
        jSONObject.put("app_ab_version", strQu);
        return jSONObject;
    }

    private static String hp(String str, String str2, String str3) {
        if (str != null && !str.trim().isEmpty()) {
            String strTrim = str.trim();
            if (!strTrim.startsWith("{") || !strTrim.endsWith("}")) {
                return str;
            }
            int iIndexOf = strTrim.indexOf("\"" + str2 + "\"");
            if (iIndexOf != -1) {
                int iIndexOf2 = strTrim.indexOf(58, iIndexOf) + 1;
                while (iIndexOf2 < strTrim.length() && Character.isWhitespace(strTrim.charAt(iIndexOf2))) {
                    iIndexOf2++;
                }
                String strSubstring = strTrim.substring(0, iIndexOf2);
                String strSubstring2 = strTrim.substring(iIndexOf2);
                if (strSubstring2.startsWith("\"")) {
                    return strSubstring + "\"" + str3 + "," + strSubstring2.substring(1);
                }
                if (!strSubstring2.startsWith("'")) {
                    return str;
                }
                return strSubstring + "'" + str3 + "," + strSubstring2.substring(1);
            }
            String strTrim2 = strTrim.substring(0, strTrim.length() - 1).trim();
            if (!strTrim2.endsWith(",")) {
                strTrim2 = strTrim2 + ",";
            }
            return strTrim2 + "\"" + str2 + "\":\"" + str3 + "\"}";
        }
        return "{\"" + str2 + "\":\"" + str3 + "\"}";
    }
}
