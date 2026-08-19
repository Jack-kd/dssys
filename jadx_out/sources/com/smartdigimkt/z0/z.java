package com.smartdigimkt.z0;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class z extends IOException {
    public z(Throwable th) {
        super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
    }
}
