package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class y {

    /* renamed from: c, reason: collision with root package name */
    private static final int f49688c = 5;

    /* renamed from: d, reason: collision with root package name */
    private static JSONArray f49689d = new JSONArray();

    /* renamed from: e, reason: collision with root package name */
    private static Object f49690e = new Object();

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, Long> f49693f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    Stack<String> f49691a = new Stack<>();

    /* renamed from: b, reason: collision with root package name */
    com.umeng.analytics.vshelper.a f49692b = PageNameMonitor.getInstance();

    public int a() {
        return 2;
    }

    public void b(String str) {
        Long l2;
        Context appContext;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!this.f49693f.containsKey(str)) {
            if (UMConfigure.isDebugLog() && this.f49691a.size() == 0) {
                UMLog.aq(m.f49467G, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
                return;
            }
            return;
        }
        synchronized (this.f49693f) {
            l2 = this.f49693f.get(str);
            this.f49693f.remove(str);
        }
        if (l2 == null) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.f49691a.size() > 0 && str.equals(this.f49691a.peek())) {
            this.f49691a.pop();
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l2.longValue();
        synchronized (f49690e) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(g.f49361v, str);
                jSONObject.put("duration", jCurrentTimeMillis);
                jSONObject.put(g.f49363x, l2);
                jSONObject.put("type", a());
                f49689d.put(jSONObject);
                if (f49689d.length() >= 5 && (appContext = UMGlobalContext.getAppContext(null)) != null) {
                    UMWorkDispatch.sendEvent(appContext, 4099, CoreProtocol.getInstance(appContext), null);
                }
            } catch (Throwable unused) {
            }
        }
        if (!UMConfigure.isDebugLog() || this.f49691a.size() == 0) {
            return;
        }
        UMLog.aq(m.f49465E, 0, "\\|", new String[]{"@"}, new String[]{str}, null, null);
    }

    public static void a(Context context) {
        String string;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f49690e) {
                    string = f49689d.toString();
                    f49689d = new JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put("__a", new JSONArray(string));
                    if (jSONObject.length() > 0) {
                        l.a(context).a(x.a().c(), jSONObject, l.a.PAGE);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.f49691a.size() != 0) {
            String[] strArr = {this.f49691a.peek()};
            UMLog.aq(m.f49466F, 0, "\\|", new String[]{"@"}, strArr, null, null);
        }
        this.f49692b.customPageBegin(str);
        synchronized (this.f49693f) {
            try {
                this.f49693f.put(str, Long.valueOf(System.currentTimeMillis()));
                if (UMConfigure.isDebugLog()) {
                    this.f49691a.push(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        String key;
        synchronized (this.f49693f) {
            try {
                key = null;
                long j2 = 0;
                for (Map.Entry<String, Long> entry : this.f49693f.entrySet()) {
                    if (entry.getValue().longValue() > j2) {
                        long jLongValue = entry.getValue().longValue();
                        key = entry.getKey();
                        j2 = jLongValue;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (key != null) {
            b(key);
        }
    }
}
