package org.eclipse.jetty.util;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public class c implements b {

    /* renamed from: b, reason: collision with root package name */
    public final Map f52618b = new HashMap();

    public Set a() {
        return this.f52618b.entrySet();
    }

    public Enumeration b() {
        return Collections.enumeration(this.f52618b.keySet());
    }

    @Override // org.eclipse.jetty.util.b
    public Object getAttribute(String str) {
        return this.f52618b.get(str);
    }

    @Override // org.eclipse.jetty.util.b
    public void k() {
        this.f52618b.clear();
    }

    @Override // org.eclipse.jetty.util.b
    public void setAttribute(String str, Object obj) {
        if (obj == null) {
            this.f52618b.remove(str);
        } else {
            this.f52618b.put(str, obj);
        }
    }

    public String toString() {
        return this.f52618b.toString();
    }
}
