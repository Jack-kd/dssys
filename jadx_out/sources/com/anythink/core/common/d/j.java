package com.anythink.core.common.d;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.anythink.core.common.d.t;
import com.anythink.core.common.v.ad;
import com.byazt.pu.TTDownloadField;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class j implements Thread.UncaughtExceptionHandler {

    /* renamed from: d, reason: collision with root package name */
    private static volatile j f2849d = null;

    /* renamed from: i, reason: collision with root package name */
    private static final String f2850i = "0";

    /* renamed from: j, reason: collision with root package name */
    private static final String f2851j = "1";

    /* renamed from: k, reason: collision with root package name */
    private static final int f2852k = 4;

    /* renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f2854b;

    /* renamed from: c, reason: collision with root package name */
    private final Context f2855c;

    /* renamed from: e, reason: collision with root package name */
    private final String f2856e = "crash_type";

    /* renamed from: f, reason: collision with root package name */
    private final String f2857f = "crash_msg";

    /* renamed from: g, reason: collision with root package name */
    private final String f2858g = f.f2470c;

    /* renamed from: h, reason: collision with root package name */
    private final String f2859h = "crash_sdk_type";

    /* renamed from: a, reason: collision with root package name */
    String f2853a = "com.anythink";

    /* renamed from: l, reason: collision with root package name */
    private volatile boolean f2860l = false;

    /* renamed from: m, reason: collision with root package name */
    private volatile boolean f2861m = false;

    private j(Context context) {
        this.f2855c = context;
    }

    public static j a(Context context) {
        if (f2849d == null) {
            synchronized (j.class) {
                try {
                    if (f2849d == null) {
                        f2849d = new j(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2849d;
    }

    private String b() {
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            HashMap map = new HashMap(4);
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Thread key = it.next().getKey();
                if (key.getName().startsWith("anythink")) {
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
                jSONObject.put("anythink_thread_count", i2);
                try {
                    ActivityManager activityManager = (ActivityManager) this.f2855c.getSystemService(TTDownloadField.TT_ACTIVITY);
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

    private void c() {
        Map<String, ?> mapB = ad.b(this.f2855c, t.b.f3061d);
        Iterator<?> it = mapB.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            String string = next != null ? next.toString() : "";
            if (!TextUtils.isEmpty(string)) {
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    com.anythink.core.common.u.f.b(jSONObject.optString("crash_type"), jSONObject.optString("crash_msg"), jSONObject.optString(f.f2470c), jSONObject.optString("crash_sdk_type"));
                } catch (Exception unused) {
                }
            }
        }
        if (mapB.size() > 0) {
            ad.a(this.f2855c, t.b.f3061d);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (th != null) {
            try {
                if (!this.f2860l) {
                    this.f2860l = true;
                    try {
                        String strB = b(th);
                        if (a(strB)) {
                            String strB2 = b(strB);
                            String strC = c(strB);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("crash_type", URLEncoder.encode(strB2));
                            jSONObject.put("crash_msg", URLEncoder.encode(b() + "\n" + strB));
                            jSONObject.put(f.f2470c, s.b().r());
                            jSONObject.put("crash_sdk_type", strC);
                            ad.a(this.f2855c, t.b.f3061d, System.currentTimeMillis() + "_crash", jSONObject.toString());
                        }
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
                a(thread, th);
                return;
            }
        }
        a(thread, th);
    }

    public final void a() {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f2855c).b(s.b().p());
        if (bVarB == null || bVarB.A() != 0) {
            try {
                Map<String, ?> mapB = ad.b(this.f2855c, t.b.f3061d);
                Iterator<?> it = mapB.values().iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    String string = next != null ? next.toString() : "";
                    if (!TextUtils.isEmpty(string)) {
                        try {
                            JSONObject jSONObject = new JSONObject(string);
                            com.anythink.core.common.u.f.b(jSONObject.optString("crash_type"), jSONObject.optString("crash_msg"), jSONObject.optString(f.f2470c), jSONObject.optString("crash_sdk_type"));
                        } catch (Exception unused) {
                        }
                    }
                }
                if (mapB.size() > 0) {
                    ad.a(this.f2855c, t.b.f3061d);
                }
                if (this.f2861m) {
                    return;
                }
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                if (defaultUncaughtExceptionHandler != this) {
                    this.f2854b = defaultUncaughtExceptionHandler;
                    Thread.setDefaultUncaughtExceptionHandler(this);
                }
                this.f2861m = true;
            } catch (Exception unused2) {
            }
        }
    }

    private String c(String str) {
        String str2 = this.f2853a;
        if (!TextUtils.isEmpty(str) && str.contains(str2)) {
            try {
                for (String str3 : str.split("Caused by:")) {
                    if (str3.contains(str2)) {
                        String[] strArrSplit = str3.split("\\n");
                        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                            if (strArrSplit[i2].contains(str2) && i2 <= 4) {
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

    private static String b(Throwable th) {
        StringWriter stringWriter;
        PrintWriter printWriter;
        if (th == null) {
            return "";
        }
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof UnknownHostException) {
                return "";
            }
        }
        PrintWriter printWriter2 = null;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            stringWriter = null;
        }
        try {
            th.printStackTrace(printWriter);
            printWriter.flush();
            String string = stringWriter.toString();
            try {
                printWriter.close();
            } catch (Throwable unused3) {
            }
            try {
                stringWriter.close();
            } catch (Throwable unused4) {
            }
            return string;
        } catch (Throwable unused5) {
            printWriter2 = printWriter;
            if (printWriter2 != null) {
                try {
                    printWriter2.close();
                } catch (Throwable unused6) {
                }
            }
            if (stringWriter != null) {
                try {
                    stringWriter.close();
                } catch (Throwable unused7) {
                }
            }
            return "";
        }
    }

    private void a(Thread thread, Throwable th) {
        try {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f2854b;
            if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this || (uncaughtExceptionHandler instanceof j)) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable unused) {
        }
    }

    private void a(Throwable th) {
        try {
            String strB = b(th);
            if (a(strB)) {
                String strB2 = b(strB);
                String strC = c(strB);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("crash_type", URLEncoder.encode(strB2));
                jSONObject.put("crash_msg", URLEncoder.encode(b() + "\n" + strB));
                jSONObject.put(f.f2470c, s.b().r());
                jSONObject.put("crash_sdk_type", strC);
                ad.a(this.f2855c, t.b.f3061d, System.currentTimeMillis() + "_crash", jSONObject.toString());
            }
        } catch (Throwable unused) {
        }
    }

    private static String b(String str) {
        String strGroup;
        try {
            Matcher matcher = Pattern.compile(".*?(Exception|Error|Death)", 2).matcher(str);
            if (!matcher.find()) {
                strGroup = "";
            } else {
                strGroup = matcher.group(0);
            }
            try {
                return !TextUtils.isEmpty(strGroup) ? strGroup.replaceAll("Caused by:", "").replaceAll(" ", "") : strGroup;
            } catch (Exception unused) {
                return strGroup;
            }
        } catch (Exception unused2) {
            return "";
        }
    }

    private boolean a(String str) {
        com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(this.f2855c).b(s.b().p());
        if (bVarB != null) {
            if (bVarB.A() == 0) {
                return false;
            }
            String strC = bVarB.C();
            try {
                if (TextUtils.isEmpty(strC)) {
                    return true;
                }
                JSONArray jSONArray = new JSONArray(strC);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    if (str.contains(jSONArray.optString(i2))) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        } else if (str.contains(this.f2853a)) {
            return true;
        }
        return false;
    }
}
