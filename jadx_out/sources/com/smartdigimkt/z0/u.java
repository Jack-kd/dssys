package com.smartdigimkt.z0;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f45417a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public Map f45418b;

    public final synchronized Map a() {
        try {
            if (this.f45418b == null) {
                this.f45418b = Collections.unmodifiableMap(new HashMap(this.f45417a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f45418b;
    }
}
