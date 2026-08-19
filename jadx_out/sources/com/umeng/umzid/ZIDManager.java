package com.umeng.umzid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.octopus.ad.ADBidEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.UUID;

/* loaded from: classes5.dex */
public class ZIDManager {

    /* renamed from: d, reason: collision with root package name */
    public static ZIDManager f50533d;

    /* renamed from: a, reason: collision with root package name */
    public boolean f50534a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f50535b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f50536c;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f50537a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ IZIDCompletionCallback f50538b;

        public a(Context context, IZIDCompletionCallback iZIDCompletionCallback) {
            this.f50537a = context;
            this.f50538b = iZIDCompletionCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA = ZIDManager.a(ZIDManager.this, this.f50537a);
            if (TextUtils.isEmpty(strA)) {
                IZIDCompletionCallback iZIDCompletionCallback = this.f50538b;
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1002", "获取zid失败");
                    return;
                }
                return;
            }
            IZIDCompletionCallback iZIDCompletionCallback2 = this.f50538b;
            if (iZIDCompletionCallback2 != null) {
                iZIDCompletionCallback2.onSuccess(strA);
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f50540a;

        public b(Context context) {
            this.f50540a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.this.b(this.f50540a);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f50542a;

        public c(Context context) {
            this.f50542a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            ZIDManager.a(ZIDManager.this, this.f50542a);
        }
    }

    public static void configureDomain(Context context, String str) {
        SharedPreferences sharedPreferencesA;
        SharedPreferences.Editor editorEdit;
        String strB = d.b(str);
        if (context == null || strB == null || TextUtils.isEmpty(strB) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("inputDomain", strB).commit();
    }

    public static synchronized ZIDManager getInstance() {
        try {
            if (f50533d == null) {
                f50533d = new ZIDManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50533d;
    }

    public static String getSDKVersion() {
        return "1.8.7.2";
    }

    public final void a(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("com.uyumao.sdk.UYMManager");
            Method declaredMethod2 = cls.getDeclaredMethod("getInstance", null);
            if (declaredMethod2 == null || (objInvoke = declaredMethod2.invoke(cls, null)) == null || (declaredMethod = cls.getDeclaredMethod("init", Context.class)) == null) {
                return;
            }
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(objInvoke, context);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fd A[Catch: all -> 0x016e, TryCatch #3 {all -> 0x016e, blocks: (B:14:0x0033, B:16:0x0039, B:18:0x0041, B:22:0x004e, B:24:0x005a, B:26:0x0060, B:28:0x006c, B:30:0x0072, B:32:0x0082, B:34:0x0088, B:36:0x0094, B:38:0x009a, B:41:0x00bd, B:43:0x00c3, B:44:0x00c7, B:46:0x00cd, B:61:0x00fd, B:62:0x0102, B:66:0x010f, B:68:0x012e, B:70:0x013b, B:72:0x014e, B:73:0x0151, B:75:0x015b, B:76:0x015e, B:78:0x0168, B:79:0x016b, B:59:0x00f8), top: B:89:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012e A[Catch: all -> 0x016e, TryCatch #3 {all -> 0x016e, blocks: (B:14:0x0033, B:16:0x0039, B:18:0x0041, B:22:0x004e, B:24:0x005a, B:26:0x0060, B:28:0x006c, B:30:0x0072, B:32:0x0082, B:34:0x0088, B:36:0x0094, B:38:0x009a, B:41:0x00bd, B:43:0x00c3, B:44:0x00c7, B:46:0x00cd, B:61:0x00fd, B:62:0x0102, B:66:0x010f, B:68:0x012e, B:70:0x013b, B:72:0x014e, B:73:0x0151, B:75:0x015b, B:76:0x015e, B:78:0x0168, B:79:0x016b, B:59:0x00f8), top: B:89:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.b(android.content.Context):java.lang.String");
    }

    public synchronized String getZID(Context context) {
        if (context == null) {
            return "";
        }
        Context applicationContext = context.getApplicationContext();
        String strD = d.d(applicationContext);
        if (!TextUtils.isEmpty(strD)) {
            return strD;
        }
        com.umeng.umzid.c.a(new c(applicationContext));
        return "";
    }

    public synchronized void init(Context context, String str, IZIDCompletionCallback iZIDCompletionCallback) {
        SharedPreferences sharedPreferencesA;
        SharedPreferences.Editor editorEdit;
        boolean zH = d.h(context);
        this.f50536c = zH;
        if (zH) {
            if (context == null) {
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure("1001", "传入参数Context为null");
                }
                return;
            }
            if (TextUtils.isEmpty(str)) {
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onFailure(ADBidEvent.ADM_BLACKLIST_FILTER, "传入参数appkey为空");
                }
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null && str != null && !TextUtils.isEmpty(str) && (sharedPreferencesA = com.umeng.umzid.a.a(applicationContext)) != null && (editorEdit = sharedPreferencesA.edit()) != null) {
                editorEdit.putString("appkey", str).commit();
            }
            String strD = d.d(applicationContext);
            if (strD == null || TextUtils.isEmpty(strD)) {
                com.umeng.umzid.c.a(new a(applicationContext, iZIDCompletionCallback));
            } else {
                com.umeng.umzid.c.a(new b(applicationContext));
                if (iZIDCompletionCallback != null) {
                    iZIDCompletionCallback.onSuccess(strD);
                }
            }
            SharedPreferences sharedPreferencesA2 = com.umeng.umzid.a.a(context);
            if (TextUtils.isEmpty(sharedPreferencesA2 != null ? sharedPreferencesA2.getString("uuid", "") : "")) {
                String string = "";
                SharedPreferences sharedPreferencesA3 = com.umeng.umzid.a.a(context);
                try {
                    string = UUID.randomUUID().toString();
                } catch (Throwable unused) {
                }
                if (sharedPreferencesA3 != null) {
                    sharedPreferencesA3.edit().putString("uuid", string).commit();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005e A[Catch: all -> 0x0064, TryCatch #2 {all -> 0x0064, blocks: (B:6:0x000f, B:10:0x001c, B:25:0x005e, B:28:0x0067, B:32:0x0077, B:34:0x0096, B:36:0x00a3, B:38:0x00b8, B:39:0x00bb, B:41:0x00c7, B:42:0x00ca, B:44:0x00d6, B:45:0x00d9, B:23:0x0059), top: B:57:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0096 A[Catch: all -> 0x0064, TryCatch #2 {all -> 0x0064, blocks: (B:6:0x000f, B:10:0x001c, B:25:0x005e, B:28:0x0067, B:32:0x0077, B:34:0x0096, B:36:0x00a3, B:38:0x00b8, B:39:0x00bb, B:41:0x00c7, B:42:0x00ca, B:44:0x00d6, B:45:0x00d9, B:23:0x0059), top: B:57:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.String a(com.umeng.umzid.ZIDManager r10, android.content.Context r11) {
        /*
            boolean r0 = r10.f50534a
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            r10.f50534a = r0
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>()
            r3 = 0
            java.lang.String r4 = com.umeng.umzid.Spy.getID()     // Catch: java.lang.Throwable -> L64
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L64
            if (r5 == 0) goto L1c
            r10.f50534a = r3
            return r1
        L1c:
            java.lang.String r5 = "z"
            r2.put(r5, r4)     // Catch: java.lang.Throwable -> L64
            java.lang.String r5 = com.umeng.umzid.d.e(r11)     // Catch: java.lang.Throwable -> L64
            java.lang.String r6 = "mc"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L64
            java.lang.String r6 = com.umeng.umzid.d.f(r11)     // Catch: java.lang.Throwable -> L64
            java.lang.String r7 = "o"
            r2.put(r7, r6)     // Catch: java.lang.Throwable -> L64
            org.json.JSONObject r7 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L56
            r7.<init>()     // Catch: java.lang.Throwable -> L56
            java.lang.String r8 = "vpn_pxy"
            boolean r9 = com.umeng.umzid.d.i(r11)     // Catch: java.lang.Throwable -> L54
            r7.put(r8, r9)     // Catch: java.lang.Throwable -> L54
            java.lang.String r8 = "wifi_pxy"
            boolean r9 = com.umeng.umzid.d.j(r11)     // Catch: java.lang.Throwable -> L54
            r7.put(r8, r9)     // Catch: java.lang.Throwable -> L54
            java.lang.String r8 = "double"
            boolean r9 = com.umeng.umzid.d.g(r11)     // Catch: java.lang.Throwable -> L54
            r7.put(r8, r9)     // Catch: java.lang.Throwable -> L54
            goto L5c
        L54:
            r8 = move-exception
            goto L59
        L56:
            r7 = move-exception
            r8 = r7
            r7 = r1
        L59:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L64
        L5c:
            if (r7 == 0) goto L67
            java.lang.String r8 = "anti"
            r2.put(r8, r7)     // Catch: java.lang.Throwable -> L64
            goto L67
        L64:
            r11 = move-exception
            goto Ldd
        L67:
            r10.a(r11, r2)     // Catch: java.lang.Throwable -> L64
            java.lang.String r7 = com.umeng.umzid.d.b(r11)     // Catch: java.lang.Throwable -> L64
            int r8 = r7.length()     // Catch: java.lang.Throwable -> L64
            if (r8 <= 0) goto L75
            goto L77
        L75:
            java.lang.String r7 = "https://utoken.umeng.com"
        L77:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64
            r8.<init>()     // Catch: java.lang.Throwable -> L64
            r8.append(r7)     // Catch: java.lang.Throwable -> L64
            java.lang.String r7 = "/anti/postZdata"
            r8.append(r7)     // Catch: java.lang.Throwable -> L64
            java.lang.String r7 = r8.toString()     // Catch: java.lang.Throwable -> L64
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L64
            java.lang.String r2 = com.umeng.umzid.a.a(r7, r2)     // Catch: java.lang.Throwable -> L64
            boolean r7 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L64
            if (r7 != 0) goto Ld9
            org.json.JSONObject r7 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L64
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L64
            java.lang.String r2 = "suc"
            boolean r2 = r7.optBoolean(r2)     // Catch: java.lang.Throwable -> L64
            if (r2 != r0) goto Ld9
            com.umeng.umzid.d.f(r11, r4)     // Catch: java.lang.Throwable -> L64
            com.umeng.umzid.d.a(r11, r5)     // Catch: java.lang.Throwable -> L64
            com.umeng.umzid.d.b(r11, r6)     // Catch: java.lang.Throwable -> L64
            java.lang.String r0 = "aaid"
            java.lang.String r1 = r7.optString(r0)     // Catch: java.lang.Throwable -> L64
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L64
            if (r0 != 0) goto Lbb
            com.umeng.umzid.d.e(r11, r1)     // Catch: java.lang.Throwable -> L64
        Lbb:
            java.lang.String r0 = "uabc"
            java.lang.String r0 = r7.optString(r0)     // Catch: java.lang.Throwable -> L64
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L64
            if (r2 != 0) goto Lca
            com.umeng.umzid.d.d(r11, r0)     // Catch: java.lang.Throwable -> L64
        Lca:
            java.lang.String r0 = "resetToken"
            java.lang.String r0 = r7.optString(r0)     // Catch: java.lang.Throwable -> L64
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L64
            if (r2 != 0) goto Ld9
            com.umeng.umzid.d.c(r11, r0)     // Catch: java.lang.Throwable -> L64
        Ld9:
            r10.a(r11)     // Catch: java.lang.Throwable -> L64
            goto Le0
        Ldd:
            r11.printStackTrace()     // Catch: java.lang.Throwable -> Le3
        Le0:
            r10.f50534a = r3
            return r1
        Le3:
            r11 = move-exception
            r10.f50534a = r3
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.a(com.umeng.umzid.ZIDManager, android.content.Context):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject a(android.content.Context r11, org.json.JSONObject r12) throws org.json.JSONException, java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.umzid.ZIDManager.a(android.content.Context, org.json.JSONObject):org.json.JSONObject");
    }
}
