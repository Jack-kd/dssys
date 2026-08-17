package com.beizi.fusion;

import java.util.Set;

/* loaded from: classes2.dex */
public final class lg extends ig {

    /* renamed from: a, reason: collision with root package name */
    private final hh f14865a = new hh(false);

    public void a(String str, ig igVar) {
        hh hhVar = this.f14865a;
        if (igVar == null) {
            igVar = kg.f14743a;
        }
        hhVar.put(str, igVar);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof lg) && ((lg) obj).f14865a.equals(this.f14865a);
        }
        return true;
    }

    public Set h() {
        return this.f14865a.entrySet();
    }

    public int hashCode() {
        return this.f14865a.hashCode();
    }

    public ig a(String str) {
        return (ig) this.f14865a.remove(str);
    }

    public void a(String str, String str2) {
        a(str, str2 == null ? kg.f14743a : new og(str2));
    }

    public void a(String str, Number number) {
        a(str, number == null ? kg.f14743a : new og(number));
    }
}
