package org.eclipse.jetty.http;

import org.eclipse.jetty.io.Buffers;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class e extends org.eclipse.jetty.util.component.a implements d {

    /* renamed from: b, reason: collision with root package name */
    public int f52162b = 16384;

    /* renamed from: c, reason: collision with root package name */
    public int f52163c = 6144;

    /* renamed from: d, reason: collision with root package name */
    public int f52164d = 32768;

    /* renamed from: e, reason: collision with root package name */
    public int f52165e = 6144;

    /* renamed from: f, reason: collision with root package name */
    public int f52166f = 1024;

    /* renamed from: g, reason: collision with root package name */
    public Buffers.Type f52167g;

    /* renamed from: h, reason: collision with root package name */
    public Buffers.Type f52168h;

    /* renamed from: i, reason: collision with root package name */
    public Buffers.Type f52169i;

    /* renamed from: j, reason: collision with root package name */
    public Buffers.Type f52170j;

    /* renamed from: k, reason: collision with root package name */
    public Buffers f52171k;

    /* renamed from: l, reason: collision with root package name */
    public Buffers f52172l;

    public e() {
        Buffers.Type type = Buffers.Type.BYTE_ARRAY;
        this.f52167g = type;
        this.f52168h = type;
        this.f52169i = type;
        this.f52170j = type;
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers H() {
        return this.f52172l;
    }

    public int P() {
        return this.f52166f;
    }

    public void Q(Buffers.Type type) {
        this.f52167g = type;
    }

    public void R(Buffers.Type type) {
        this.f52168h = type;
    }

    public void S(Buffers.Type type) {
        this.f52169i = type;
    }

    public void T(Buffers.Type type) {
        this.f52170j = type;
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        Buffers.Type type = this.f52168h;
        int i2 = this.f52163c;
        Buffers.Type type2 = this.f52167g;
        this.f52171k = org.eclipse.jetty.io.b.a(type, i2, type2, this.f52162b, type2, P());
        Buffers.Type type3 = this.f52170j;
        int i3 = this.f52165e;
        Buffers.Type type4 = this.f52169i;
        this.f52172l = org.eclipse.jetty.io.b.a(type3, i3, type4, this.f52164d, type4, P());
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() {
        this.f52171k = null;
        this.f52172l = null;
    }

    public String toString() {
        return this.f52171k + ServiceReference.DELIMITER + this.f52172l;
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers z() {
        return this.f52171k;
    }
}
