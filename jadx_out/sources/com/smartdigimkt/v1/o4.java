package com.smartdigimkt.v1;

import android.os.SystemClock;
import com.smartdigimkt.sdk.basead.ui.PlayerView;

/* loaded from: classes5.dex */
public final class o4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerView f44567a;

    public o4(PlayerView playerView) {
        this.f44567a = playerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PlayerView playerView;
        l4 l4Var;
        while (true) {
            PlayerView playerView2 = this.f44567a;
            if (!playerView2.f43534G) {
                return;
            }
            if (playerView2.f43701l || !playerView2.isPlaying() || (l4Var = (playerView = this.f44567a).f43538K) == null) {
                PlayerView playerView3 = this.f44567a;
                if (playerView3.f43551a0 == 0) {
                    playerView3.f43551a0 = SystemClock.elapsedRealtime();
                }
                try {
                    Thread.sleep(10L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                PlayerView playerView4 = this.f44567a;
                long j2 = playerView4.f43551a0;
                if (jElapsedRealtime - j2 > 5000 && j2 != 0) {
                    if (playerView4.f43704o != null) {
                        com.smartdigimkt.b4.e.a().a(new n4(this));
                    }
                    this.f44567a.a();
                }
            } else {
                playerView.f43551a0 = 0L;
                try {
                    l4Var.sendEmptyMessage((int) playerView.f43555t.f40899b.f());
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
