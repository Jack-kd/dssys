package com.byazt.oa;

import com.bytedance.component.sdk.annotation.CallSuper;

@com.byazt.kj.hp(hp = {0, 1, 149, 38})
/* loaded from: classes3.dex */
public abstract class j<P, R> extends com.byazt.oa.l<P, R> {
    public boolean hp = true;
    public a jx;

    /* renamed from: l, reason: collision with root package name */
    public hp f23904l;

    public interface hp {
        void hp(Object obj);

        void hp(Throwable th);
    }

    public interface l {
        j hp();
    }

    private boolean eb() {
        if (this.hp) {
            return true;
        }
        q.hp(new IllegalStateException("Jsb async call already finished: " + hp() + ", hashcode: " + hashCode()));
        return false;
    }

    public void a() {
        j();
        w();
    }

    @Override // com.byazt.oa.l
    public /* bridge */ /* synthetic */ String hp() {
        return super.hp();
    }

    public abstract void hp(P p2, a aVar) throws Exception;

    public abstract void j();

    public final void jx() {
        hp((Throwable) null);
    }

    @CallSuper
    public void w() {
        this.hp = false;
        this.jx = null;
    }

    public final void hp(R r2) {
        if (eb()) {
            this.f23904l.hp(r2);
            w();
        }
    }

    public final void hp(Throwable th) {
        if (eb()) {
            this.f23904l.hp(th);
            w();
        }
    }

    public void hp(P p2, a aVar, hp hpVar) throws Exception {
        this.jx = aVar;
        this.f23904l = hpVar;
        hp(p2, aVar);
    }
}
