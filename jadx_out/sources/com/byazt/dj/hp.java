package com.byazt.dj;

import android.os.FileObserver;
import android.os.SystemClock;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1136, 28})
/* loaded from: classes2.dex */
public class hp extends FileObserver {
    public final jx hp;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f19150l;

    @com.byazt.kj.hp(hp = {0, 1, 1136, 170})
    /* renamed from: com.byazt.dj.hp$hp, reason: collision with other inner class name */
    public final class C0209hp extends com.byazt.shx.jx {

        /* renamed from: l, reason: collision with root package name */
        public int f19151l;

        public C0209hp(int i2) {
            super("ANRFileObserver$RestartMonitorThread");
            this.f19151l = i2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SystemClock.sleep(this.f19151l);
            hp.this.jx = true;
        }
    }

    public hp(jx jxVar, String str, int i2) {
        super(str, i2);
        this.f19150l = 5000;
        this.jx = true;
        if (jxVar == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("params is not right path is null or ANRManager is null");
        }
        this.hp = jxVar;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i2, String str) {
        if (this.jx && i2 == 8 && !TextUtils.isEmpty(str) && str.contains("trace") && this.hp != null) {
            this.jx = false;
            this.hp.hp(200, "/data/anr/".concat(str), 80);
            new C0209hp(5000).start();
        }
    }
}
