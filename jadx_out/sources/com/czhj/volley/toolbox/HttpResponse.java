package com.czhj.volley.toolbox;

import com.czhj.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class HttpResponse {

    /* renamed from: a, reason: collision with root package name */
    private final int f29645a;

    /* renamed from: b, reason: collision with root package name */
    private final List<Header> f29646b;

    /* renamed from: c, reason: collision with root package name */
    private final int f29647c;

    /* renamed from: d, reason: collision with root package name */
    private final InputStream f29648d;

    public HttpResponse(int i2, List<Header> list) {
        this(i2, list, -1, null);
    }

    public final InputStream getContent() {
        return this.f29648d;
    }

    public final int getContentLength() {
        return this.f29647c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f29646b);
    }

    public final int getStatusCode() {
        return this.f29645a;
    }

    public HttpResponse(int i2, List<Header> list, int i3, InputStream inputStream) {
        this.f29645a = i2;
        this.f29646b = list;
        this.f29647c = i3;
        this.f29648d = inputStream;
    }
}
