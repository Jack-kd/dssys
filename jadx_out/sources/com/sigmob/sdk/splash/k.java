package com.sigmob.sdk.splash;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class k implements ah {

    /* renamed from: a, reason: collision with root package name */
    public static final String f38706a = "SplashViewAbilitySessionManager";

    /* renamed from: b, reason: collision with root package name */
    private final HashSet<j> f38707b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f38708c;

    public k() {
        HashSet<j> hashSet = new HashSet<>();
        this.f38707b = hashSet;
        hashSet.add(new j());
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a() {
        if (this.f38708c == null || com.sigmob.sdk.base.utils.f.a(this.f38707b)) {
            SigmobLog.e("endDisplaySession() called adUnit is null.");
            return;
        }
        Iterator<j> it = this.f38707b.iterator();
        while (it.hasNext()) {
            it.next().b(this.f38708c);
        }
        synchronized (this) {
            try {
                if (com.sigmob.sdk.base.utils.v.b(this.f38708c)) {
                    this.f38708c.setSessionManager(null);
                    this.f38708c.destroy();
                    this.f38708c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null || com.sigmob.sdk.base.utils.f.a(this.f38707b)) {
            SigmobLog.e("createDisplaySession() called adUnit is null.");
            return;
        }
        Iterator<j> it = this.f38707b.iterator();
        while (it.hasNext()) {
            it.next().a(baseAdUnit);
        }
        this.f38708c = baseAdUnit;
        baseAdUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(String str, int i2) {
        SigmobLog.d("SplashViewAbilitySessionManager#recordDisplayEvent: event = " + str + ", currentPosition = " + i2);
        if (this.f38708c == null || com.sigmob.sdk.base.utils.f.a(this.f38707b)) {
            SigmobLog.e("recordDisplayEvent() called adUnit is null.");
            return;
        }
        Iterator<j> it = this.f38707b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f38708c, str, i2);
        }
    }
}
