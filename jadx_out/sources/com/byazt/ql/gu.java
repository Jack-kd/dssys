package com.byazt.ql;

import android.text.TextUtils;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 1306, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements eb {

    /* renamed from: a, reason: collision with root package name */
    public float f24912a;
    public jl eb;
    public AtomicInteger hp;

    /* renamed from: j, reason: collision with root package name */
    public AtomicInteger f24913j;
    public AtomicInteger jx;

    /* renamed from: l, reason: collision with root package name */
    public AtomicInteger f24914l;

    /* renamed from: q, reason: collision with root package name */
    public ec f24915q;

    /* renamed from: s, reason: collision with root package name */
    public ns f24916s;

    /* renamed from: w, reason: collision with root package name */
    public AtomicInteger f24917w;

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if ((TextUtils.equals(str, "src") || TextUtils.equals(str, "backgroundImage")) && str2.startsWith("http")) {
            this.f24914l.incrementAndGet();
        }
    }

    public boolean jx() {
        return this.hp.get() > 0;
    }

    public int l() {
        int i2 = (int) (this.f24912a * this.f24914l.get());
        this.hp.set(i2);
        return i2;
    }

    @Override // com.byazt.ql.eb
    public void l(com.byazt.xs.jx jxVar, String str) {
        int iIncrementAndGet = this.f24917w.incrementAndGet();
        if (iIncrementAndGet > this.f24914l.get() - this.hp.get()) {
            synchronized (this) {
                try {
                    if (iIncrementAndGet > this.f24914l.get() - this.hp.get() && this.f24915q != null) {
                        n nVar = new n();
                        nVar.hp(-3);
                        nVar.hp("image download fail");
                        nVar.hp(jxVar.l(jxVar));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void hp(ec ecVar) {
        this.f24915q = ecVar;
    }

    public void hp(ns nsVar) {
        this.f24916s = nsVar;
    }

    @Override // com.byazt.ql.eb
    public void hp() {
        this.f24913j.incrementAndGet();
        if (this.f24913j.get() == 1) {
            synchronized (this) {
                this.f24913j.get();
            }
        }
    }

    @Override // com.byazt.ql.eb
    public void hp(com.byazt.xs.jx jxVar, String str) {
        if (this.jx.incrementAndGet() == this.hp.get()) {
            synchronized (this) {
                try {
                    if (this.jx.get() == this.hp.get()) {
                        if (this.eb != null) {
                            this.f24914l.get();
                        }
                        if (this.f24915q != null) {
                            n nVar = new n();
                            nVar.hp(0);
                            nVar.hp(jxVar.l(jxVar));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
