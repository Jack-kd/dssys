package com.beizi.fusion;

import android.content.Context;

/* loaded from: classes2.dex */
public abstract class x9 {

    /* renamed from: a, reason: collision with root package name */
    private volatile Object f17444a;

    public abstract Object a(Context context);

    public Object b(Context context) {
        if (this.f17444a == null) {
            synchronized (this) {
                try {
                    if (this.f17444a == null) {
                        this.f17444a = a(context);
                    }
                } finally {
                }
            }
        }
        return this.f17444a;
    }
}
