package kotlin.io.path;

import java.nio.file.Path;
import java.util.Iterator;

/* renamed from: kotlin.io.path.j, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1616j {

    /* renamed from: a, reason: collision with root package name */
    public final Path f51390a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f51391b;

    /* renamed from: c, reason: collision with root package name */
    public final C1616j f51392c;

    /* renamed from: d, reason: collision with root package name */
    public Iterator f51393d;

    public C1616j(Path path, Object obj, C1616j c1616j) {
        kotlin.jvm.internal.j.e(path, "path");
        this.f51390a = path;
        this.f51391b = obj;
        this.f51392c = c1616j;
    }

    public final Iterator a() {
        return this.f51393d;
    }

    public final Object b() {
        return this.f51391b;
    }

    public final C1616j c() {
        return this.f51392c;
    }

    public final Path d() {
        return this.f51390a;
    }

    public final void e(Iterator it) {
        this.f51393d = it;
    }
}
