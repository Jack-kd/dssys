package org.eclipse.jetty.util;

import java.io.IOException;

/* loaded from: classes5.dex */
public class q extends Utf8Appendable {

    /* renamed from: g, reason: collision with root package name */
    public final StringBuilder f52686g;

    public q() {
        super(new StringBuilder());
        this.f52686g = (StringBuilder) this.f52615a;
    }

    @Override // org.eclipse.jetty.util.Utf8Appendable
    public void f() {
        super.f();
        this.f52686g.setLength(0);
    }

    public StringBuilder h() throws IOException {
        d();
        return this.f52686g;
    }

    public int i() {
        return this.f52686g.length();
    }

    public String toString() throws IOException {
        d();
        return this.f52686g.toString();
    }

    public q(int i2) {
        super(new StringBuilder(i2));
        this.f52686g = (StringBuilder) this.f52615a;
    }
}
