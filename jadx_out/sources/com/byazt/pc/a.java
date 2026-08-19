package com.byazt.pc;

import com.byazt.dnb.s;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 1176, 54})
/* loaded from: classes3.dex */
public class a<T> implements w<T> {
    public final w<T> hp;

    public a(w<T> wVar) {
        this.hp = wVar;
    }

    @Override // com.byazt.pc.w
    public void hp(final T t2, final boolean z2, final mp mpVar) {
        s.hp(new Runnable() { // from class: com.byazt.pc.a.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.hp != null) {
                    a.this.hp.hp(t2, z2, mpVar);
                }
            }
        });
    }

    @Override // com.byazt.pc.w
    public void hp(final T t2) {
        s.hp(new Runnable() { // from class: com.byazt.pc.a.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.hp != null) {
                    a.this.hp.hp(t2);
                }
            }
        });
    }

    @Override // com.byazt.pc.w
    public void hp(final int i2, final String str) {
        s.hp(new Runnable() { // from class: com.byazt.pc.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.hp != null) {
                    a.this.hp.hp(i2, str);
                }
            }
        });
    }
}
