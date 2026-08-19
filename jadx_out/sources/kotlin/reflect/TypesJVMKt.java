package kotlin.reflect;

import java.lang.reflect.Type;
import kotlin.sequences.q;
import kotlin.text.z;
import okhttp3.HttpUrl;

/* loaded from: classes5.dex */
public abstract class TypesJVMKt {
    public static final String b(Type type) {
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (!cls.isArray()) {
            String name = cls.getName();
            kotlin.jvm.internal.j.d(name, "getName(...)");
            return name;
        }
        kotlin.sequences.g gVarG = kotlin.sequences.n.g(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
        return ((Class) q.y(gVarG)).getName() + z.z(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, q.o(gVarG));
    }
}
