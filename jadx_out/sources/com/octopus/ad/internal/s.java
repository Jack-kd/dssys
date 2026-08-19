package com.octopus.ad.internal;

import java.util.ArrayList;

/* loaded from: classes4.dex */
public abstract class s implements e {

    /* renamed from: a, reason: collision with root package name */
    private long f35044a = -1;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<String> f35045b = new ArrayList<>();

    public abstract void c();

    public void e() {
        this.f35044a = System.currentTimeMillis();
    }

    public void f() {
        if (this.f35045b.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("Mediation Classes: \n");
        for (int size = this.f35045b.size(); size > 0; size--) {
            sb.append(String.format("%d: %s\n", Integer.valueOf(size), this.f35045b.get(size - 1)));
        }
        com.octopus.ad.internal.c.f.c(com.octopus.ad.internal.c.f.f34566b, sb.toString());
        this.f35045b.clear();
    }
}
