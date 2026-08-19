package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.octopus.ad.ADBidEvent;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.bt;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f50256a = false;

    /* renamed from: b, reason: collision with root package name */
    private static volatile JSONObject f50257b = null;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f50258c = true;

    /* renamed from: d, reason: collision with root package name */
    private static final a f50259d = new a();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final String f50260a = "ins_referrer";

        /* renamed from: b, reason: collision with root package name */
        private JSONArray f50261b;

        private JSONArray b(Context context) {
            String str;
            JSONObject jSONObjectD;
            JSONArray jSONArray = new JSONArray();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[iReferrer] start");
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                if (f() || bt.c()) {
                    str = "huawei";
                    jSONObjectD = d(context);
                } else if (g()) {
                    str = "honor";
                    jSONObjectD = c(context);
                } else if (b()) {
                    str = MediationConstant.ADN_XIAOMI;
                    jSONObjectD = e(context);
                } else if (c()) {
                    str = "vivo";
                    jSONObjectD = f(context);
                } else if (e()) {
                    str = "samsung";
                    jSONObjectD = h(context);
                } else if (d()) {
                    str = "oppo";
                    jSONObjectD = g(context);
                } else {
                    str = null;
                    jSONObjectD = null;
                }
                if (jSONObjectD != null && jSONObjectD.length() > 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(n.f36449l, str);
                    jSONObject.put("referrer", jSONObjectD);
                    jSONArray.put(jSONObject);
                    MLog.i("[iReferrer] get:" + jSONObject);
                }
            } catch (Throwable th) {
                UMRTLog.se(UMRTLog.RTLOG_TAG, "[iReferrer] failed: " + th.getMessage());
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[iReferrer] result: " + jSONArray + " cost: " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            return jSONArray;
        }

        private JSONObject c(Context context) {
            Uri uri = Uri.parse(new String(new byte[]{99, 111, 110, 116, 101, 110, 116, 58, 47, 47, 99, 111, 109, 46, 104, 105, 104, 111, 110, 111, 114, 46, 97, 112, 112, 109, 97, 114, 107, 101, 116, 46, 99, 111, 109, 109, 111, 110, 100, 97, 116, 97, 47, 105, 116, 101, 109, 47, 119, 105, 115, 101, 112, 97, 99, 107, 97, com.sigmob.sdk.archives.tar.e.f35454T, 101}));
            String[] strArr = {context.getPackageName()};
            if (a(context, uri.getAuthority())) {
                return a(context, uri, strArr);
            }
            return null;
        }

        private JSONObject d(Context context) {
            Uri uri = Uri.parse(new String(new byte[]{99, 111, 110, 116, 101, 110, 116, 58, 47, 47, 99, 111, 109, 46, 104, 117, 97, 119, 101, 105, 46, 97, 112, 112, 109, 97, 114, 107, 101, 116, 46, 99, 111, 109, 109, 111, 110, 100, 97, 116, 97, 47, 105, 116, 101, 109, 47, com.sigmob.sdk.archives.tar.e.f35447M}));
            String[] strArr = {context.getPackageName()};
            if (a(context, uri.getAuthority())) {
                return a(context, uri, strArr);
            }
            return null;
        }

        private JSONObject e(Context context) {
            Uri uri = Uri.parse(new String(new byte[]{99, 111, 110, 116, 101, 110, 116, 58, 47, 47, 99, 111, 109, 46, com.sigmob.sdk.archives.tar.e.f35452R, 105, 97, 111, 109, 105, 46, 109, 97, 114, 107, 101, 116, 46, 112, 114, 111, 118, 105, 100, 101, 114, 46, 68, 105, 114, 101, 99, 116, 77, 97, 105, 108, 80, 114, 111, 118, 105, 100, 101, 114, 47, 114, 101, 102, 101, 114, 114, 101, 114, 47, 118, com.sigmob.sdk.archives.tar.e.f35445K}));
            if (a(context, uri.getAuthority())) {
                return a(context, uri, null);
            }
            return null;
        }

        private JSONObject f(Context context) {
            try {
                Uri uri = Uri.parse("content://com.bbk.appstore.provider.appstatus");
                if (!a(context, uri.getAuthority())) {
                    return null;
                }
                Bundle bundle = new Bundle();
                bundle.putString("package_name", context.getPackageName());
                Bundle bundleCall = context.getContentResolver().call(uri, "read_channel", (String) null, bundle);
                if (bundleCall != null && !bundleCall.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    for (String str : bundleCall.keySet()) {
                        Object obj = bundleCall.get(str);
                        if (obj != null) {
                            jSONObject.put(str, obj.toString());
                        }
                    }
                    return jSONObject;
                }
                return null;
            } catch (Throwable th) {
                UMRTLog.se(UMRTLog.RTLOG_TAG, "[iReferrer] failed: " + th.getMessage());
                return null;
            }
        }

        private JSONObject g(Context context) {
            Bundle bundleCall;
            try {
                Uri uri = Uri.parse("content://com.heytap.market.TrackProvider");
                if (a(context, uri.getAuthority()) && (bundleCall = context.getContentResolver().call(uri, "getTrackInfo", (String) null, (Bundle) null)) != null && !bundleCall.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    for (String str : bundleCall.keySet()) {
                        Object obj = bundleCall.get(str);
                        if (obj != null) {
                            jSONObject.put(str, obj.toString());
                        }
                    }
                    return jSONObject;
                }
                return null;
            } catch (Throwable th) {
                UMRTLog.se(UMRTLog.RTLOG_TAG, "[iReferrer] failed: " + th.getMessage());
                return null;
            }
        }

        private JSONObject h(Context context) {
            Uri uri = Uri.parse(new String(new byte[]{99, 111, 110, 116, 101, 110, 116, 58, 47, 47, 99, 111, 109, 46, 115, 101, 99, 46, 97, 110, 100, 114, 111, 105, 100, 46, 97, 112, 112, 46, 115, 97, 109, 115, 117, 110, com.sigmob.sdk.archives.tar.e.f35454T, 97, 112, 112, 115, 46, 114, 101, 102, 101, 114, 114, 101, 114}));
            if (a(context, uri.getAuthority())) {
                return a(context, uri, null);
            }
            return null;
        }

        public JSONArray a(Context context) {
            JSONArray jSONArray = this.f50261b;
            if (jSONArray != null) {
                if (jSONArray.length() > 0) {
                    return this.f50261b;
                }
                return null;
            }
            if (!a()) {
                this.f50261b = new JSONArray();
                return null;
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            String string = sharedPreferences.getString(f50260a, null);
            if (string != null) {
                String str = new String(Base64.decode(string, 2));
                UMRTLog.i(UMRTLog.RTLOG_TAG, "[iReferrer] cache: " + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.optInt("ver", 0) == 1) {
                        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ref");
                        this.f50261b = jSONArrayOptJSONArray;
                        if (jSONArrayOptJSONArray == null) {
                            this.f50261b = new JSONArray();
                        }
                        if (this.f50261b.length() == 0) {
                            return null;
                        }
                        return this.f50261b;
                    }
                } catch (Throwable unused) {
                }
            }
            this.f50261b = b(context);
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ver", 1);
                jSONObject2.put("ref", this.f50261b);
                sharedPreferences.edit().putString(f50260a, Base64.encodeToString(jSONObject2.toString().getBytes(), 2)).apply();
            } catch (Throwable th) {
                UMRTLog.se(UMRTLog.RTLOG_TAG, "[iReferrer] failed: " + th.getMessage());
            }
            if (this.f50261b.length() > 0) {
                return this.f50261b;
            }
            return null;
        }

        private a() {
        }

        private boolean e() {
            return a("SAMSUNG");
        }

        private boolean c() {
            return a(ADBidEvent.VIVO);
        }

        private boolean d() {
            return a("OPPO", "REALME", "ONEPLUS");
        }

        private boolean g() {
            return a("HONOR");
        }

        private boolean f() {
            return a(ADBidEvent.HUAWEI);
        }

        private boolean a() {
            return f() || b() || c() || e() || d() || g();
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0023 A[EXC_TOP_SPLITTER, PHI: r9
          0x0023: PHI (r9v3 android.database.Cursor) = (r9v2 android.database.Cursor), (r9v4 android.database.Cursor) binds: [B:18:0x0044, B:12:0x0021] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private org.json.JSONObject a(android.content.Context r9, android.net.Uri r10, java.lang.String[] r11) {
            /*
                r8 = this;
                r1 = 0
                android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L27
                r5 = 0
                r7 = 0
                r4 = 0
                r3 = r10
                r6 = r11
                android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L27
                if (r9 == 0) goto L21
                boolean r10 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L1e
                if (r10 == 0) goto L21
                org.json.JSONObject r10 = r8.a(r9)     // Catch: java.lang.Throwable -> L1e
                r9.close()     // Catch: java.lang.Throwable -> L1d
            L1d:
                return r10
            L1e:
                r0 = move-exception
                r10 = r0
                goto L2a
            L21:
                if (r9 == 0) goto L47
            L23:
                r9.close()     // Catch: java.lang.Throwable -> L47
                goto L47
            L27:
                r0 = move-exception
                r10 = r0
                r9 = r1
            L2a:
                java.lang.String r11 = "MobclickRT"
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L48
                r0.<init>()     // Catch: java.lang.Throwable -> L48
                java.lang.String r2 = "[iReferrer] failed: "
                r0.append(r2)     // Catch: java.lang.Throwable -> L48
                java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L48
                r0.append(r10)     // Catch: java.lang.Throwable -> L48
                java.lang.String r10 = r0.toString()     // Catch: java.lang.Throwable -> L48
                com.umeng.commonsdk.debug.UMRTLog.se(r11, r10)     // Catch: java.lang.Throwable -> L48
                if (r9 == 0) goto L47
                goto L23
            L47:
                return r1
            L48:
                r0 = move-exception
                r10 = r0
                if (r9 == 0) goto L4f
                r9.close()     // Catch: java.lang.Throwable -> L4f
            L4f:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.common.d.a.a(android.content.Context, android.net.Uri, java.lang.String[]):org.json.JSONObject");
        }

        private boolean b() {
            return a(ADBidEvent.XIAOMI, "REDMI", "BLACKSHARK");
        }

        private boolean a(Context context, String str) {
            try {
                ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(str, 0);
                if (providerInfoResolveContentProvider != null) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "[iReferrer] pi: " + providerInfoResolveContentProvider.packageName + ServiceReference.DELIMITER + providerInfoResolveContentProvider.name);
                    return true;
                }
            } catch (Throwable unused) {
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[iReferrer] pi: null");
            return false;
        }

        private JSONObject a(Cursor cursor) {
            JSONObject jSONObject = new JSONObject();
            int iMin = Math.min(cursor.getColumnCount(), 20);
            for (int i2 = 0; i2 < iMin; i2++) {
                try {
                    jSONObject.put(cursor.getColumnName(i2), cursor.getString(i2));
                } catch (Throwable th) {
                    UMRTLog.se(UMRTLog.RTLOG_TAG, "[iReferrer] failed: " + th.getMessage());
                }
            }
            return jSONObject;
        }

        private boolean a(String... strArr) {
            String str = Build.BRAND;
            String str2 = Build.MANUFACTURER;
            for (String str3 : strArr) {
                if (str3.equalsIgnoreCase(str) || str3.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static JSONArray a(Context context) {
        if (f50258c && context != null) {
            return f50259d.a(context);
        }
        return null;
    }

    public static JSONObject a() {
        return f50257b;
    }

    public static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.length() > 128) {
                MLog.w("[iReferrer] source too long[>128]: " + str);
                return;
            }
            if (str2.length() > 4096) {
                MLog.w("[iReferrer] referrer too long[>4096]: " + str2);
                return;
            }
            if (f50257b == null) {
                f50257b = new JSONObject();
            }
            try {
                f50257b.put(n.f36449l, str);
                f50257b.put("referrer", str2);
            } catch (Throwable unused) {
            }
            MLog.i("[iReferrer] set: " + f50257b);
            return;
        }
        MLog.w("[iReferrer] args cannot empty source: " + str + " referrer: " + str2);
    }

    public static void a(boolean z2) {
        f50258c = z2;
    }
}
