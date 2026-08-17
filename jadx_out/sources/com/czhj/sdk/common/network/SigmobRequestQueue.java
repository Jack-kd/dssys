package com.czhj.sdk.common.network;

import android.os.Handler;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.volley.ExecutorsDelivery;
import com.czhj.volley.Network;
import com.czhj.volley.Request;
import com.czhj.volley.RequestQueue;
import com.czhj.volley.ResponseDelivery;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class SigmobRequestQueue extends RequestQueue {

    /* renamed from: a, reason: collision with root package name */
    private static final int f29399a = 10;

    /* renamed from: b, reason: collision with root package name */
    private final Map<Request<?>, DelayedRequestHelper> f29400b;

    public class DelayedRequestHelper {

        /* renamed from: a, reason: collision with root package name */
        final int f29406a;

        /* renamed from: b, reason: collision with root package name */
        final Handler f29407b;

        /* renamed from: c, reason: collision with root package name */
        final Runnable f29408c;

        public DelayedRequestHelper(SigmobRequestQueue sigmobRequestQueue, Request<?> request, int i2) {
            this(request, i2, new Handler());
        }

        public void a() {
            this.f29407b.postDelayed(this.f29408c, this.f29406a);
        }

        public void b() {
            this.f29407b.removeCallbacks(this.f29408c);
        }

        public DelayedRequestHelper(final Request<?> request, int i2, Handler handler) {
            this.f29406a = i2;
            this.f29407b = handler;
            this.f29408c = new Runnable() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.DelayedRequestHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    SigmobRequestQueue.this.f29400b.remove(request);
                    SigmobRequestQueue.this.add(request);
                }
            };
        }
    }

    public SigmobRequestQueue(Network network) {
        super(network);
        this.f29400b = new HashMap(10);
    }

    private void b(final Request<?> request) {
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.3
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request2) {
                return request == request2;
            }
        });
    }

    @Deprecated
    public Map<Request<?>, DelayedRequestHelper> a() {
        return this.f29400b;
    }

    public void addDelayedRequest(Request<?> request, int i2) {
        a(request, new DelayedRequestHelper(this, request, i2));
    }

    public void cancelAll() {
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.1
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return true;
            }
        });
    }

    public SigmobRequestQueue(Network network, int i2, int i3) {
        this(network, i2, i3, new ExecutorsDelivery(ThreadPoolFactory.getFixIOExecutor()));
    }

    @Override // com.czhj.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, DelayedRequestHelper>> it = this.f29400b.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, DelayedRequestHelper> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().b();
                it.remove();
            }
        }
    }

    public SigmobRequestQueue(Network network, int i2, int i3, ResponseDelivery responseDelivery) {
        super(network, i2, i3, responseDelivery);
        this.f29400b = new HashMap(10);
    }

    private void a(Request<?> request, DelayedRequestHelper delayedRequestHelper) {
        if (this.f29400b.containsKey(request)) {
            b(request);
        }
        delayedRequestHelper.a();
        this.f29400b.put(request, delayedRequestHelper);
    }

    @Override // com.czhj.volley.RequestQueue
    public void cancelAll(final Object obj) {
        super.cancelAll(obj);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.2
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }
}
