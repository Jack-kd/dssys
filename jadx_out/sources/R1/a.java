package R1;

import com.anythink.core.common.d.i;

/* loaded from: classes5.dex */
public abstract class a implements c {
    public static boolean l(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    @Override // R1.c
    public final c j(String str) {
        if (l(str)) {
            return this;
        }
        String name = getName();
        if (!l(name) && b.e() != this) {
            str = name + i.f2495E + str;
        }
        c cVar = (c) b.c().get(str);
        if (cVar != null) {
            return cVar;
        }
        c cVarM = m(str);
        c cVar2 = (c) b.d().putIfAbsent(str, cVarM);
        return cVar2 == null ? cVarM : cVar2;
    }

    public abstract c m(String str);
}
