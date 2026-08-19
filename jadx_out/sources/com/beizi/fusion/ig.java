package com.beizi.fusion;

import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes2.dex */
public abstract class ig {
    public hg a() {
        if (d()) {
            return (hg) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public lg b() {
        if (f()) {
            return (lg) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public og c() {
        if (g()) {
            return (og) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public boolean d() {
        return this instanceof hg;
    }

    public boolean e() {
        return this instanceof kg;
    }

    public boolean f() {
        return this instanceof lg;
    }

    public boolean g() {
        return this instanceof og;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            rg rgVar = new rg(stringWriter);
            rgVar.a(po.LENIENT);
            oo.a(this, rgVar);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
