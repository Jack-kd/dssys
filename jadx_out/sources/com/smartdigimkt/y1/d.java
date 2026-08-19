package com.smartdigimkt.y1;

import com.smartdigimkt.sdk.basead.ui.animplayerview.BaseAnimPlayerView;

/* loaded from: classes5.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseAnimPlayerView f45170a;

    public d(BaseAnimPlayerView baseAnimPlayerView) {
        this.f45170a = baseAnimPlayerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        while (true) {
            BaseAnimPlayerView baseAnimPlayerView = this.f45170a;
            if (!baseAnimPlayerView.f43699j) {
                return;
            }
            if (baseAnimPlayerView.f43701l || (cVar = baseAnimPlayerView.f43703n) == null) {
                try {
                    Thread.sleep(10L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                try {
                    cVar.sendEmptyMessage(1);
                } catch (Throwable unused) {
                }
                try {
                    Thread.sleep(200L);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        }
    }
}
