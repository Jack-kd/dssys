package com.anythink.core.common.n.a;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private int f5994a;

    public j() {
        this((byte) 0);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<K, V> entry) {
        return size() > this.f5994a;
    }

    private j(byte b3) {
        super(256, 1.0f, true);
        this.f5994a = 256;
    }
}
