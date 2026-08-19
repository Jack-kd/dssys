package com.kwad.sdk.utils;

import android.content.Context;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public abstract class m<T> {
    protected boolean boG = false;
    protected boolean enable;

    public m(boolean z2) {
        this.enable = z2;
    }

    @Nullable
    public final T cX(Context context) {
        if (!this.enable || this.boG) {
            return null;
        }
        try {
            return cY(context);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return null;
        }
    }

    @Nullable
    public abstract T cY(Context context);

    public final void cs(boolean z2) {
        this.enable = z2;
    }
}
