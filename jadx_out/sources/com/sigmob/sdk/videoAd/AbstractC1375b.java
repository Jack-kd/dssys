package com.sigmob.sdk.videoAd;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.InterfaceC1264k;

/* renamed from: com.sigmob.sdk.videoAd.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1375b extends AbstractC1262j {
    public AbstractC1375b(Activity activity, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
    }

    public void a(boolean z2) {
        if (z2) {
            this.f35959d.a();
        }
    }

    public void b(Context context, int i2, Bundle bundle) {
        try {
            a(context.getApplicationContext(), i2, bundle);
            boolean z2 = bundle.getBoolean(com.sigmob.sdk.base.n.f36459v, false);
            boolean z3 = bundle.getBoolean(com.sigmob.sdk.base.n.f36458u, false);
            if (Build.VERSION.SDK_INT >= 27) {
                if (z2) {
                    n().setTurnScreenOn(true);
                }
                if (z3) {
                    n().setShowWhenLocked(true);
                    n().setTurnScreenOn(true);
                }
            }
            if (z2) {
                n().getWindow().addFlags(128);
            }
            if (z3) {
                n().getWindow().addFlags(2621440);
            }
        } catch (Throwable th) {
            SigmobLog.e("optionSetting error", th);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        this.f35959d.onSetContentView(this.f35958c);
    }
}
