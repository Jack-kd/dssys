package com.smartdigimkt.g3;

import android.content.Context;

/* loaded from: classes5.dex */
public final class b extends a {

    /* renamed from: f, reason: collision with root package name */
    public static volatile b f40371f;

    public b(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.g3.a
    public final int a() {
        return 2;
    }

    public static a a(Context context) {
        if (f40371f == null) {
            synchronized (a.class) {
                try {
                    if (f40371f == null) {
                        f40371f = new b(context);
                    }
                } finally {
                }
            }
        }
        return f40371f;
    }
}
