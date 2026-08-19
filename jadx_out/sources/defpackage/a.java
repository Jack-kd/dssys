package defpackage;

import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final C0020a f748b = new C0020a(null);

    /* renamed from: a, reason: collision with root package name */
    public final Boolean f749a;

    /* renamed from: a$a, reason: collision with other inner class name */
    public static final class C0020a {
        public /* synthetic */ C0020a(f fVar) {
            this();
        }

        public final a a(List pigeonVar_list) {
            j.e(pigeonVar_list, "pigeonVar_list");
            return new a((Boolean) pigeonVar_list.get(0));
        }

        public C0020a() {
        }
    }

    public a(Boolean bool) {
        this.f749a = bool;
    }

    public final List a() {
        return p.e(this.f749a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return h.f50717a.a(a(), ((a) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return "IsEnabledMessage(enabled=" + this.f749a + ")";
    }
}
