package com.qq.e.comm.managers;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.dfa.GDTAppDialogClickListener;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.devtool.DevTools;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.plugin.e;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes4.dex */
public class a implements IGDTAdManager {

    /* renamed from: g, reason: collision with root package name */
    public static final ExecutorService f35321g = Executors.newSingleThreadExecutor();

    /* renamed from: a, reason: collision with root package name */
    private volatile boolean f35322a;

    /* renamed from: b, reason: collision with root package name */
    private volatile boolean f35323b;

    /* renamed from: c, reason: collision with root package name */
    private volatile Context f35324c;

    /* renamed from: d, reason: collision with root package name */
    private volatile PM f35325d;

    /* renamed from: e, reason: collision with root package name */
    private volatile DevTools f35326e;

    /* renamed from: f, reason: collision with root package name */
    private volatile String f35327f;

    /* renamed from: com.qq.e.comm.managers.a$a, reason: collision with other inner class name */
    public class RunnableC0764a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ GDTAdSdk.OnStartListener f35328a;

        public RunnableC0764a(GDTAdSdk.OnStartListener onStartListener) {
            this.f35328a = onStartListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                POFactory pOFactory = a.this.f35325d.getPOFactory(false, false);
                if (pOFactory == null) {
                    GDTAdSdk.OnStartListener onStartListener = this.f35328a;
                    if (onStartListener != null) {
                        onStartListener.onStartFailed(new Exception("GDTAdSdk start异常"));
                        return;
                    }
                    return;
                }
                pOFactory.start(a.this.f35325d.getStartCaller(1));
                GDTAdSdk.OnStartListener onStartListener2 = this.f35328a;
                if (onStartListener2 != null) {
                    onStartListener2.onStartSuccess();
                }
            } catch (e e2) {
                GDTLogger.e(e2.getMessage(), e2);
                GDTAdSdk.OnStartListener onStartListener3 = this.f35328a;
                if (onStartListener3 != null) {
                    onStartListener3.onStartFailed(e2);
                }
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f35330a;

        public b(boolean z2) {
            this.f35330a = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f35325d.getPOFactory(this.f35330a, true);
                a.this.f35323b = true;
            } catch (e e2) {
                GDTLogger.e(e2.getMessage(), e2);
            }
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        private static a f35332a = new a(null);
    }

    private a() {
        this.f35322a = false;
        this.f35323b = false;
    }

    public static a b() {
        return c.f35332a;
    }

    public PM c() {
        return this.f35325d;
    }

    public boolean d() {
        if (this.f35322a) {
            return true;
        }
        GDTLogger.e("SDK 尚未初始化，请在 Application 中调用 GDTAdSdk.initWithoutStart() 初始化");
        return false;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getBuyerId(Map<String, Object> map) {
        if (!d()) {
            return "";
        }
        try {
            return this.f35325d.getPOFactory().getBuyerId(map);
        } catch (Exception e2) {
            GDTLogger.e("SDK 初始化异常", e2);
            return "";
        }
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public DevTools getDevTools() {
        if (this.f35326e == null) {
            this.f35326e = new DevTools();
        }
        return this.f35326e;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getSDKInfo(String str) {
        if (!d()) {
            return "";
        }
        try {
            return this.f35325d.getPOFactory().getSDKInfo(str);
        } catch (Exception e2) {
            GDTLogger.e("SDK 初始化异常", e2);
            return "";
        }
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public int showOpenOrInstallAppDialog(GDTAppDialogClickListener gDTAppDialogClickListener) {
        if (!this.f35323b) {
            return 0;
        }
        try {
            return this.f35325d.getPOFactory().showOpenOrInstallAppDialog(gDTAppDialogClickListener);
        } catch (Exception e2) {
            GDTLogger.e("SDK 初始化异常", e2);
            return 0;
        }
    }

    public /* synthetic */ a(RunnableC0764a runnableC0764a) {
        this();
    }

    public synchronized boolean b(Context context, String str, boolean z2) {
        if (this.f35322a) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            GDTLogger.e("GDTADManager初始化错误，context和appId不能为空");
            return false;
        }
        try {
            a(context, str, z2);
            this.f35322a = true;
            return true;
        } catch (Throwable th) {
            GDTLogger.e("GDTADManager初始化错误", th);
            return false;
        }
    }

    private void a(Context context, String str, boolean z2) {
        this.f35327f = str;
        this.f35324c = context.getApplicationContext();
        this.f35325d = new PM(this.f35324c, null);
        f35321g.submit(new b(z2));
    }

    public String a() {
        return this.f35327f;
    }

    public synchronized void a(GDTAdSdk.OnStartListener onStartListener) {
        if (this.f35322a) {
            f35321g.submit(new RunnableC0764a(onStartListener));
            return;
        }
        GDTLogger.e("在调用start方法前请先调用initWithoutStart方法");
        if (onStartListener != null) {
            onStartListener.onStartFailed(new Exception("在调用start方法前请先调用initWithoutStart方法"));
        }
    }
}
