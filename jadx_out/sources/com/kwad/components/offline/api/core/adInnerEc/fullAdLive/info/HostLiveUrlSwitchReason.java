package com.kwad.components.offline.api.core.adInnerEc.fullAdLive.info;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

@Keep
/* loaded from: classes4.dex */
public class HostLiveUrlSwitchReason {
    public long mEmptyDataDurationMs;
    public int mReleaseReason;
    public int mRetryReason;

    @NonNull
    public String toString() {
        return "LiveUrlSwitchReason{mReleaseReason=" + this.mReleaseReason + ", mRetryReason=" + this.mRetryReason + ", mEmptyDataDurationMs=" + this.mEmptyDataDurationMs + '}';
    }
}
