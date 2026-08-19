package com.qq.e.ads.dfa;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.qq.e.comm.managers.a;
import com.qq.e.comm.pi.DFA;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public class GDTApkManager {

    /* renamed from: a, reason: collision with root package name */
    private DFA f35173a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f35174b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f35175c = false;

    /* renamed from: d, reason: collision with root package name */
    private AtomicInteger f35176d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    private Context f35177e;

    public GDTApkManager(Context context, IGDTApkListener iGDTApkListener) {
        if (a.b().d()) {
            a(context, a.b().a(), iGDTApkListener);
        }
    }

    public final void loadGDTApk() {
        if (this.f35174b) {
            if (!this.f35175c) {
                this.f35176d.incrementAndGet();
                return;
            }
            DFA dfa = this.f35173a;
            if (dfa != null) {
                dfa.loadGDTApk();
            } else {
                GDTLogger.e("调用loadGDTApk失败，实例未被正常初始化");
            }
        }
    }

    public final void startInstall(GDTApk gDTApk) {
        DFA dfa = this.f35173a;
        if (dfa != null) {
            dfa.startInstall(this.f35177e, gDTApk);
        }
    }

    private void a(Context context, String str, final IGDTApkListener iGDTApkListener) {
        if (TextUtils.isEmpty(str) || context == null) {
            GDTLogger.e("初始化错误：GDTApkManager 构造失败，Context和appID不能为空");
        } else {
            if (!com.qq.e.comm.a.a(context)) {
                GDTLogger.e("初始化错误：必需的 Activity/Service/Permission 没有在AndroidManifest.xml中声明");
                return;
            }
            this.f35174b = true;
            this.f35177e = context;
            a.f35321g.execute(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final POFactory pOFactory = a.b().c().getPOFactory();
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (pOFactory != null) {
                                        GDTApkManager.this.f35173a = a.b().c().getPOFactory().getGDTApkDelegate(iGDTApkListener);
                                        GDTApkManager.this.f35175c = true;
                                        while (GDTApkManager.this.f35176d.getAndDecrement() > 0) {
                                            GDTApkManager.this.loadGDTApk();
                                        }
                                    }
                                } finally {
                                    try {
                                    } finally {
                                    }
                                }
                            }
                        });
                    } catch (Throwable th) {
                        GDTLogger.e("初始化错误：初始化时发生异常", th);
                    }
                }
            });
        }
    }
}
