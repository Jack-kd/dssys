package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.baidu.mobads.sdk.api.PromoteInstallManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class aq {

    /* renamed from: a, reason: collision with root package name */
    private static final String f11035a = z.f11750n;

    /* renamed from: b, reason: collision with root package name */
    private static final String f11036b = "__sdk_remote_dl_no_install";

    /* renamed from: c, reason: collision with root package name */
    private static final long f11037c = 3600000;

    /* renamed from: d, reason: collision with root package name */
    private Context f11038d;

    /* renamed from: e, reason: collision with root package name */
    private SharedPreferences f11039e;

    /* renamed from: f, reason: collision with root package name */
    private SharedPreferences.Editor f11040f;

    /* renamed from: g, reason: collision with root package name */
    private au f11041g;

    /* renamed from: h, reason: collision with root package name */
    private PromoteInstallManager.PromoteInstallListener f11042h;

    /* renamed from: i, reason: collision with root package name */
    private int f11043i;

    /* renamed from: j, reason: collision with root package name */
    private long f11044j;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final aq f11045a = new aq(null);

        private a() {
        }
    }

    public /* synthetic */ aq(ar arVar) {
        this();
    }

    public static aq a(Context context, PromoteInstallManager.PromoteInstallListener promoteInstallListener) {
        a.f11045a.b(context, promoteInstallListener);
        return a.f11045a;
    }

    private void b(Context context, PromoteInstallManager.PromoteInstallListener promoteInstallListener) {
        this.f11038d = context;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f11036b, 0);
        this.f11039e = sharedPreferences;
        this.f11040f = sharedPreferences.edit();
        this.f11041g = au.a(context, f11035a);
        this.f11042h = promoteInstallListener;
    }

    public int c() {
        Object objB = this.f11041g.b(null, "getInstallPopType", new Object[0]);
        if (objB instanceof Integer) {
            return ((Integer) objB).intValue();
        }
        return 0;
    }

    private aq() {
        this.f11043i = 0;
        this.f11044j = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a() {
        Map<String, ?> all;
        List<String> listA;
        try {
            all = this.f11039e.getAll();
            listA = a((Map<String, Long>) all);
        } catch (Throwable unused) {
        }
        if (listA == null) {
            return false;
        }
        for (int i2 = 0; i2 < listA.size(); i2++) {
            String str = listA.get(i2);
            Object objB = this.f11041g.b(null, "getAdDownLoadInfo", this.f11038d, str);
            if ((objB instanceof JSONObject) && ((JSONObject) objB).length() > 0) {
                Long l2 = (Long) all.get(str);
                if (a((JSONObject) objB) && System.currentTimeMillis() - l2.longValue() < 3600000 && !bw.a(this.f11038d, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean b() {
        Object objB = this.f11041g.b(null, "isInstallPopSwitch", new Object[0]);
        if (objB instanceof Boolean) {
            return ((Boolean) objB).booleanValue();
        }
        return false;
    }

    private List<String> a(Map<String, Long> map) {
        if (map != null && map.size() > 0) {
            ArrayList arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new ar(this));
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                arrayList2.add((String) ((Map.Entry) obj).getKey());
            }
            if (map.get(arrayList2.get(0)).longValue() > this.f11044j || this.f11043i < 3) {
                return arrayList2;
            }
            PromoteInstallManager.PromoteInstallListener promoteInstallListener = this.f11042h;
            if (promoteInstallListener != null) {
                promoteInstallListener.onFail("暂无可用物料，请稍后再试");
            }
            return null;
        }
        PromoteInstallManager.PromoteInstallListener promoteInstallListener2 = this.f11042h;
        if (promoteInstallListener2 != null) {
            promoteInstallListener2.onFail("暂无可用物料，请稍后再试");
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        r1 = new com.baidu.mobads.sdk.internal.ap(r5, r11.f11038d, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        if (r12 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
    
        r12 = new org.json.JSONObject(r5.toString());
        r12.put("install_ts", r6);
        r12 = r12.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007b, code lost:
    
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007c, code lost:
    
        r12.printStackTrace();
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c7, code lost:
    
        r12 = r11.f11042h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
    
        if (r12 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        r12.onFail("暂无可用物料，请稍后再试");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d0, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.baidu.mobads.sdk.api.IPromoteInstallAdInfo a(boolean r12) {
        /*
            r11 = this;
            r0 = 0
            android.content.SharedPreferences r1 = r11.f11039e     // Catch: java.lang.Throwable -> Lc7
            java.util.Map r1 = r1.getAll()     // Catch: java.lang.Throwable -> Lc7
            java.util.List r2 = r11.a(r1)     // Catch: java.lang.Throwable -> Lc7
            if (r2 != 0) goto Le
            return r0
        Le:
            r3 = 0
        Lf:
            int r4 = r2.size()     // Catch: java.lang.Throwable -> Lc7
            if (r3 >= r4) goto Lc7
            java.lang.Object r4 = r2.get(r3)     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> Lc7
            com.baidu.mobads.sdk.internal.au r5 = r11.f11041g     // Catch: java.lang.Throwable -> Lc7
            java.lang.String r6 = "getAdDownLoadInfo"
            android.content.Context r7 = r11.f11038d     // Catch: java.lang.Throwable -> Lc7
            java.lang.Object[] r7 = new java.lang.Object[]{r7, r4}     // Catch: java.lang.Throwable -> Lc7
            java.lang.Object r5 = r5.b(r0, r6, r7)     // Catch: java.lang.Throwable -> Lc7
            boolean r6 = r5 instanceof org.json.JSONObject     // Catch: java.lang.Throwable -> Lc7
            if (r6 == 0) goto Lb9
            r6 = r5
            org.json.JSONObject r6 = (org.json.JSONObject) r6     // Catch: java.lang.Throwable -> Lc7
            int r6 = r6.length()     // Catch: java.lang.Throwable -> Lc7
            if (r6 <= 0) goto Lb9
            org.json.JSONObject r5 = (org.json.JSONObject) r5     // Catch: java.lang.Throwable -> Lc7
            java.lang.Object r6 = r1.get(r4)     // Catch: java.lang.Throwable -> Lc7
            java.lang.Long r6 = (java.lang.Long) r6     // Catch: java.lang.Throwable -> Lc7
            boolean r7 = r11.a(r5)     // Catch: java.lang.Throwable -> Lc7
            if (r7 == 0) goto Lae
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc7
            long r9 = r6.longValue()     // Catch: java.lang.Throwable -> Lc7
            long r7 = r7 - r9
            r9 = 3600000(0x36ee80, double:1.7786363E-317)
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 >= 0) goto Lae
            android.content.Context r7 = r11.f11038d     // Catch: java.lang.Throwable -> Lc7
            boolean r7 = com.baidu.mobads.sdk.internal.bw.a(r7, r4)     // Catch: java.lang.Throwable -> Lc7
            if (r7 == 0) goto L5d
            goto Lae
        L5d:
            com.baidu.mobads.sdk.internal.ap r1 = new com.baidu.mobads.sdk.internal.ap     // Catch: java.lang.Throwable -> Lc7
            android.content.Context r2 = r11.f11038d     // Catch: java.lang.Throwable -> Lc7
            r1.<init>(r5, r2, r11)     // Catch: java.lang.Throwable -> Lc7
            if (r12 == 0) goto L8d
            org.json.JSONObject r12 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L79 org.json.JSONException -> L7b
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L79 org.json.JSONException -> L7b
            r12.<init>(r2)     // Catch: java.lang.Throwable -> L79 org.json.JSONException -> L7b
            java.lang.String r2 = "install_ts"
            r12.put(r2, r6)     // Catch: java.lang.Throwable -> L79 org.json.JSONException -> L7b
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Throwable -> L79 org.json.JSONException -> L7b
            goto L80
        L79:
            r0 = r1
            goto Lc7
        L7b:
            r12 = move-exception
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L79
            r12 = r0
        L80:
            com.baidu.mobads.sdk.internal.au r2 = r11.f11041g     // Catch: java.lang.Throwable -> L79
            java.lang.String r3 = "startInstallDialogActivity"
            android.content.Context r5 = r11.f11038d     // Catch: java.lang.Throwable -> L79
            java.lang.Object[] r12 = new java.lang.Object[]{r5, r12}     // Catch: java.lang.Throwable -> L79
            r2.b(r0, r3, r12)     // Catch: java.lang.Throwable -> L79
        L8d:
            int r12 = r11.f11043i     // Catch: java.lang.Throwable -> L79
            int r12 = r12 + 1
            r11.f11043i = r12     // Catch: java.lang.Throwable -> L79
            r0 = 3
            if (r12 > r0) goto L9c
            long r2 = r6.longValue()     // Catch: java.lang.Throwable -> L79
            r11.f11044j = r2     // Catch: java.lang.Throwable -> L79
        L9c:
            android.content.SharedPreferences$Editor r12 = r11.f11040f     // Catch: java.lang.Throwable -> L79
            r12.remove(r4)     // Catch: java.lang.Throwable -> L79
            android.content.SharedPreferences$Editor r12 = r11.f11040f     // Catch: java.lang.Throwable -> L79
            r12.commit()     // Catch: java.lang.Throwable -> L79
            com.baidu.mobads.sdk.api.PromoteInstallManager$PromoteInstallListener r12 = r11.f11042h     // Catch: java.lang.Throwable -> L79
            if (r12 == 0) goto Lad
            r12.onSuccess()     // Catch: java.lang.Throwable -> L79
        Lad:
            return r1
        Lae:
            android.content.SharedPreferences$Editor r5 = r11.f11040f     // Catch: java.lang.Throwable -> Lc7
            r5.remove(r4)     // Catch: java.lang.Throwable -> Lc7
            android.content.SharedPreferences$Editor r4 = r11.f11040f     // Catch: java.lang.Throwable -> Lc7
            r4.commit()     // Catch: java.lang.Throwable -> Lc7
            goto Lc3
        Lb9:
            android.content.SharedPreferences$Editor r5 = r11.f11040f     // Catch: java.lang.Throwable -> Lc7
            r5.remove(r4)     // Catch: java.lang.Throwable -> Lc7
            android.content.SharedPreferences$Editor r4 = r11.f11040f     // Catch: java.lang.Throwable -> Lc7
            r4.commit()     // Catch: java.lang.Throwable -> Lc7
        Lc3:
            int r3 = r3 + 1
            goto Lf
        Lc7:
            com.baidu.mobads.sdk.api.PromoteInstallManager$PromoteInstallListener r12 = r11.f11042h
            if (r12 == 0) goto Ld0
            java.lang.String r1 = "暂无可用物料，请稍后再试"
            r12.onFail(r1)
        Ld0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mobads.sdk.internal.aq.a(boolean):com.baidu.mobads.sdk.api.IPromoteInstallAdInfo");
    }

    private boolean a(JSONObject jSONObject) {
        File file = new File(jSONObject.optString("folder") + jSONObject.optString(com.sigmob.sdk.downloader.core.breakpoint.f.f37327e));
        return file.exists() && file.length() > 0;
    }

    public void a(Context context, String str) {
        this.f11041g.b(null, "handleAdInstall", context, str);
    }
}
