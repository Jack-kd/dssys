package com.smartdigimkt.a1;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes5.dex */
public final class o implements b {
    public final p a(Looper looper, Handler.Callback callback) {
        return new p(new Handler(looper, callback));
    }
}
