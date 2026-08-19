package com.sigmob.sdk.base.utils;

import android.os.CountDownTimer;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.mraid.C1315g;

/* loaded from: classes4.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public static final String f36617a = "o";

    /* renamed from: b, reason: collision with root package name */
    private CountDownTimer f36618b;

    /* renamed from: c, reason: collision with root package name */
    private long f36619c;

    /* renamed from: d, reason: collision with root package name */
    private final long f36620d;

    /* renamed from: e, reason: collision with root package name */
    private final long f36621e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f36622f = false;

    /* renamed from: g, reason: collision with root package name */
    private a f36623g;

    public interface a {
        void onTimerFinished();
    }

    public o(long j2, long j3) {
        this.f36620d = j2;
        this.f36621e = j3;
        this.f36619c = j2;
    }

    public void b() {
        SigmobLogger.d(f36617a, "stop", new Object[0]);
        CountDownTimer countDownTimer = this.f36618b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f36619c = this.f36620d;
        this.f36622f = false;
    }

    public void c() {
        SigmobLogger.d(f36617a, C1244a.f35682j, new Object[0]);
        CountDownTimer countDownTimer = this.f36618b;
        if (countDownTimer == null || this.f36622f) {
            return;
        }
        countDownTimer.cancel();
        this.f36622f = true;
    }

    public void d() {
        SigmobLogger.d(f36617a, "resume", new Object[0]);
        if (this.f36622f) {
            a();
        }
    }

    public void e() {
        SigmobLogger.d(f36617a, C1315g.f37905b, new Object[0]);
        CountDownTimer countDownTimer = this.f36618b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f36618b = null;
        }
        this.f36623g = null;
    }

    public long f() {
        return this.f36619c;
    }

    public void a() {
        SigmobLogger.d(f36617a, "start", new Object[0]);
        CountDownTimer countDownTimer = this.f36618b;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f36618b = new CountDownTimer(this.f36619c, this.f36621e) { // from class: com.sigmob.sdk.base.utils.o.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                SigmobLogger.d(o.f36617a, "start#onFinish", new Object[0]);
                o.this.f36619c = 0L;
                if (o.this.f36623g == null) {
                    return;
                }
                o.this.f36623g.onTimerFinished();
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                SigmobLogger.d(o.f36617a, "start#onTick: remainingTime = " + Math.round(j2 / 1000.0f), new Object[0]);
                o.this.f36619c = j2;
            }
        }.start();
        this.f36622f = false;
    }

    public void a(a aVar) {
        this.f36623g = aVar;
    }
}
