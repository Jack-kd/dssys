package com.byazt.dw;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 1104, 28})
/* loaded from: classes2.dex */
public class hp implements Application.ActivityLifecycleCallbacks {
    public static volatile boolean hp = false;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0211hp f19338j;
    public volatile WeakReference<Activity> jx;

    /* renamed from: l, reason: collision with root package name */
    public int f19339l = 0;

    /* renamed from: com.byazt.dw.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0211hp {
        void hp();

        void l();
    }

    public Boolean hp() {
        return Boolean.valueOf(hp);
    }

    public Activity l() {
        if (this.jx == null) {
            return null;
        }
        return this.jx.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.jx = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f19339l++;
        hp = false;
        InterfaceC0211hp interfaceC0211hp = this.f19338j;
        if (interfaceC0211hp != null) {
            interfaceC0211hp.l();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i2 = this.f19339l - 1;
        this.f19339l = i2;
        if (i2 == 0) {
            hp = true;
            InterfaceC0211hp interfaceC0211hp = this.f19338j;
            if (interfaceC0211hp != null) {
                interfaceC0211hp.hp();
            }
        }
    }

    public void hp(InterfaceC0211hp interfaceC0211hp) {
        this.f19338j = interfaceC0211hp;
    }
}
