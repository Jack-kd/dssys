package com.beizi.fusion;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class hg extends ig implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList f14285a = new ArrayList();

    public void a(Number number) {
        this.f14285a.add(number == null ? kg.f14743a : new og(number));
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof hg) && ((hg) obj).f14285a.equals(this.f14285a);
        }
        return true;
    }

    public int hashCode() {
        return this.f14285a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f14285a.iterator();
    }

    public void a(String str) {
        this.f14285a.add(str == null ? kg.f14743a : new og(str));
    }

    public void a(ig igVar) {
        if (igVar == null) {
            igVar = kg.f14743a;
        }
        this.f14285a.add(igVar);
    }
}
