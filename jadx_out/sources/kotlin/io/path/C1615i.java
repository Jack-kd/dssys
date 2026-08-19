package kotlin.io.path;

import java.nio.file.FileVisitOption;
import java.nio.file.LinkOption;
import java.util.Set;

/* renamed from: kotlin.io.path.i, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1615i {

    /* renamed from: a, reason: collision with root package name */
    public static final C1615i f51385a = new C1615i();

    /* renamed from: b, reason: collision with root package name */
    public static final LinkOption[] f51386b = {LinkOption.NOFOLLOW_LINKS};

    /* renamed from: c, reason: collision with root package name */
    public static final LinkOption[] f51387c = new LinkOption[0];

    /* renamed from: d, reason: collision with root package name */
    public static final Set f51388d = kotlin.collections.J.e();

    /* renamed from: e, reason: collision with root package name */
    public static final Set f51389e = kotlin.collections.I.d(FileVisitOption.FOLLOW_LINKS);

    public final Set a(boolean z2) {
        return z2 ? f51389e : f51388d;
    }
}
