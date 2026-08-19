package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.C;

/* loaded from: classes5.dex */
public interface g extends s, ReceiveChannel {
    public static final a U2 = a.f51590a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f51590a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final int f51591b = C.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        public final int a() {
            return f51591b;
        }
    }
}
