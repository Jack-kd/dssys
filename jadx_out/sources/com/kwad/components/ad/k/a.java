package com.kwad.components.ad.k;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.kwad.components.core.video.i;
import com.kwad.sdk.core.response.model.AdTemplate;

/* loaded from: classes4.dex */
public abstract class a<L extends i> {
    public AdTemplate mAdTemplate;

    public a(@NonNull AdTemplate adTemplate) {
        this.mAdTemplate = adTemplate;
    }

    @MainThread
    public abstract void a(L l2);

    @MainThread
    public abstract void b(L l2);

    public long getPlayDuration() {
        return 0L;
    }

    public boolean ln() {
        return false;
    }

    public abstract void pause();

    @WorkerThread
    public void release() {
    }

    public abstract void resume();

    public void setAudioEnabled(boolean z2, boolean z3) {
    }

    public void skipToEnd() {
    }
}
