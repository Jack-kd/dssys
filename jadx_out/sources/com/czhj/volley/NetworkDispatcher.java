package com.czhj.volley;

import android.net.TrafficStats;
import android.os.SystemClock;

/* loaded from: classes3.dex */
public class NetworkDispatcher implements Comparable, Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final Network f29589a;

    /* renamed from: b, reason: collision with root package name */
    private final ResponseDelivery f29590b;

    /* renamed from: c, reason: collision with root package name */
    private final Request f29591c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f29592d = false;

    public NetworkDispatcher(Network network, Request request, ResponseDelivery responseDelivery) {
        this.f29591c = request;
        this.f29589a = network;
        this.f29590b = responseDelivery;
    }

    private void a(Request<?> request) {
        TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return (obj == null && hashCode() == obj.hashCode()) ? 0 : 1;
    }

    public void processRequest(Request<?> request) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            request.addMarker("network-queue-take");
            if (request.isCanceled()) {
                request.finish("network-discard-cancelled");
            } else {
                a(request);
                NetworkResponse networkResponsePerformRequest = this.f29589a.performRequest(request);
                request.addMarker("network-http-complete");
                if (!networkResponsePerformRequest.notModified || !request.hasHadResponseDelivered()) {
                    Response<?> networkResponse = request.parseNetworkResponse(networkResponsePerformRequest);
                    request.addMarker("network-parse-complete");
                    request.markDelivered();
                    this.f29590b.postResponse(request, networkResponse);
                    request.notifyListenerResponseReceived(networkResponse);
                    return;
                }
                request.finish("not-modified");
            }
            request.notifyListenerResponseNotUsable();
        } catch (VolleyError e2) {
            e2.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            a(request, e2);
            request.notifyListenerResponseNotUsable();
        } catch (Throwable th) {
            VolleyLog.e(th, "Unhandled exception %s", th.toString());
            VolleyError volleyError = new VolleyError(th);
            volleyError.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.f29590b.postError(request, volleyError);
            request.notifyListenerResponseNotUsable();
        }
    }

    public void quit() {
        this.f29592d = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        processRequest(this.f29591c);
    }

    private void a(Request<?> request, VolleyError volleyError) {
        this.f29590b.postError(request, request.parseNetworkError(volleyError));
    }
}
