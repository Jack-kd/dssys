package com.byazt.qk;

import com.byazt.xci.mp;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Queue;

@com.byazt.kj.hp(hp = {0, 1, 64, 19})
/* loaded from: classes3.dex */
public class jl implements gu {
    public WeakReference<gu> hp;

    /* renamed from: l, reason: collision with root package name */
    public Queue<Runnable> f24851l = new LinkedList();

    @Override // com.byazt.qk.gu
    public void a() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.11
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).a();
                }
            });
        } else {
            this.hp.get().a();
        }
    }

    @Override // com.byazt.qk.gu
    public void e() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.16
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).e();
                }
            });
        } else {
            this.hp.get().e();
        }
    }

    @Override // com.byazt.qk.gu
    public void eb() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.12
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).eb();
                }
            });
        } else {
            this.hp.get().eb();
        }
    }

    public gu gu() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // com.byazt.qk.gu
    public void j() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.2
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).j();
                }
            });
        } else {
            this.hp.get().j();
        }
    }

    @Override // com.byazt.qk.gu
    public int jx() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.hp.get().jx();
    }

    @Override // com.byazt.qk.gu
    public int l() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.hp.get().l();
    }

    @Override // com.byazt.qk.gu
    public void q() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.15
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).q();
                }
            });
        } else {
            this.hp.get().q();
        }
    }

    @Override // com.byazt.qk.gu
    public void s() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.14
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).s();
                }
            });
        } else {
            this.hp.get().s();
        }
    }

    @Override // com.byazt.qk.gu
    public void setPauseFromExpressView(final boolean z2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.6
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).setPauseFromExpressView(z2);
                }
            });
        } else {
            this.hp.get().setPauseFromExpressView(z2);
        }
    }

    @Override // com.byazt.qk.gu
    public void w(final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.17
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).w(i2);
                }
            });
        } else {
            this.hp.get().w(i2);
        }
    }

    public void hp(gu guVar) {
        this.hp = new WeakReference<>(guVar);
        while (!this.f24851l.isEmpty()) {
            try {
                Runnable runnablePoll = this.f24851l.poll();
                if (runnablePoll != null) {
                    runnablePoll.run();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.byazt.qk.gu
    public void jx(final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().jx(i2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.8
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).jx(i2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void l(final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().l(i2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.3
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).l(i2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void j(final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().j(i2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.9
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).j(i2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void w() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().w();
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.4
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).w();
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(final boolean z2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(z2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.1
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(z2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(i2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.13
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(i2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public long hp() {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference == null || weakReference.get() == null) {
            return 0L;
        }
        return this.hp.get().hp();
    }

    @Override // com.byazt.qk.gu
    public void hp(final float f2, final float f3, final float f4, final float f5, final int i2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(f2, f3, f4, f5, i2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.18
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(f2, f3, f4, f5, i2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(final int i2, final String str) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(i2, str);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.5
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(i2, str);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(final float f2) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(f2);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.7
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(f2);
                }
            });
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(final mp mpVar) {
        WeakReference<gu> weakReference = this.hp;
        if (weakReference != null && weakReference.get() != null) {
            this.hp.get().hp(mpVar);
        } else {
            this.f24851l.add(new Runnable() { // from class: com.byazt.qk.jl.10
                @Override // java.lang.Runnable
                public void run() {
                    if (jl.this.hp == null || jl.this.hp.get() == null) {
                        return;
                    }
                    ((gu) jl.this.hp.get()).hp(mpVar);
                }
            });
        }
    }
}
