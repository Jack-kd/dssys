package com.smartdigimkt.a1;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes5.dex */
public final class s implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39302a = "Loader:ExtractorMediaPeriod";

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f39302a);
    }
}
