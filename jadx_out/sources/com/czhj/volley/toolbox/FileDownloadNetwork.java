package com.czhj.volley.toolbox;

import android.os.SystemClock;
import com.czhj.volley.Cache;
import com.czhj.volley.Header;
import com.czhj.volley.Network;
import com.czhj.volley.Request;
import com.czhj.volley.RetryPolicy;
import com.czhj.volley.ServerError;
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
public class FileDownloadNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;

    /* renamed from: a, reason: collision with root package name */
    private static final int f29623a = 3000;

    /* renamed from: b, reason: collision with root package name */
    private static final int f29624b = 4096;

    /* renamed from: c, reason: collision with root package name */
    private final BaseHttpStack f29625c;
    protected final ByteArrayPool mPool;

    public FileDownloadNetwork(BaseHttpStack baseHttpStack) {
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

    public static void attemptRetryOnException(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [RetryCount %s]  [timeout=%s]", str, Integer.valueOf(retryPolicy.getCurrentRetryCount()), Integer.valueOf(timeoutMs)));
        } catch (VolleyError e2) {
            request.addMarker(String.format("%s-timeout-giveup [RetryCount %s] [timeout=%s]", str, Integer.valueOf(retryPolicy.getCurrentRetryCount()), Integer.valueOf(timeoutMs)));
            throw e2;
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:90:0x0149, code lost:
    
        throw new com.czhj.volley.ServerError(r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00db  */
    @Override // com.czhj.volley.Network
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.czhj.volley.NetworkResponse performRequest(com.czhj.volley.Request<?> r19) throws com.czhj.volley.VolleyError, java.io.IOException {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.volley.toolbox.FileDownloadNetwork.performRequest(com.czhj.volley.Request):com.czhj.volley.NetworkResponse");
    }

    public FileDownloadNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f29625c = baseHttpStack;
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

    private byte[] a(InputStream inputStream, int i2) throws IOException, ServerError {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i2);
        try {
            if (inputStream == null) {
                throw new ServerError();
            }
            byte[] buf = this.mPool.getBuf(1024);
            while (true) {
                int i3 = inputStream.read(buf);
                if (i3 == -1) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, i3);
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            this.mPool.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(null);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }
}
