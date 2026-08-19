package com.beizi.fusion;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class gg implements gp {

    /* renamed from: c, reason: collision with root package name */
    private static final gp f14062c;

    /* renamed from: d, reason: collision with root package name */
    private static final gp f14063d;

    /* renamed from: a, reason: collision with root package name */
    private final c6 f14064a;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentMap f14065b = new ConcurrentHashMap();

    public static class b implements gp {
        private b() {
        }
    }

    static {
        f14062c = new b();
        f14063d = new b();
    }

    public gg(c6 c6Var) {
        this.f14064a = c6Var;
    }
}
