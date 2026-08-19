package com.byazt.jdb;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.sigmob.sdk.mraid.C1315g;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 169, 150})
/* loaded from: classes.dex */
public class q {

    public interface hp {
        void hp(long j2);

        void hp(String str);

        void hp(boolean z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
        if (hpVarJx == null) {
            return;
        }
        hpVarJx.hp((Application.ActivityLifecycleCallbacks) null);
    }

    public void hp(final hp hpVar) {
        com.byazt.zn.hp hpVarJx;
        if (hpVar == null || (hpVarJx = com.byazt.jz.s.u().jx()) == null) {
            return;
        }
        hpVarJx.hp(new Application.ActivityLifecycleCallbacks() { // from class: com.byazt.jdb.q.1

            /* renamed from: j, reason: collision with root package name */
            public long f21420j;
            public WeakReference<Object> jx;

            private boolean hp(@ForbidWrapParam Activity activity) {
                WeakReference<Object> weakReference;
                return (activity == null || (weakReference = this.jx) == null || activity != weakReference.get()) ? false : true;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
                q.this.hp();
                hpVar.hp("create");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(@ForbidWrapParam Activity activity) {
                q.this.hp();
                hpVar.hp(C1315g.f37905b);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(@ForbidWrapParam Activity activity) {
                this.jx = new WeakReference<>(activity);
                this.f21420j = System.currentTimeMillis();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(@ForbidWrapParam Activity activity) {
                q.this.hp();
                hpVar.hp(System.currentTimeMillis() - this.f21420j);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(@ForbidWrapParam Activity activity) {
                q.this.hp();
                hpVar.hp("start");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(@ForbidWrapParam Activity activity) {
                q.this.hp();
                hpVar.hp(hp(activity));
            }
        });
    }
}
