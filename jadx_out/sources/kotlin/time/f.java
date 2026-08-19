package kotlin.time;

import kotlin.jvm.internal.j;
import x1.AbstractC1801b;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final a f51496a = AbstractC1801b.f52829a.c();

    public static final Object a(Instant instant) {
        j.e(instant, "instant");
        return new InstantSerialized(instant.getEpochSeconds(), instant.getNanosecondsOfSecond());
    }
}
