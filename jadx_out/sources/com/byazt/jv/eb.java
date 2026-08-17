package com.byazt.jv;

import com.byazt.uid.q;

@com.byazt.kj.hp(hp = {0, 1, 303, 94})
/* loaded from: classes.dex */
public final class eb extends Thread {
    public volatile Thread hp;
    public final Thread jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f21700l;

    public eb(Thread thread) {
        this.jx = thread;
    }

    @Override // java.lang.Thread
    public void interrupt() {
        if (this.hp != null) {
            this.hp.interrupt();
        }
    }

    @Override // java.lang.Thread
    public boolean isInterrupted() {
        if (this.hp != null) {
            return this.hp.isInterrupted();
        }
        return true;
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        if (this.f21700l) {
            return;
        }
        this.f21700l = true;
        q.f26242l.e().execute(new com.byazt.wsy.jx(new Runnable() { // from class: com.byazt.jv.eb.1
            @Override // java.lang.Runnable
            public void run() {
                if (q.f26242l.v()) {
                    eb.this.hp();
                } else {
                    eb.this.l();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        try {
            l lVarJx = q.f26242l.jx();
            String name2 = this.jx.getName();
            if (lVarJx != null) {
                name2 = lVarJx.hp(name2);
            }
            threadCurrentThread.setName(name2);
            this.hp = threadCurrentThread;
            threadCurrentThread.setPriority(this.jx.getPriority());
            this.jx.run();
            threadCurrentThread.setName(name);
        } catch (Throwable th) {
            threadCurrentThread.setName(name);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        Thread threadCurrentThread = Thread.currentThread();
        this.hp = threadCurrentThread;
        threadCurrentThread.setPriority(this.jx.getPriority());
        this.jx.run();
    }
}
