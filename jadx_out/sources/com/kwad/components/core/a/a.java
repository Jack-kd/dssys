package com.kwad.components.core.a;

import android.os.SystemClock;
import android.text.TextUtils;
import com.kwad.sdk.core.c.b;
import com.kwad.sdk.core.c.d;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.report.g;
import com.kwad.sdk.core.report.n;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public final class a {
    private String OQ;
    private String OR;
    private long OS;
    private long OT;
    private Timer OU;
    private boolean OV = false;
    private final long period;

    /* renamed from: com.kwad.components.core.a.a$a, reason: collision with other inner class name */
    public static final class C0517a {
        private static final a OX = new a();
    }

    public a() {
        this.OS = -1L;
        try {
            this.OS = SystemClock.elapsedRealtime();
        } catch (Throwable th) {
            this.OS = System.currentTimeMillis();
            c.printStackTraceOnly(th);
        }
        this.period = TimeUnit.MINUTES.toMillis(e.Jw());
        d dVar = new d() { // from class: com.kwad.components.core.a.a.1
            @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
            public final void onBackToBackground() {
                super.onBackToBackground();
                a.this.aA();
            }

            @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
            public final void onBackToForeground() {
                super.onBackToForeground();
                a.this.az();
            }
        };
        b.LW();
        b.a(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        this.OV = false;
        if (this.period <= 0) {
            return;
        }
        Timer timer = this.OU;
        if (timer != null) {
            timer.cancel();
        }
        aH(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aH(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - this.OS;
        this.OS = jElapsedRealtime;
        if (i2 == 1) {
            this.OT = 0L;
            this.OR = UUID.randomUUID().toString();
            if (TextUtils.isEmpty(this.OQ)) {
                this.OQ = this.OR;
            }
        }
        this.OT++;
        n nVar = new n(10220L);
        nVar.aRP = this.OT;
        if (j2 > 0) {
            nVar.aWy = j2;
        }
        nVar.aWz = i2;
        nVar.OQ = this.OQ;
        nVar.OR = this.OR;
        g.a(nVar);
    }

    public static a oE() {
        return C0517a.OX;
    }

    public final void az() {
        if (this.OV) {
            return;
        }
        this.OV = true;
        if (this.period <= 0) {
            return;
        }
        this.OU = new Timer();
        aH(1);
        TimerTask timerTask = new TimerTask() { // from class: com.kwad.components.core.a.a.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                a.this.aH(2);
            }
        };
        try {
            Timer timer = this.OU;
            long j2 = this.period;
            timer.schedule(timerTask, j2, j2);
        } catch (Throwable unused) {
        }
    }
}
