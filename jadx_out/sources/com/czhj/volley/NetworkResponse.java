package com.czhj.volley;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class NetworkResponse {
    public final List<Header> allHeaders;
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    private NetworkResponse(int i2, byte[] bArr, Map<String, String> map, List<Header> list, boolean z2, long j2) {
        this.statusCode = i2;
        this.data = bArr;
        this.headers = map;
        this.allHeaders = list == null ? null : Collections.unmodifiableList(list);
        this.notModified = z2;
        this.networkTimeMs = j2;
    }

    private static List<Header> a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    @Deprecated
    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z2) {
        this(i2, bArr, map, z2, 0L);
    }

    private static Map<String, String> a(List<Header> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z2, long j2) {
        this(i2, bArr, map, a(map), z2, j2);
    }

    public NetworkResponse(int i2, byte[] bArr, boolean z2, long j2, List<Header> list) {
        this(i2, bArr, a(list), list, z2, j2);
    }

    public NetworkResponse(byte[] bArr) {
        this(200, bArr, false, 0L, (List<Header>) Collections.EMPTY_LIST);
    }

    @Deprecated
    public NetworkResponse(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
