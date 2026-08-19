package com.kwad.components.offline.api.core.adInnerEc.longconnection;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes4.dex */
public class LiveLongConnectionServerException extends ServerException {
    private static final long serialVersionUID = -4435167903777863038L;
    public final long mMaxDelayMs;
    public final long mMinDelayMs;

    public LiveLongConnectionServerException(int i2, int i3, String str, long j2, long j3) {
        super(i2, i3, str);
        this.mMinDelayMs = j2;
        this.mMaxDelayMs = j3;
    }
}
