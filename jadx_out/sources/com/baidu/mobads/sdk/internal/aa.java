package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class aa {

    /* renamed from: a, reason: collision with root package name */
    private static final String f10948a = "LoadRemoteDex";

    /* renamed from: i, reason: collision with root package name */
    private static aa f10949i;

    /* renamed from: b, reason: collision with root package name */
    private IXAdContainerFactory f10950b;

    /* renamed from: c, reason: collision with root package name */
    private bp f10951c;

    /* renamed from: f, reason: collision with root package name */
    private Runnable f10954f;

    /* renamed from: g, reason: collision with root package name */
    private Context f10955g;

    /* renamed from: k, reason: collision with root package name */
    private boolean f10958k;

    /* renamed from: d, reason: collision with root package name */
    private int f10952d = 5000;

    /* renamed from: e, reason: collision with root package name */
    private Handler f10953e = new Handler(Looper.getMainLooper());

    /* renamed from: h, reason: collision with root package name */
    private bv f10956h = bv.a();

    /* renamed from: j, reason: collision with root package name */
    private AtomicBoolean f10957j = new AtomicBoolean(false);

    public interface a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f10959a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f10960b = 2;

        void onFailure();

        void onSuccess();
    }

    private aa() {
    }

    private void f() {
        this.f10957j.set(true);
        if (ao.a()) {
            h();
        } else {
            g();
        }
    }

    private void g() {
        synchronized (aa.class) {
            try {
                bp bpVar = new bp(Class.forName(z.aQ, true, getClass().getClassLoader()), this.f10955g);
                this.f10951c = bpVar;
                this.f10950b = bpVar.a();
                k();
            } catch (Exception unused) {
                a("反射调用remote失败");
            }
        }
    }

    private void h() {
        this.f10954f = new ab(this);
        j();
        if (h.f11533a == null) {
            synchronized (cb.class) {
                try {
                    if (h.f11533a == null) {
                        h.f11533a = new cb(this.f10955g);
                    }
                } finally {
                }
            }
        }
        if (this.f10950b != null) {
            k();
            return;
        }
        if (h.f11533a == null) {
            this.f10956h.a(f10948a, "BaiduXAdSDKContext.mApkLoader == null,not load apk");
            return;
        }
        this.f10956h.a(f10948a, "start load apk");
        try {
            h.f11533a.a(new ac(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void i() {
        Runnable runnable = this.f10954f;
        if (runnable != null) {
            this.f10953e.removeCallbacks(runnable);
        }
        this.f10954f = null;
    }

    private void j() {
        Runnable runnable = this.f10954f;
        if (runnable != null) {
            this.f10953e.postDelayed(runnable, this.f10952d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.f10957j.set(false);
        bn.a(this.f10955g);
        i();
        s.a().a(1);
        cp.a(this.f10955g).b();
        cp.a(this.f10955g).a();
    }

    public IXAdContainerFactory c() {
        if (this.f10955g == null) {
            return null;
        }
        if (this.f10950b == null && !this.f10957j.get()) {
            f();
        }
        return this.f10950b;
    }

    public String d() {
        if (this.f10950b == null) {
            return "";
        }
        return "_" + this.f10950b.getRemoteVersion();
    }

    public boolean e() {
        return this.f10958k;
    }

    public Context b() {
        return this.f10955g;
    }

    public static aa a() {
        if (f10949i == null) {
            synchronized (aa.class) {
                try {
                    if (f10949i == null) {
                        f10949i = new aa();
                    }
                } finally {
                }
            }
        }
        return f10949i;
    }

    public void a(Context context, a aVar) {
        if (context == null) {
            this.f10956h.c(f10948a, "init Context is null,error");
            return;
        }
        this.f10955g = context.getApplicationContext();
        s.a().a(aVar);
        if (this.f10950b != null) {
            k();
        } else {
            if (this.f10957j.get()) {
                return;
            }
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.f10956h.a(f10948a, "加载dex失败原因=" + str);
        this.f10957j.set(false);
        i();
        s.a().a(2);
    }
}
