package com.smartdigimkt.k;

import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes5.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f41146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f41147b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f41148c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o f41149d;

    public i(o oVar, String str, r rVar, com.smartdigimkt.j.p pVar) {
        this.f41149d = oVar;
        this.f41146a = str;
        this.f41147b = rVar;
        this.f41148c = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f41146a).openConnection();
            httpURLConnection.setRequestMethod(com.sigmob.sdk.downloader.core.c.f37362a);
            int contentLength = httpURLConnection.getContentLength();
            this.f41147b.f41185h = contentLength;
            String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37370i);
            if (headerField == null || !headerField.equals("bytes")) {
                this.f41147b.f41203z = false;
            } else {
                this.f41147b.f41203z = true;
            }
            this.f41149d.a(this.f41146a, contentLength, this.f41147b.b());
        } catch (Throwable th) {
            th.getMessage();
        }
        this.f41148c.onCallback(this.f41147b);
    }
}
