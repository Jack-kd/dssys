package com.czhj.volley;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class RequestQueue {

    /* renamed from: a, reason: collision with root package name */
    private static final int f29596a = 4;

    /* renamed from: b, reason: collision with root package name */
    private final AtomicInteger f29597b;

    /* renamed from: c, reason: collision with root package name */
    private final Set<Request<?>> f29598c;

    /* renamed from: d, reason: collision with root package name */
    private CustomLinkedBlockingQueue f29599d;

    /* renamed from: e, reason: collision with root package name */
    private final Network f29600e;

    /* renamed from: f, reason: collision with root package name */
    private final ResponseDelivery f29601f;

    /* renamed from: g, reason: collision with root package name */
    private final List<RequestFinishedListener> f29602g;

    /* renamed from: h, reason: collision with root package name */
    private ThreadPoolExecutor f29603h;

    public static class CustomLinkedBlockingQueue extends LinkedBlockingQueue<Runnable> {

        /* renamed from: a, reason: collision with root package name */
        private ThreadPoolExecutor f29606a;

        public void setExecutor(ThreadPoolExecutor threadPoolExecutor) {
            this.f29606a = threadPoolExecutor;
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(Runnable runnable) {
            ThreadPoolExecutor threadPoolExecutor = this.f29606a;
            if (threadPoolExecutor == null || threadPoolExecutor.getActiveCount() < this.f29606a.getPoolSize() || this.f29606a.getPoolSize() >= this.f29606a.getMaximumPoolSize()) {
                return super.offer((CustomLinkedBlockingQueue) runnable);
            }
            return false;
        }
    }

    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    public RequestQueue(Network network) {
        this(network, 4, Integer.MAX_VALUE);
    }

    public <T> void a(Request<T> request) {
        synchronized (this.f29598c) {
            this.f29598c.remove(request);
        }
        synchronized (this.f29602g) {
            try {
                Iterator<RequestFinishedListener> it = this.f29602g.iterator();
                while (it.hasNext()) {
                    it.next().onRequestFinished(request);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        if (request == null || TextUtils.isEmpty(request.getUrl())) {
            return null;
        }
        try {
            this.f29603h.submit(new NetworkDispatcher(this.f29600e, request, this.f29601f));
            return request;
        } catch (Exception e2) {
            VolleyLog.e(e2, "add request error", new Object[0]);
            return request;
        }
    }

    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f29602g) {
            this.f29602g.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f29598c) {
            try {
                for (Request<?> request : this.f29598c) {
                    if (requestFilter.apply(request)) {
                        request.cancel();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getSequenceNumber() {
        return this.f29597b.incrementAndGet();
    }

    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f29602g) {
            this.f29602g.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
    }

    public void stop() {
    }

    public RequestQueue(Network network, int i2, int i3) {
        this(network, i2, i3, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public void cancelAll(final Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        cancelAll(new RequestFilter() { // from class: com.czhj.volley.RequestQueue.1
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }

    public RequestQueue(Network network, int i2, int i3, ResponseDelivery responseDelivery) {
        this.f29597b = new AtomicInteger();
        this.f29598c = new HashSet();
        this.f29599d = new CustomLinkedBlockingQueue();
        this.f29602g = new ArrayList();
        this.f29603h = null;
        this.f29600e = network;
        this.f29601f = responseDelivery;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i3, 60L, TimeUnit.SECONDS, this.f29599d, new VolleyThreadFactory());
        this.f29603h = threadPoolExecutor;
        this.f29599d.setExecutor(threadPoolExecutor);
    }
}
