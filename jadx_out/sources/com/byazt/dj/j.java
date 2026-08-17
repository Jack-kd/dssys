package com.byazt.dj;

import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 1136, 38})
/* loaded from: classes2.dex */
public class j implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    public final jx f19153l;
    public volatile boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f19152j = new Runnable() { // from class: com.byazt.dj.j.1
        @Override // java.lang.Runnable
        public void run() {
            j.this.jx = false;
        }
    };
    public long hp = hp();

    public j(jx jxVar) {
        this.f19153l = jxVar;
        com.byazt.bb.a.hp(2L);
        com.byazt.bb.w.hp().hp(4500L, this.f19152j);
        com.byazt.bb.w.hp().hp(5000L, this, 40, 5000L);
    }

    private boolean l() {
        File file = new File("/data/anr/traces.txt");
        return file.exists() && file.canRead();
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int i2;
        if (this.jx) {
            return;
        }
        if (l()) {
            i2 = 200;
            str = "/data/anr/traces.txt";
        } else {
            str = null;
            i2 = 100;
        }
        if (this.f19153l.hp(i2, str, 25)) {
            this.jx = true;
        }
    }

    private long hp() {
        File file = new File("/data/anr/traces.txt");
        if (file.exists()) {
            return file.lastModified();
        }
        return 0L;
    }
}
