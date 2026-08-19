package defpackage;

import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final a f1167b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final Boolean f1168a;

    public static final class a {
        public /* synthetic */ a(f fVar) {
            this();
        }

        public final b a(List pigeonVar_list) {
            j.e(pigeonVar_list, "pigeonVar_list");
            return new b((Boolean) pigeonVar_list.get(0));
        }

        public a() {
        }
    }

    public b(Boolean bool) {
        this.f1168a = bool;
    }

    public final Boolean a() {
        return this.f1168a;
    }

    public final List b() {
        return p.e(this.f1168a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return h.f50717a.a(b(), ((b) obj).b());
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return "ToggleMessage(enable=" + this.f1168a + ")";
    }
}
