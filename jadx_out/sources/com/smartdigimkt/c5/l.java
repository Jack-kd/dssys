package com.smartdigimkt.c5;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.pu.TTDownloadField;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class l implements Thread.UncaughtExceptionHandler {

    /* renamed from: c, reason: collision with root package name */
    public static volatile l f39788c = null;

    /* renamed from: d, reason: collision with root package name */
    public static volatile boolean f39789d = false;

    /* renamed from: a, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f39790a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f39791b;

    public l(Context context) {
        this.f39791b = context;
    }

    public final String a() {
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            HashMap map = new HashMap(4);
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Thread key = it.next().getKey();
                if (key.getName().startsWith("sdm")) {
                    String str = key.getName() + "-" + key.getState();
                    if (map.containsKey(str)) {
                        map.put(str, Integer.valueOf(((Integer) map.get(str)).intValue() + 1));
                    } else {
                        map.put(str, 1);
                    }
                    i2++;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(map);
                jSONObject.put("sdm_thread_count", i2);
                try {
                    ActivityManager activityManager = (ActivityManager) this.f39791b.getSystemService(TTDownloadField.TT_ACTIVITY);
                    Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
                    if (processMemoryInfo.length > 0) {
                        jSONObject.put("app_memory", (processMemoryInfo[0].getTotalPss() / 1024) + "MB");
                    }
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    jSONObject.put("sys_total_memory", (memoryInfo.totalMem / 1048576) + "MB");
                    jSONObject.put("sys_avail_memory", (memoryInfo.availMem / 1048576) + "MB");
                } catch (Throwable unused) {
                }
                return jSONObject.toString();
            } catch (Throwable th) {
                return th.getMessage();
            }
        } catch (Throwable th2) {
            return th2.getMessage();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d3 A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #2 {all -> 0x00de, blocks: (B:3:0x0002, B:5:0x0011, B:8:0x0017, B:21:0x0043, B:23:0x0053, B:26:0x0059, B:28:0x005f, B:32:0x006e, B:35:0x00d3, B:11:0x0020, B:12:0x0026, B:14:0x002c, B:17:0x0037, B:18:0x003a), top: B:43:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Throwable r7) {
        /*
            r6 = this;
            java.lang.String r0 = ""
            java.lang.String r7 = a(r7)     // Catch: java.lang.Throwable -> Lde
            com.smartdigimkt.z4.d r1 = com.smartdigimkt.z4.d.c()     // Catch: java.lang.Throwable -> Lde
            com.smartdigimkt.a5.a r1 = r1.a()     // Catch: java.lang.Throwable -> Lde
            r2 = 0
            if (r1 == 0) goto L3a
            int r3 = r1.f39395z     // Catch: java.lang.Throwable -> Lde
            if (r3 != 0) goto L17
            goto Lde
        L17:
            java.lang.String r1 = r1.f39339A     // Catch: java.lang.Throwable -> Lde
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lde
            if (r3 == 0) goto L20
            goto L42
        L20:
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Lde
            r3.<init>(r1)     // Catch: java.lang.Throwable -> Lde
            r1 = r2
        L26:
            int r4 = r3.length()     // Catch: java.lang.Throwable -> Lde
            if (r1 >= r4) goto Lde
            java.lang.String r4 = r3.optString(r1)     // Catch: java.lang.Throwable -> Lde
            boolean r4 = r7.contains(r4)     // Catch: java.lang.Throwable -> Lde
            if (r4 == 0) goto L37
            goto L42
        L37:
            int r1 = r1 + 1
            goto L26
        L3a:
            java.lang.String r1 = "com.smartdigimkt"
            boolean r1 = r7.contains(r1)     // Catch: java.lang.Throwable -> Lde
            if (r1 == 0) goto Lde
        L42:
            r1 = 2
            java.lang.String r3 = ".*?(Exception|Error|Death)"
            java.util.regex.Pattern r3 = java.util.regex.Pattern.compile(r3, r1)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> Lde
            java.util.regex.Matcher r3 = r3.matcher(r7)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> Lde
            boolean r4 = r3.find()     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> Lde
            if (r4 == 0) goto L58
            java.lang.String r2 = r3.group(r2)     // Catch: java.lang.Exception -> L6d java.lang.Throwable -> Lde
            goto L59
        L58:
            r2 = r0
        L59:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> Lde
            if (r3 != 0) goto L6e
            java.lang.String r3 = "Caused by:"
            java.lang.String r3 = r2.replaceAll(r3, r0)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> Lde
            java.lang.String r4 = " "
            java.lang.String r2 = r3.replaceAll(r4, r0)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> Lde
            goto L6e
        L6c:
            r0 = r2
        L6d:
            r2 = r0
        L6e:
            java.lang.String r0 = a(r7)     // Catch: java.lang.Throwable -> Lde
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Lde
            r3.<init>()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r4 = "crash_type"
            java.lang.String r2 = java.net.URLEncoder.encode(r2)     // Catch: java.lang.Throwable -> Lde
            r3.put(r4, r2)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r2 = "crash_msg"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lde
            r4.<init>()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r5 = r6.a()     // Catch: java.lang.Throwable -> Lde
            r4.append(r5)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r5 = "\n"
            r4.append(r5)     // Catch: java.lang.Throwable -> Lde
            r4.append(r7)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r7 = java.net.URLEncoder.encode(r7)     // Catch: java.lang.Throwable -> Lde
            r3.put(r2, r7)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r7 = "psid"
            com.smartdigimkt.sdk.core.SDKContext r2 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> Lde
            java.lang.String r2 = r2.f()     // Catch: java.lang.Throwable -> Lde
            r3.put(r7, r2)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r7 = "crash_sdk_type"
            r3.put(r7, r0)     // Catch: java.lang.Throwable -> Lde
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lde
            r7.<init>()     // Catch: java.lang.Throwable -> Lde
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lde
            r7.append(r4)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r0 = "_crash"
            r7.append(r0)     // Catch: java.lang.Throwable -> Lde
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lde
            android.content.Context r0 = r6.f39791b     // Catch: java.lang.Throwable -> Lde
            java.lang.String r2 = "sdm_adx_rp_crash"
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lde
            if (r0 != 0) goto Ld3
            goto Lde
        Ld3:
            com.smartdigimkt.v4.c r4 = com.smartdigimkt.v4.c.a()     // Catch: java.lang.Throwable -> Lde
            com.smartdigimkt.v4.a r0 = r4.a(r0, r2)     // Catch: java.lang.Throwable -> Lde
            r0.a(r7, r3, r1)     // Catch: java.lang.Throwable -> Lde
        Lde:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.c5.l.b(java.lang.Throwable):void");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        if (th != null) {
            try {
                if (f39789d) {
                    return;
                }
                f39789d = true;
                b(th);
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f39790a;
                if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this || (uncaughtExceptionHandler instanceof l)) {
                    return;
                }
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } catch (Exception unused) {
            }
        }
    }

    public static String a(Throwable th) throws Throwable {
        PrintWriter printWriter;
        StringWriter stringWriter;
        if (th == null) {
            return "";
        }
        StringWriter stringWriter2 = null;
        try {
            for (Throwable th2 = new Throwable(j.a(), th); th2 != null; th2 = th2.getCause()) {
                if (th2 instanceof UnknownHostException) {
                    return "";
                }
            }
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
            } catch (Exception unused) {
                printWriter = null;
            } catch (Throwable th3) {
                th = th3;
                printWriter = null;
            }
        } catch (Exception unused2) {
            printWriter = null;
        } catch (Throwable th4) {
            th = th4;
            printWriter = null;
        }
        try {
            th.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
            stringWriter.close();
            String string = stringWriter.toString();
            try {
                stringWriter.close();
                stringWriter.close();
            } catch (Throwable unused3) {
            }
            return string;
        } catch (Exception unused4) {
            stringWriter2 = stringWriter;
            if (stringWriter2 != null) {
                try {
                    stringWriter2.close();
                } catch (Throwable unused5) {
                    return "";
                }
            }
            if (printWriter != null) {
                stringWriter2.close();
            }
            return "";
        } catch (Throwable th5) {
            th = th5;
            stringWriter2 = stringWriter;
            if (stringWriter2 != null) {
                try {
                    stringWriter2.close();
                } catch (Throwable unused6) {
                    throw th;
                }
            }
            if (printWriter != null) {
                stringWriter2.close();
            }
            throw th;
        }
    }

    public final void b() {
        Map all;
        Context context;
        Context context2 = this.f39791b;
        if (context2 == null) {
            all = null;
        } else {
            try {
                all = com.smartdigimkt.v4.c.a().a(context2, "sdm_adx_rp_crash").getAll();
                if (all == null) {
                    all = new HashMap();
                }
            } catch (Throwable unused) {
            }
        }
        Iterator it = all.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            String string = next != null ? next.toString() : "";
            if (!TextUtils.isEmpty(string)) {
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    com.smartdigimkt.y3.h.a(jSONObject.optString("crash_type"), jSONObject.optString("crash_msg"), jSONObject.optString(com.anythink.core.common.d.f.f2470c), jSONObject.optString("crash_sdk_type"));
                } catch (Exception unused2) {
                }
            }
        }
        if (all.size() <= 0 || (context = this.f39791b) == null) {
            return;
        }
        try {
            com.smartdigimkt.v4.c.a().a(context, "sdm_adx_rp_crash").clear();
        } catch (Throwable unused3) {
        }
    }

    public static String a(String str) {
        if (!TextUtils.isEmpty(str) && str.contains("com.smartdigimkt")) {
            try {
                for (String str2 : str.split("Caused by:")) {
                    if (str2.contains("com.smartdigimkt")) {
                        String[] strArrSplit = str2.split("\\n");
                        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                            if (strArrSplit[i2].contains("com.smartdigimkt") && i2 <= 4) {
                                return "1";
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return "0";
    }
}
