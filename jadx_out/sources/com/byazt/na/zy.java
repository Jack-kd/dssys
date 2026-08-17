package com.byazt.na;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

@com.byazt.kj.hp(hp = {0, 1, 2, 302})
/* loaded from: classes3.dex */
public class zy<T> {
    public static Executor hp = com.byazt.uid.l.l(new com.byazt.uid.s("ie/LottieTask"));

    /* renamed from: j, reason: collision with root package name */
    public final Handler f23521j;
    public final Set<e<Throwable>> jx;

    /* renamed from: l, reason: collision with root package name */
    public final Set<e<T>> f23522l;

    /* renamed from: w, reason: collision with root package name */
    public volatile jl<T> f23523w;

    @com.byazt.kj.hp(hp = {0, 1, 2, 312})
    public class hp extends FutureTask<jl<T>> {
        public hp(Callable<jl<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            if (isCancelled()) {
                return;
            }
            try {
                zy.this.setResult(get());
            } catch (InterruptedException | ExecutionException e2) {
                zy.this.setResult(new jl(e2));
            }
        }
    }

    public zy(Callable<jl<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(jl<T> jlVar) {
        if (this.f23523w != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f23523w = jlVar;
        hp();
    }

    public synchronized zy<T> j(e<Throwable> eVar) {
        this.jx.remove(eVar);
        return this;
    }

    public synchronized zy<T> jx(e<Throwable> eVar) {
        try {
            jl<T> jlVar = this.f23523w;
            if (jlVar != null && jlVar.l() != null) {
                eVar.hp(jlVar.l());
            }
            this.jx.add(eVar);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized zy<T> l(e<T> eVar) {
        this.f23522l.remove(eVar);
        return this;
    }

    public zy(Callable<jl<T>> callable, boolean z2) {
        this.f23522l = new LinkedHashSet(1);
        this.jx = new LinkedHashSet(1);
        this.f23521j = new Handler(Looper.getMainLooper());
        this.f23523w = null;
        if (!z2) {
            hp.execute(new hp(callable));
            return;
        }
        try {
            setResult(callable.call());
        } catch (Throwable th) {
            setResult(new jl<>(th));
        }
    }

    public synchronized zy<T> hp(e<T> eVar) {
        try {
            jl<T> jlVar = this.f23523w;
            if (jlVar != null && jlVar.hp() != null) {
                eVar.hp(jlVar.hp());
            }
            this.f23522l.add(eVar);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    private void hp() {
        this.f23521j.post(new Runnable() { // from class: com.byazt.na.zy.1
            @Override // java.lang.Runnable
            public void run() {
                jl jlVar = zy.this.f23523w;
                if (jlVar == null) {
                    return;
                }
                if (jlVar.hp() != null) {
                    zy.this.hp((zy) jlVar.hp());
                } else {
                    zy.this.hp(jlVar.l());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(T t2) {
        ArrayList arrayList = new ArrayList(this.f23522l);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((e) obj).hp(t2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp(Throwable th) {
        ArrayList arrayList = new ArrayList(this.jx);
        if (arrayList.isEmpty()) {
            com.byazt.ze.a.hp("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((e) obj).hp(th);
        }
    }
}
