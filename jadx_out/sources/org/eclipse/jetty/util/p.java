package org.eclipse.jetty.util;

import java.io.IOException;

/* loaded from: classes5.dex */
public class p extends Utf8Appendable {

    /* renamed from: g, reason: collision with root package name */
    public final StringBuffer f52685g;

    public p(int i2) {
        super(new StringBuffer(i2));
        this.f52685g = (StringBuffer) this.f52615a;
    }

    public StringBuffer h() throws IOException {
        d();
        return this.f52685g;
    }

    public String toString() throws IOException {
        d();
        return this.f52685g.toString();
    }
}
