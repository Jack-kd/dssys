package com.byazt.toc;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.di.l;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.api.activity.TTTransparentActivity;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.ca;
import java.lang.ref.SoftReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 225, 38})
/* loaded from: classes3.dex */
public abstract class j extends e {

    /* renamed from: b, reason: collision with root package name */
    public int f25927b;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public Object f25928d;
    public int di;
    public SoftReference<Activity> ec;
    public boolean hp;
    public final Application.ActivityLifecycleCallbacks hq;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f25929l;

    /* renamed from: n, reason: collision with root package name */
    public Handler f25930n;
    public int ns;

    /* renamed from: o, reason: collision with root package name */
    public com.byazt.rt.jx f25931o;
    public SoftReference<Activity> sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f25932u;
    public String wv;

    @com.byazt.kj.hp(hp = {0, 1, 225, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp implements Runnable {
        public Toast hp;
        public final Handler jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f25936l;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25936l <= 0) {
                this.hp.cancel();
                return;
            }
            this.hp.cancel();
            Toast toastMakeText = Toast.makeText(com.byazt.di.l.getContext(), this.f25936l + "秒后播放下一个广告", 0);
            this.hp = toastMakeText;
            toastMakeText.show();
            Handler handler = this.jx;
            handler.postDelayed(new hp(this.hp, this.f25936l - 1, handler), 1000L);
        }

        private hp(Toast toast, int i2, Handler handler) {
            this.hp = toast;
            this.f25936l = i2;
            this.jx = handler;
        }
    }

    public j(Context context) {
        super(context);
        this.hp = false;
        this.f25932u = true;
        this.f25929l = false;
        this.ec = new SoftReference<>(null);
        this.sz = new SoftReference<>(null);
        this.ns = 0;
        this.cx = 2;
        this.f25927b = 0;
        this.di = ca.f49002b;
        this.hq = new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.toc.j.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(@NonNull @ForbidWrapParam Activity activity, @Nullable Bundle bundle) {
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated: activity: ".concat(String.valueOf(activity)));
                Activity activity2 = (Activity) j.this.sz.get();
                if (activity2 == null) {
                    com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated: start transparent activity");
                    if (activity instanceof TTTransparentActivity) {
                        j.this.sz = new SoftReference(activity);
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated: start transparent activity, callSuperShowAd");
                        j jVar = j.this;
                        jVar.l(jVar.f25931o, activity, j.this.f25928d, j.this.wv);
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated: end");
                        return;
                    }
                    return;
                }
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated again, showingActivity: ".concat(String.valueOf(activity2)));
                String name = activity.getClass().getName();
                if ((activity2 instanceof TTTransparentActivity) && com.byazt.bbe.hp.l(name)) {
                    com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated again, is adn ad activity: ".concat(String.valueOf(activity)));
                    activity2.finish();
                    j.this.sz = new SoftReference(activity);
                } else {
                    com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated again, is not adn ad activity");
                }
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- onActivityCreated: end 2");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(@NonNull @ForbidWrapParam Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(@NonNull @ForbidWrapParam Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(@NonNull @ForbidWrapParam Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(@NonNull @ForbidWrapParam Activity activity, @NonNull Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(@NonNull @ForbidWrapParam Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(@NonNull @ForbidWrapParam Activity activity) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Handler handler = this.f25930n;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Application applicationHp = l.hp.hp();
        if (applicationHp != null) {
            applicationHp.unregisterActivityLifecycleCallbacks(this.hq);
        }
    }

    private int wv() {
        CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayListGu;
        CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayListK;
        CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayListJl;
        boolean z2;
        com.byazt.ktq.l lVar = this.jx;
        List<com.byazt.tgw.e> listL = null;
        if (lVar != null) {
            copyOnWriteArrayListGu = lVar.gu();
            copyOnWriteArrayListK = this.jx.k();
            copyOnWriteArrayListJl = this.jx.jl();
        } else {
            copyOnWriteArrayListGu = null;
            copyOnWriteArrayListK = null;
            copyOnWriteArrayListJl = null;
        }
        if (copyOnWriteArrayListGu == null || copyOnWriteArrayListGu.size() <= 0) {
            z2 = false;
        } else {
            z2 = false;
            for (com.byazt.rt.jx jxVar : copyOnWriteArrayListGu) {
                if (jxVar != null && jxVar.isReady(this.f25956w) && !jxVar.isHasShown()) {
                    if (!j(jxVar) && !com.byazt.bbe.hp.hp(jxVar.getAdNetWorkName(), jxVar.getAdType(), jxVar.getSubAdType())) {
                        return 0;
                    }
                    z2 = true;
                }
            }
        }
        if (copyOnWriteArrayListJl != null && copyOnWriteArrayListJl.size() > 0) {
            for (com.byazt.rt.jx jxVar2 : copyOnWriteArrayListJl) {
                if (jxVar2 != null && jxVar2.isReady(this.f25956w) && !jxVar2.isHasShown()) {
                    if (!j(jxVar2) && !com.byazt.bbe.hp.hp(jxVar2.getAdNetWorkName(), jxVar2.getAdType(), jxVar2.getSubAdType())) {
                        return 0;
                    }
                    z2 = true;
                }
            }
        }
        if (copyOnWriteArrayListK != null && copyOnWriteArrayListK.size() > 0) {
            for (com.byazt.rt.jx jxVar3 : copyOnWriteArrayListK) {
                if (jxVar3 != null && jxVar3.isReady(this.f25956w) && !jxVar3.isHasShown()) {
                    if (!j(jxVar3) && !com.byazt.bbe.hp.hp(jxVar3.getAdNetWorkName(), jxVar3.getAdType(), jxVar3.getSubAdType())) {
                        return 0;
                    }
                    z2 = true;
                }
            }
        }
        try {
            listL = l();
        } catch (Throwable unused) {
        }
        if (listL != null && listL.size() > 0) {
            for (com.byazt.tgw.e eVar : listL) {
                String strVv = eVar.vv();
                if (eVar.sz() && com.byazt.xob.hp.hp().j(this.f25956w, strVv, vv()) && com.byazt.xob.hp.hp().hp(strVv, this.f25948a, false) == 3) {
                    if (!hp(eVar) && !com.byazt.bbe.hp.hp(eVar.v(), eVar.zy(), eVar.a())) {
                        return 0;
                    }
                    z2 = true;
                }
            }
        }
        return z2 ? 1 : 2;
    }

    public final void b() {
        if (j()) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 用户点击了广告，停止轮播");
            a();
        }
    }

