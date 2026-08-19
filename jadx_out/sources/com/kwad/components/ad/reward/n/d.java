package com.kwad.components.ad.reward.n;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.as;

/* loaded from: classes4.dex */
public abstract class d {
    public void a(r rVar) {
    }

    public void ad(boolean z2) {
    }

    public final void b(@NonNull r rVar) {
        a(rVar);
        ib().getContext();
        ad(as.VM());
    }

    public abstract ViewGroup ib();

    public void onUnbind() {
    }
}
