package com.anythink.core.api.bridge;

import android.app.Activity;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.by;
import com.anythink.core.common.v.b.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class AnyThinkBaseAdapter {
    boolean isRefresh;
    protected WeakReference<Activity> mActivityRef;
    private by mUnitGroupInfo;

    public final by getUnitGroupInfo() {
        return this.mUnitGroupInfo;
    }

    public final boolean isRefresh() {
        return this.isRefresh;
    }

    public final void postOnMainThread(Runnable runnable) {
        s.b();
        s.b(runnable);
    }

    public final void postOnMainThreadDelayed(Runnable runnable, long j2) {
        s.b();
        s.a(runnable, j2);
    }

    public final void refreshActivityContext(Activity activity) {
        this.mActivityRef = new WeakReference<>(activity);
    }

    public final void runOnNetworkRequestThread(Runnable runnable) {
        c.a().a(new d(e.f8099H, runnable), false);
    }

    public final void setRefresh(boolean z2) {
        this.isRefresh = z2;
    }

    public final void setUnitGroupInfo(by byVar) {
        this.mUnitGroupInfo = byVar;
    }
}
