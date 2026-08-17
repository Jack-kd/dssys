package com.smartdigimkt.b4;

import com.smartdigimkt.sdk.core.SDKContext;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes5.dex */
public final class f implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
        SDKContext.getInstance().getClass();
        return threadNewThread;
    }
}
