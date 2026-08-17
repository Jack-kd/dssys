package kotlin.text;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;

/* loaded from: classes5.dex */
public abstract class o {
    public static final k f(Matcher matcher, int i2, CharSequence charSequence) {
        if (matcher.find(i2)) {
            return new m(matcher, charSequence);
        }
        return null;
    }

    public static final k g(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new m(matcher, charSequence);
        }
        return null;
    }

    public static final E1.d h(MatchResult matchResult) {
        return E1.f.j(matchResult.start(), matchResult.end());
    }

    public static final E1.d i(MatchResult matchResult, int i2) {
        return E1.f.j(matchResult.start(i2), matchResult.end(i2));
    }

    public static final int j(Iterable iterable) {
        Iterator it = iterable.iterator();
        int value = 0;
        while (it.hasNext()) {
            value |= ((f) it.next()).getValue();
        }
        return value;
    }
}
