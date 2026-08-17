package org.eclipse.jetty.client;

/* loaded from: classes5.dex */
public abstract class e extends j {
    private final org.eclipse.jetty.http.g _responseFields;
    private volatile int _responseStatus;

    public e(boolean z2) {
        this._responseFields = z2 ? new org.eclipse.jetty.http.g() : null;
    }

    public synchronized org.eclipse.jetty.http.g getResponseFields() {
        if (getStatus() < 6) {
            throw new IllegalStateException("Headers not completely received yet");
        }
        return this._responseFields;
    }

    public synchronized int getResponseStatus() {
        if (getStatus() < 5) {
            throw new IllegalStateException("Response not received yet");
        }
        return this._responseStatus;
    }

    @Override // org.eclipse.jetty.client.j
    public synchronized void onResponseHeader(L1.d dVar, L1.d dVar2) {
        try {
            org.eclipse.jetty.http.g gVar = this._responseFields;
            if (gVar != null) {
                gVar.d(dVar, dVar2.C0());
            }
            super.onResponseHeader(dVar, dVar2);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.eclipse.jetty.client.j
    public synchronized void onResponseStatus(L1.d dVar, int i2, L1.d dVar2) {
        this._responseStatus = i2;
        super.onResponseStatus(dVar, i2, dVar2);
    }
}
