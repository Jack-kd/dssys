package com.smartdigimkt.m;

import android.app.NotificationManager;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f41682a;

    public i(j jVar) {
        this.f41682a = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            NotificationManager notificationManager = this.f41682a.f41684a;
            if (notificationManager != null) {
                notificationManager.cancelAll();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
