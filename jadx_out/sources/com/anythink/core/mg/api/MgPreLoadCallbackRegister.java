package com.anythink.core.mg.api;

import com.anythink.core.common.t.c;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class MgPreLoadCallbackRegister {
    private static final String TAG = "MgPreLoadCallbackRegister";
    private volatile d timeoutRunnable;
    private final Object timeoutLock = new Object();
    private final Object callbackLock = new Object();
    private final List<MgPreLoadCallback> preLoadCallbackList = new CopyOnWriteArrayList();
    private final AtomicBoolean isCallback = new AtomicBoolean(false);
    private final AtomicReference<MgAdInfo> mgAdInfoRef = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallback(boolean z2) {
        notifyCallback(z2, false);
    }

    public MgAdInfo getMgAdInfo() {
        return this.mgAdInfoRef.get();
    }

    public void notifyPreLoadCallback(MgAdInfo mgAdInfo) {
        this.mgAdInfoRef.set(mgAdInfo);
        synchronized (this.timeoutLock) {
            try {
                if (this.timeoutRunnable != null) {
                    c.a().a(this.timeoutRunnable);
                    this.timeoutRunnable = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyCallback(false, true);
    }

    public void registerPreLoadCallback(MgPreLoadCallback mgPreLoadCallback) {
        if (mgPreLoadCallback == null) {
            return;
        }
        synchronized (this.callbackLock) {
            this.isCallback.set(false);
            this.preLoadCallbackList.add(mgPreLoadCallback);
        }
    }

    public void startTimeoutCountDown(long j2) {
        synchronized (this.timeoutLock) {
            try {
                if (this.timeoutRunnable != null) {
                    c.a().a(this.timeoutRunnable);
                }
                if (j2 <= 0) {
                    notifyCallback(false);
                } else if (!this.isCallback.get()) {
                    this.timeoutRunnable = new d(e.du, new Runnable() { // from class: com.anythink.core.mg.api.MgPreLoadCallbackRegister.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MgPreLoadCallbackRegister.this.notifyCallback(true);
                        }
                    });
                    c.a().a(this.timeoutRunnable, j2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void notifyCallback(final boolean z2, boolean z3) {
        CopyOnWriteArrayList<MgPreLoadCallback> copyOnWriteArrayList;
        if (this.preLoadCallbackList.isEmpty()) {
            return;
        }
        synchronized (this.callbackLock) {
            try {
                if (this.preLoadCallbackList.isEmpty() || this.isCallback.get()) {
                    copyOnWriteArrayList = null;
                } else {
                    this.isCallback.set(true);
                    copyOnWriteArrayList = new CopyOnWriteArrayList(this.preLoadCallbackList);
                    this.preLoadCallbackList.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return;
        }
        final MgAdInfo mgAdInfo = this.mgAdInfoRef.get();
        try {
            for (final MgPreLoadCallback mgPreLoadCallback : copyOnWriteArrayList) {
                if (mgPreLoadCallback != null) {
                    if (z2 || z3) {
                        com.anythink.core.common.v.b.c.a().b(new d(e.bD, new Runnable() { // from class: com.anythink.core.mg.api.MgPreLoadCallbackRegister.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                mgPreLoadCallback.onMgAdInfo(mgAdInfo, z2);
                            }
                        }));
                    } else {
                        mgPreLoadCallback.onMgAdInfo(mgAdInfo, false);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
