package com.kwad.sdk.utils;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class LruHashMap<K, V> extends LinkedHashMap<K, V> {
    private static final float DEFAULT_LOAD_FACTOR = 0.75f;
    private final long maxSize;

    public LruHashMap(long j2) {
        super(((int) Math.ceil(j2 / DEFAULT_LOAD_FACTOR)) + 1, DEFAULT_LOAD_FACTOR, true);
        this.maxSize = j2;
    }

    public long getMaxSize() {
        return this.maxSize;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, V> entry) {
        return ((long) size()) > this.maxSize;
    }
}
