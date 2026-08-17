package kotlin.text;

import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public abstract class p {
    public static void a(Appendable appendable, Object obj, Function1 function1) {
        kotlin.jvm.internal.j.e(appendable, "<this>");
        if (function1 != null) {
            appendable.append((CharSequence) function1.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }
}
