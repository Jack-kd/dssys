package com.czhj.volley.toolbox;

import android.os.SystemClock;
import com.czhj.volley.Cache;
import com.czhj.volley.Header;
import com.czhj.volley.Network;
import com.czhj.volley.Request;
import com.czhj.volley.RetryPolicy;
import com.czhj.volley.VolleyError;
import com.czhj.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;

    /* renamed from: a, reason: collision with root package name */
    private static final int f29616a = 3000;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29617b = 4096;

    /* renamed from: c, reason: collision with root package name */
    private final BaseHttpStack f29618c;
    protected final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    private static List<Header> a(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : entry.allResponseHeaders) {
                    if (!treeSet.contains(header.getName())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    public static Map<String, String> convertHeaders(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i2 = 0; i2 < list.size(); i2++) {
            Header header = list.get(i2);
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    public void logError(String str, String str2, long j2) {
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j2), str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0178 A[Catch: all -> 0x016a, TRY_ENTER, TryCatch #4 {all -> 0x016a, blocks: (B:4:0x0010, B:100:0x0178, B:102:0x018f, B:115:0x01b3, B:117:0x01b9, B:118:0x01be, B:119:0x01c2, B:120:0x01c7, B:124:0x01d0, B:126:0x01d6, B:127:0x01dc, B:128:0x01e1, B:130:0x01e4, B:132:0x01ea, B:133:0x01f0, B:134:0x01f5, B:135:0x01f6, B:136:0x01fb, B:137:0x01fc, B:138:0x0207, B:139:0x020d, B:146:0x0230, B:147:0x0235, B:148:0x0236, B:149:0x0250, B:150:0x0251), top: B:175:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0230 A[SYNTHETIC] */
    @Override // com.czhj.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.czhj.volley.NetworkResponse performRequest(com.czhj.volley.Request<?> r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.volley.toolbox.BasicNetwork.performRequest(com.czhj.volley.Request):com.czhj.volley.NetworkResponse");
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f29618c = baseHttpStack;
        this.mPool = byteArrayPool;
    }

    private Map<String, String> a(Cache.Entry entry) {
        if (entry == null) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap();
        String str = entry.etag;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j2 = entry.lastModified;
        if (j2 > 0) {
            map.put("If-Modified-Since", HttpHeaderParser.a(j2));
        }
        return map;
    }

    private void a(long j2, Request<?> request, byte[] bArr, int i2) {
        if (DEBUG || j2 > 3000) {
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(j2), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i2), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
        }
    }

    private static void a(String str, Request<?> request) {
        request.addMarker(String.format("%s-Redirect [timeout=%s]", str, Integer.valueOf(request.getTimeoutMs())));
    }

    private static void a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e2) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e2;
        }
    }

    private byte[] a(InputStream inputStream, int i2) throws IOException {
        byte[] byteArray;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i2);
        int i3 = 1024;
        if (i2 > 0 && i2 < 1024) {
            i3 = i2;
        }
        byte[] buf = null;
        try {
            buf = this.mPool.getBuf(i3);
            long j2 = 0;
            while (true) {
                int i4 = inputStream.read(buf, 0, i3);
                if (i4 == -1 || (i2 >= 1 && j2 >= i2)) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, i4);
                j2 += i4;
            }
            byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            this.mPool.returnBuf(buf);
        } catch (Throwable th) {
            try {
                VolleyLog.e("readError", th.getMessage());
                byteArray = poolingByteArrayOutputStream.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(buf);
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                throw th2;
            }
        }
        poolingByteArrayOutputStream.close();
        return byteArray;
    }
}
