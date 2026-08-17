package com.kwad.components.ad.reward.n;

import android.view.ViewGroup;
import android.view.ViewStub;
import androidx.annotation.IdRes;

/* loaded from: classes4.dex */
public abstract class s extends d {
    protected ViewGroup wT;

    public final void a(ViewGroup viewGroup, @IdRes int i2, @IdRes int i3) {
        if (this.wT != null) {
            return;
        }
        ViewStub viewStub = (ViewStub) viewGroup.findViewById(i2);
        if (viewStub != null) {
            this.wT = (ViewGroup) viewStub.inflate();
        } else {
            this.wT = (ViewGroup) viewGroup.findViewById(i3);
        }
    }

    @Override // com.kwad.components.ad.reward.n.d
    public ViewGroup ib() {
        return this.wT;
    }
}
