package com.czhj.volley;

import android.os.Process;
import com.czhj.volley.Cache;
import com.czhj.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public class CacheDispatcher extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private static final boolean f29566a = VolleyLog.DEBUG;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f29567b;

    /* renamed from: c, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f29568c;

    /* renamed from: d, reason: collision with root package name */
    private final Cache f29569d;

    /* renamed from: e, reason: collision with root package name */
    private final ResponseDelivery f29570e;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f29572g = false;

    /* renamed from: f, reason: collision with root package name */
    private final WaitingRequestManager f29571f = new WaitingRequestManager(this);

    public static class WaitingRequestManager implements Request.NetworkRequestCompleteListener {

        /* renamed from: a, reason: collision with root package name */
        private final Map<String, List<Request<?>>> f29575a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        private final CacheDispatcher f29576b;

        public WaitingRequestManager(CacheDispatcher cacheDispatcher) {
            this.f29576b = cacheDispatcher;
        }

        @Override // com.czhj.volley.Request.NetworkRequestCompleteListener
        public synchronized void onNoUsableResponseReceived(Request<?> request) {
            try {
                String cacheKey = request.getCacheKey();
                List<Request<?>> listRemove = this.f29575a.remove(cacheKey);
                if (listRemove != null && !listRemove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), cacheKey);
                    }
                    Request<?> requestRemove = listRemove.remove(0);
                    this.f29575a.put(cacheKey, listRemove);
                    requestRemove.setNetworkRequestCompleteListener(this);
                    try {
                        this.f29576b.f29568c.put(requestRemove);
                    } catch (InterruptedException e2) {
                        VolleyLog.e("Couldn't add request to queue. %s", e2.toString());
                        Thread.currentThread().interrupt();
                        this.f29576b.quit();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // com.czhj.volley.Request.NetworkRequestCompleteListener
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> listRemove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                listRemove = this.f29575a.remove(cacheKey);
            }
            if (listRemove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), cacheKey);
                }
                Iterator<Request<?>> it = listRemove.iterator();
                while (it.hasNext()) {
                    this.f29576b.f29570e.postResponse(it.next(), response);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean a(Request<?> request) {
            try {
                String cacheKey = request.getCacheKey();
                if (!this.f29575a.containsKey(cacheKey)) {
                    this.f29575a.put(cacheKey, null);
                    request.setNetworkRequestCompleteListener(this);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.d("new request, sending to network %s", cacheKey);
                    }
                    return false;
                }
                List<Request<?>> arrayList = this.f29575a.get(cacheKey);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                request.addMarker("waiting-for-response");
                arrayList.add(request);
                this.f29575a.put(cacheKey, arrayList);
                if (VolleyLog.DEBUG) {
                    VolleyLog.d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f29567b = blockingQueue;
        this.f29568c = blockingQueue2;
        this.f29569d = cache;
        this.f29570e = responseDelivery;
    }

    public void processRequest(final Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        if (request.isCanceled()) {
            request.finish("cache-discard-canceled");
            return;
        }
        Cache.Entry entry = this.f29569d.get(request.getCacheKey());
        if (entry == null) {
            request.addMarker("cache-miss");
            if (this.f29571f.a(request)) {
                return;
            }
            this.f29568c.put(request);
            return;
        }
        if (entry.isExpired()) {
            request.addMarker("cache-hit-expired");
            request.setCacheEntry(entry);
            if (this.f29571f.a(request)) {
                return;
            }
            this.f29568c.put(request);
            return;
        }
        request.addMarker("cache-hit");
        Response<?> networkResponse = request.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
        request.addMarker("cache-hit-parsed");
        if (!entry.refreshNeeded()) {
            this.f29570e.postResponse(request, networkResponse);
            return;
        }
        request.addMarker("cache-hit-refresh-needed");
        request.setCacheEntry(entry);
        networkResponse.intermediate = true;
        if (this.f29571f.a(request)) {
            this.f29570e.postResponse(request, networkResponse);
        } else {
            this.f29570e.postResponse(request, networkResponse, new Runnable() { // from class: com.czhj.volley.CacheDispatcher.1
                @Override // java.lang.Runnable
                public void run() throws InterruptedException {
                    try {
                        CacheDispatcher.this.f29568c.put(request);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            });
        }
    }

    public void quit() {
        this.f29572g = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws SecurityException, IllegalArgumentException {
        if (f29566a) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f29569d.initialize();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f29572g) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private void a() throws InterruptedException {
        processRequest(this.f29567b.take());
    }
}
