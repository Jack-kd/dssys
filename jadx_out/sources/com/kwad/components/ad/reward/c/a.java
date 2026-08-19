package com.kwad.components.ad.reward.c;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.reward.g;
import com.kwad.components.core.webview.jshandler.j;
import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.ae;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public class a {
    private static volatile a vb;
    private g uj;

    @Nullable
    private b vc;
    private volatile boolean vd = false;
    private volatile boolean ve = false;
    private List<WeakReference<j>> vf = new CopyOnWriteArrayList();

    private a() {
    }

    public static a ih() {
        if (vb == null) {
            synchronized (a.class) {
                try {
                    if (vb == null) {
                        vb = new a();
                    }
                } finally {
                }
            }
        }
        return vb;
    }

    private synchronized boolean ij() {
        b bVar = this.vc;
        if (bVar != null) {
            if (bVar.vj == b.vg) {
                return true;
            }
        }
        return false;
    }

    private boolean isNeoScan() {
        AdGlobalConfigInfo adGlobalConfigInfo = this.uj.mAdResultData.adGlobalConfigInfo;
        return adGlobalConfigInfo != null && adGlobalConfigInfo.neoPageType == 1;
    }

    public final void R(Context context) {
        boolean zIj = ij();
        com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "checkStatusAndToast isCurrentHadExtra: " + zIj + ", hadToast: " + this.ve);
        if (this.ve || !zIj) {
            return;
        }
        this.ve = true;
        ae.V(context, "恭喜获得第2份奖励");
    }

    public final synchronized void a(AdTemplate adTemplate, b bVar) {
        if (adTemplate == null) {
            return;
        }
        try {
            com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "updateExtraReward: " + bVar.toJson().toString());
            this.vc = bVar;
            if (bVar.vj == b.vg && !this.vd) {
                this.vd = true;
                c.a(this.vc, com.kwad.components.ad.reward.e.f.O(adTemplate.getUniqueId()));
                com.kwad.sdk.core.adlog.c.l(adTemplate, isNeoScan());
            }
            for (WeakReference<j> weakReference : this.vf) {
                if (weakReference.get() == null) {
                    this.vf.remove(weakReference);
                } else {
                    b bVarIi = ii();
                    com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "GetNativeDataHandler callback: " + bVarIi.toJson().toString());
                    weakReference.get().a(bVarIi);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e(AdTemplate adTemplate, int i2) {
        com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "updateExtraReward: " + i2);
        g gVar = this.uj;
        if (gVar != null && gVar.hi() && i2 == b.STATUS_NONE) {
            com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "updateExtraReward: cant update to status 2");
            return;
        }
        b bVarIi = ih().ii();
        bVarIi.ak(i2);
        ih().a(adTemplate, bVarIi);
    }

    @NonNull
    public final synchronized b ii() {
        try {
            if (this.vc == null) {
                b bVarIl = c.il();
                this.vc = bVarIl;
                bVarIl.vj = 0;
            }
            com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "getCurrentExtraReward: " + this.vc.vj);
        } catch (Throwable th) {
            throw th;
        }
        return this.vc;
    }

    public final synchronized void reset() {
        this.vc = null;
        this.ve = false;
        this.vd = false;
        this.uj = null;
    }

    public final void setCallerContext(g gVar) {
        this.uj = gVar;
    }

    public final void a(j jVar) {
        com.kwad.sdk.core.d.c.d("CurrentExtraRewardHolder", "addGetNativeHandler: " + jVar);
        if (jVar != null) {
            this.vf.add(new WeakReference<>(jVar));
        }
    }
}