    public final void cx() {
        if (j()) {
            if (!this.f25932u) {
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 调用finish触发了close回调");
                return;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 用户关闭了广告，停止轮播");
            Activity activity = this.sz.get();
            if (activity instanceof TTTransparentActivity) {
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 用户关闭了广告，finish showingActivity");
                activity.finish();
                this.sz = new SoftReference<>(null);
            }
            a();
        }
    }

    public void hp(Activity activity, Object obj, String str) {
    }

    @Override // com.byazt.toc.e
    public boolean n() {
        return this.hp;
    }

    public final void ns() {
        if (j()) {
            this.f25932u = true;
            this.ns++;
            final Activity activity = this.ec.get();
            final Activity activity2 = this.sz.get();
            final com.byazt.rt.jx jxVar = this.f25931o;
            if (!hp(activity2, activity, jxVar)) {
                a();
                return;
            }
            Handler handler = this.f25930n;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                hp(this.f25930n, activity2);
                this.f25930n.postDelayed(new Runnable() { // from class: com.byazt.toc.j.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!j.this.hp(activity2)) {
                            j.this.a();
                            return;
                        }
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播 开始，先showingActivity finish");
                        j.this.f25932u = false;
                        activity2.finish();
                        jxVar.onDestroy();
                        j.this.sz = new SoftReference(null);
                        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播开始 showingActivity finish end");
                        j.this.hp = true;
                        j jVar = j.this;
                        jVar.hp(activity, jVar.f25928d, j.this.wv);
                    }
                }, this.di);
            }
        }
    }

    private boolean j() {
        return this.f25927b != 0;
    }

    private void w() {
        if (this.f25929l) {
            return;
        }
        Application applicationHp = l.hp.hp();
        if (applicationHp == null) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- app is null, 插全屏轮播直接return");
            return;
        }
        applicationHp.unregisterActivityLifecycleCallbacks(this.hq);
        applicationHp.registerActivityLifecycleCallbacks(this.hq);
        this.f25929l = true;
    }

    public void l(com.byazt.iqm.l lVar) {
        hp(lVar);
        com.byazt.tgw.l lVar2 = this.eb;
        if (lVar2 != null) {
            this.f25927b = lVar2.u();
            if (!j()) {
                com.byazt.aw.l.l(MediationConstant.TAG, "--==--- inter full refresh is not enabled");
                return;
            }
            this.cx = this.eb.xs();
            com.byazt.tgw.l lVar3 = this.eb;
            int iGu = lVar3.gu(lVar3.xh());
            this.di = iGu;
            if (iGu <= 0) {
                this.di = ca.f49002b;
            }
            this.f25930n = new Handler(Looper.getMainLooper());
        }
    }

    private boolean j(com.byazt.rt.jx jxVar) {
        return jxVar.isCustomAd() && jxVar.getIsRefresh() != 1;
    }

    @Override // com.byazt.toc.e
    public void hp(com.byazt.rt.jx jxVar, Activity activity, Object obj, String str) {
        if (j()) {
            w();
            this.ec = new SoftReference<>(activity);
            this.f25931o = jxVar;
            this.f25950j = jxVar;
            this.f25928d = obj;
            this.wv = str;
            Intent intent = new Intent(com.byazt.di.l.getContext(), (Class<?>) TTTransparentActivity.class);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            com.byazt.di.l.getContext().startActivity(intent);
            return;
        }
        super.hp(jxVar, activity, obj, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.byazt.rt.jx jxVar, Activity activity, Object obj, String str) {
        super.hp(jxVar, activity, obj, str);
    }

    private void hp(final Handler handler, final Activity activity) {
        int i2 = this.di + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth;
        if (i2 <= 0) {
            return;
        }
        handler.postDelayed(new Runnable() { // from class: com.byazt.toc.j.2
            @Override // java.lang.Runnable
            public void run() {
                if (!j.this.hp(activity)) {
                    j.this.a();
                    return;
                }
                Toast toastMakeText = Toast.makeText(com.byazt.di.l.getContext(), "2秒后播放下一个广告", 0);
                toastMakeText.show();
                Handler handler2 = handler;
                handler2.postDelayed(new hp(toastMakeText, 1, handler2), 1000L);
            }
        }, i2);
    }

    private boolean hp(com.byazt.tgw.e eVar) {
        return eVar.as() && eVar.hp() != 1;
    }

    private boolean hp(Activity activity, Activity activity2, com.byazt.rt.jx jxVar) {
        if (this.ns >= this.cx) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，轮播次数已达上限: " + this.cx);
            return false;
        }
        if (activity2 == null) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播 停止轮播 developerActivity为null");
            return false;
        }
        if (jxVar == null) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，ttBaseAd为null，不轮播");
            return false;
        }
        if (j(jxVar)) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，展示的是自定义adn，则不轮播");
            return false;
        }
        if (!com.byazt.bbe.hp.hp(jxVar.getAdNetWorkName(), jxVar.getAdType(), jxVar.getSubAdType())) {
            if (activity != null) {
                return true;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，showingActivity是null，停止轮播");
            com.byazt.lsx.a.hp(this.f25948a, 81010);
            return false;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，当前展示的广告不支持轮播: " + jxVar.getAdNetWorkName() + ", adtype: " + jxVar.getAdType() + ", subType: " + jxVar.getSubAdType());
        com.byazt.lsx.a.hp(this.f25948a, 81011);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hp(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，showingActivity正在finish或已经destroy，停止轮播");
            return false;
        }
        int iWv = wv();
        if (iWv == 2) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，无任何广告可用，停止轮播");
            com.byazt.lsx.a.hp(this.f25948a, 81008);
            return false;
        }
        if (iWv == 1) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，仅有自定义adn广告可用，停止轮播");
            com.byazt.lsx.a.hp(this.f25948a, 81009);
            return false;
        }
        int iL = l.l(this.f25956w);
        if (iL == 0) {
            return true;
        }
        com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播，命中了展示频控，停止轮播");
        com.byazt.lsx.a.hp(this.f25948a, iL);
        return false;
    }
}
