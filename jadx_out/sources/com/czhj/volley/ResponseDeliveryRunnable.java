package com.czhj.volley;

/* loaded from: classes3.dex */
class ResponseDeliveryRunnable implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final Request f29607a;

    /* renamed from: b, reason: collision with root package name */
    private final Response f29608b;

    /* renamed from: c, reason: collision with root package name */
    private final Runnable f29609c;

    public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
        this.f29607a = request;
        this.f29608b = response;
        this.f29609c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f29607a.isCanceled()) {
            this.f29607a.finish("canceled-at-delivery");
            return;
        }
        if (this.f29608b.isSuccess()) {
            this.f29607a.deliverResponse(this.f29608b.result);
        } else {
            this.f29607a.deliverError(this.f29608b.error);
        }
        if (this.f29608b.intermediate) {
            this.f29607a.addMarker("intermediate-response");
        } else {
            this.f29607a.finish("done");
        }
        Runnable runnable = this.f29609c;
        if (runnable != null) {
            runnable.run();
        }
    }
}
