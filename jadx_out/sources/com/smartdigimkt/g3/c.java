package com.smartdigimkt.g3;

import android.content.Context;

/* loaded from: classes5.dex */
public final class c extends a {

    /* renamed from: f, reason: collision with root package name */
    public static volatile c f40372f;

    public c(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.g3.a
    public final int a() {
        return 1;
    }

    public static c a(Context context) {
        if (f40372f == null) {
            synchronized (c.class) {
                try {
                    if (f40372f == null) {
                        f40372f = new c(context);
                    }
                } finally {
                }
            }
        }
        return f40372f;
    }
}
