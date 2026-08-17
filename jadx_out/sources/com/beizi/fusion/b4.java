package com.beizi.fusion;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b4 {

    /* renamed from: D, reason: collision with root package name */
    private static b4 f13035D;

    /* renamed from: E, reason: collision with root package name */
    public static String f13036E;

    /* renamed from: A, reason: collision with root package name */
    private List f13037A;

    /* renamed from: B, reason: collision with root package name */
    private String f13038B;

    /* renamed from: C, reason: collision with root package name */
    private boolean f13039C;

    /* renamed from: c, reason: collision with root package name */
    private String f13042c;

    /* renamed from: d, reason: collision with root package name */
    private String f13043d;

    /* renamed from: e, reason: collision with root package name */
    public List f13044e;

    /* renamed from: p, reason: collision with root package name */
    private boolean f13055p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f13056q;

    /* renamed from: u, reason: collision with root package name */
    public Context f13060u;

    /* renamed from: v, reason: collision with root package name */
    private DisplayMetrics f13061v;

    /* renamed from: a, reason: collision with root package name */
    public boolean f13040a = false;

    /* renamed from: b, reason: collision with root package name */
    public String f13041b = null;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13045f = false;

    /* renamed from: g, reason: collision with root package name */
    public String f13046g = "";

    /* renamed from: h, reason: collision with root package name */
    public HashMap f13047h = new HashMap();

    /* renamed from: i, reason: collision with root package name */
    private HashSet f13048i = new HashSet();

    /* renamed from: j, reason: collision with root package name */
    private HashSet f13049j = new HashSet();

    /* renamed from: k, reason: collision with root package name */
    private HashSet f13050k = new HashSet();

    /* renamed from: l, reason: collision with root package name */
    private HashSet f13051l = new HashSet();

    /* renamed from: m, reason: collision with root package name */
    private HashSet f13052m = new HashSet();

    /* renamed from: n, reason: collision with root package name */
    private HashSet f13053n = new HashSet();

    /* renamed from: o, reason: collision with root package name */
    private int f13054o = -1;

    /* renamed from: r, reason: collision with root package name */
    private Handler f13057r = new a(Looper.getMainLooper());

    /* renamed from: s, reason: collision with root package name */
    private Handler f13058s = null;

    /* renamed from: t, reason: collision with root package name */
    private HandlerThread f13059t = null;

    /* renamed from: w, reason: collision with root package name */
    private boolean f13062w = false;

    /* renamed from: x, reason: collision with root package name */
    private boolean f13063x = false;

    /* renamed from: y, reason: collision with root package name */
    private int f13064y = 0;

    /* renamed from: z, reason: collision with root package name */
    private List f13065z = new ArrayList();

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
        }
    }

    public class b implements Application.ActivityLifecycleCallbacks {
        public b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            Log.e("openDeeplink", "count:" + b4.this.f13064y + ";onActivityDestroyed" + activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                if (b4.this.f13065z == null || b4.this.f13065z.size() <= 0) {
                    return;
                }
                Iterator it = b4.this.f13065z.iterator();
                while (it.hasNext()) {
                    m1 m1Var = (m1) it.next();
                    if (m1Var != null) {
                        m1Var.b();
                    }
                    it.remove();
                }
                b4.this.f13065z.clear();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            b4.b(b4.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                b4.c(b4.this);
                if (b4.this.f13064y < 0) {
                    b4.this.f13064y = 0;
                }
                if (b4.this.f13064y != 0 || b4.this.f13065z == null || b4.this.f13065z.size() <= 0) {
                    return;
                }
                Iterator it = b4.this.f13065z.iterator();
                while (it.hasNext()) {
                    m1 m1Var = (m1) it.next();
                    if (m1Var != null) {
                        m1Var.a();
                    }
                    it.remove();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ y4 f13068a;

        public c(y4 y4Var) {
            this.f13068a = y4Var;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                if (TextUtils.isEmpty(i3.b(this.f13068a.toString()))) {
                    return;
                }
                d8.a(b4.this.f13060u, "blackList", i3.b(this.f13068a.toString()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static /* synthetic */ int b(b4 b4Var) {
        int i2 = b4Var.f13064y;
        b4Var.f13064y = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int c(b4 b4Var) {
        int i2 = b4Var.f13064y;
        b4Var.f13064y = i2 - 1;
        return i2;
    }

    public static b4 j() {
        b4 b4Var;
        synchronized (b4.class) {
            try {
                if (f13035D == null) {
                    f13035D = new b4();
                }
                b4Var = f13035D;
            } catch (Throwable th) {
                throw th;
            }
        }
        return b4Var;
    }

    private void k() throws Throwable {
        ArrayList arrayListA;
        try {
            Context context = this.f13060u;
            if (context == null) {
                return;
            }
            String strA = d8.a(context, "blackList");
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            String strA2 = i3.a(strA);
            if (TextUtils.isEmpty(strA2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA2);
            if (jSONObject.has("list") && (arrayListA = a(jSONObject.optJSONArray("list"))) != null && arrayListA.size() > 0) {
                this.f13037A = arrayListA;
            }
            if (jSONObject.has(com.umeng.analytics.pro.cl.f49059n)) {
                String strOptString = jSONObject.optString(com.umeng.analytics.pro.cl.f49059n);
                if (TextUtils.isEmpty(strOptString)) {
                    return;
                }
                this.f13038B = strOptString;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean o() {
        if (Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            return true;
        }
        String str = Build.BRAND;
        return str.equalsIgnoreCase("OPPO") || str.equalsIgnoreCase("REALME");
    }

    public List e() {
        return this.f13037A;
    }

    public String f() {
        return TextUtils.isEmpty(this.f13038B) ? "0" : this.f13038B;
    }

    public Context g() {
        return this.f13060u;
    }

    public int h() {
        return this.f13054o;
    }

    public List i() {
        return this.f13044e;
    }

    public String l() {
        if (TextUtils.isEmpty(this.f13042c)) {
            return null;
        }
        return this.f13042c;
    }

    public String m() {
        if (TextUtils.isEmpty(this.f13043d)) {
            return null;
        }
        return this.f13043d;
    }

    public void n() {
        try {
            if (!o()) {
                this.f13039C = false;
                return;
            }
            ci ciVar = new ci();
            boolean zB = ciVar.b();
            this.f13039C = zB;
            if (zB) {
                ciVar.a(this.f13060u, false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean p() {
        return this.f13039C;
    }

    public boolean q() {
        if (this.f13056q) {
            return this.f13055p;
        }
        this.f13056q = true;
        boolean zD = kq.d();
        this.f13055p = zD;
        return zD;
    }

    public void r() {
        try {
            ((Application) this.f13060u.getApplicationContext()).registerActivityLifecycleCallbacks(new b());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(String str) {
        this.f13041b = str;
    }

    public String c() {
        return f13036E;
    }

    public String d() {
        String strA = i3.a("aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAw");
        return TextUtils.isEmpty(strA) ? "" : this.f13040a ? strA.replace("http:", "https:") : strA;
    }

    public void a(Context context, String str) {
        synchronized (b4.class) {
            try {
                if (context != null) {
                    this.f13060u = context.getApplicationContext();
                    try {
                        f13036E = str;
                        v3.b().a();
                        r();
                        k();
                        n();
                    } catch (Throwable unused) {
                    }
                    this.f13061v = context.getResources().getDisplayMetrics();
                    this.f13063x = true;
                    if (Build.VERSION.SDK_INT >= 28) {
                        a();
                    }
                } else {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f13041b)) {
            return d() + "/mb/sdk0/json";
        }
        return this.f13041b;
    }

    public void c(String str) {
        this.f13042c = str;
    }

    public void d(String str) {
        this.f13043d = str;
    }

    private void a() {
        try {
            Class.forName("android.content.pm.PackageParser$Package").getDeclaredConstructor(String.class).setAccessible(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(objInvoke, true);
        } catch (Throwable unused) {
        }
    }

    public void a(m1 m1Var) {
        this.f13065z.add(m1Var);
    }

    public void a(List list) {
        this.f13044e = list;
    }

    public String a(String str) {
        x1 x1Var = new x1();
        x1Var.d(str);
        x1Var.c(so.a());
        x1Var.a(false);
        x1Var.a(2);
        return new yi().b(x1Var);
    }

    public void a(Context context) {
        this.f13060u = context;
    }

    public void a(y4 y4Var) {
        if (y4Var == null) {
            return;
        }
        try {
            String strB = y4Var.b();
            if (TextUtils.isEmpty(strB) || strB.equals(this.f13038B)) {
                return;
            }
            this.f13037A = y4Var.a();
            this.f13038B = strB;
            x3.c().g().execute(new c(y4Var));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private ArrayList a(JSONArray jSONArray) {
        try {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null && jSONArray.length() > 0) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.getString(i2));
                }
            }
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
