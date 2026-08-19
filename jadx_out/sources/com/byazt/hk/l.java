package com.byazt.hk;

@com.byazt.kj.hp(hp = {0, 1, 227, 34})
/* loaded from: classes2.dex */
public abstract class l<T> {
    public volatile T hp;

    public abstract T hp(Object... objArr);

    public final T l(Object... objArr) {
        if (this.hp == null) {
            synchronized (this) {
                try {
                    if (this.hp == null) {
                        this.hp = hp(objArr);
                    }
                } finally {
                }
            }
        }
        return this.hp;
    }
}
