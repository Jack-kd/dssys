package com.smartdigimkt.w3;

import java.util.HashMap;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static volatile d f44939b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f44940a = new HashMap();

    public static d a() {
        if (f44939b == null) {
            synchronized (d.class) {
                try {
                    if (f44939b == null) {
                        f44939b = new d();
                    }
                } finally {
                }
            }
        }
        return f44939b;
    }
}
