package com.byazt.ye;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.byazt.kc.MainServerManager;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.sigmob.sdk.base.common.C1244a;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 786, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static volatile gu hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f27882l;
    public final List<ZeusPluginStateListener> jx = new CopyOnWriteArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final List<zy> f27881j = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final Handler f27883w = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    public jl f27880a = null;
    public Map<String, JSONObject> eb = new ConcurrentHashMap();

    private void a() throws PackageManager.NameNotFoundException {
        ProviderInfo[] providerInfoArr;
        GlobalParam.getInstance().getReporter().hp("zeus_stage_plugin", "start");
        try {
            PackageInfo packageInfo = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 8);
            if (packageInfo != null && (providerInfoArr = packageInfo.providers) != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if (!TextUtils.isEmpty(providerInfo.authority)) {
                        if (providerInfo.authority.contains(Zeus.getAppApplication().getPackageName() + ".pangle.servermanager.")) {
                            String str = (TextUtils.isEmpty(providerInfo.processName) || !providerInfo.processName.contains(":")) ? "main" : providerInfo.processName.split(":")[1];
                            ProviderInfo providerInfo2 = Zeus.getServerManagerHashMap().get(str);
                            if ((providerInfo2 == null || !TextUtils.equals(str, "main") || !TextUtils.equals(providerInfo.name, MainServerManager.class.getName())) && (providerInfo2 == null || !TextUtils.equals(str, "downloader") || TextUtils.isEmpty(providerInfo2.authority) || !providerInfo2.authority.contains("com.bytedance.sdk.openadsdk.adhost"))) {
                                Zeus.getServerManagerHashMap().put(str, providerInfo);
                            }
                        }
                    }
                }
                GlobalParam.getInstance().getReporter().hp("zeus_stage_plugin", C1244a.f35674b);
                return;
            }
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "initServerManager failed. packageInfo:".concat(String.valueOf(packageInfo)));
        } catch (Exception e2) {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_plugin", "error:".concat(String.valueOf(e2)));
            throw new RuntimeException(e2);
        }
    }

    private void eb() {
        try {
            GlobalParam.getInstance().getReporter().hp("zeus_stage_common", "invoke disableApiWarning");
            FieldUtils.writeField(com.byazt.hu.hp.hp(), "mHiddenApiWarningShown", Boolean.TRUE);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "ZeusManager disableApiWarningShownForAndroidP, true");
        } catch (Exception e2) {
            ZeusLogger.errReport(ZeusLogger.TAG_INIT, "disableApiWarningShownForAndroidP failed", e2);
        }
    }

    public static gu hp() {
        if (hp == null) {
            synchronized (gu.class) {
                try {
                    if (hp == null) {
                        hp = new gu();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private Object[] s() {
        Object[] array;
        synchronized (this.f27881j) {
            try {
                array = !this.f27881j.isEmpty() ? this.f27881j.toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array == null ? new Object[0] : array;
    }

    public jl j() {
        return this.f27880a;
    }

    public List<ZeusPluginStateListener> jx() {
        return this.jx;
    }

    public boolean l() {
        return this.f27882l;
    }

    public Map<String, JSONObject> w() {
        return this.eb;
    }

    public void l(ZeusPluginStateListener zeusPluginStateListener) {
        List<ZeusPluginStateListener> list = this.jx;
        if (list != null) {
            list.remove(zeusPluginStateListener);
        }
    }

    public void l(zy zyVar) {
        if (zyVar == null) {
            return;
        }
        synchronized (this.f27881j) {
            this.f27881j.remove(zyVar);
        }
    }

    public synchronized void hp(Application application) throws Throwable {
        Throwable th;
        try {
            try {
                if (this.f27882l) {
                    try {
                        ZeusLogger.w(ZeusLogger.TAG_INIT, "ZeusManager zeus has been inited!");
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                hp(3000, 0, null, -1, null);
                Zeus.setAppContext(application);
                GlobalParam globalParam = GlobalParam.getInstance();
                globalParam.init();
                if (application != null) {
                    ZeusLogger.setDebug(globalParam.isDebug());
                    ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusManager init, context = " + application + ", hParam = " + globalParam);
                    com.byazt.hu.w.l(new Runnable() { // from class: com.byazt.ye.gu.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.byazt.lc.gu.l();
                        }
                    });
                    if (GlobalParam.getInstance().isPostBgDexOptByInit()) {
                        com.byazt.ld.w.hp();
                    }
                    com.byazt.ll.l.hp().hp(new com.byazt.ll.hp() { // from class: com.byazt.ye.gu.2
                        @Override // com.byazt.ll.hp
                        public void hp(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
                            com.byazt.qva.jx.hp(str, jSONObject, jSONObject2, jSONObject3);
                        }
                    });
                    if (!globalParam.isCloseFlipped()) {
                        l.hp();
                    }
                    if (com.byazt.lc.q.u()) {
                        com.byazt.hu.w.hp(new Runnable() { // from class: com.byazt.ye.gu.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    GlobalParam.getInstance().getReporter().hp("zeus_stage_common", "invoke SystemConfig");
                                    MethodUtils.invokeStaticMethod(Class.forName("com.android.server.SystemConfig"), "getInstance", new Object[0]);
                                } catch (Throwable th3) {
                                    GlobalParam.getInstance().getReporter().hp("zeus_stage_error", "invoke SystemConfig error : ".concat(String.valueOf(th3)));
                                }
                            }
                        });
                    }
                    if (com.byazt.lc.q.k()) {
                        eb();
                    }
                    a();
                    ContentProviderManager.getInstance().initSystemContentProviderInfo();
                    if (!globalParam.closeHookHuaweiOnInit()) {
                        Zeus.hookHuaWeiVerifier(application);
                    }
                    this.f27882l = true;
                    try {
                        hp(3100, 0, null, -1, null);
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        throw th;
                    }
                }
                GlobalParam.getInstance().getReporter().hp("zeus_stage_error", "context is null");
                throw new IllegalArgumentException("context must be not null !!!");
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public void hp(ZeusPluginStateListener zeusPluginStateListener) {
        this.jx.add(zeusPluginStateListener);
    }

    public void hp(zy zyVar) {
        if (zyVar == null) {
            return;
        }
        synchronized (this.f27881j) {
            this.f27881j.add(zyVar);
        }
    }

    public void hp(final int i2, final int i3, @Nullable final String str, final int i4, @Nullable final Throwable th) {
        for (final Object obj : s()) {
            this.f27883w.post(new Runnable() { // from class: com.byazt.ye.gu.4
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }
    }

    public void hp(jl jlVar) {
        this.f27880a = jlVar;
    }
}
