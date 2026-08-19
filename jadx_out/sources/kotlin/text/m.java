package kotlin.text;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.collections.AbstractC1597b;
import kotlin.jvm.functions.Function1;
import kotlin.text.m;

/* loaded from: classes5.dex */
public final class m implements k {

    /* renamed from: a, reason: collision with root package name */
    public final Matcher f51482a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f51483b;

    /* renamed from: c, reason: collision with root package name */
    public final j f51484c;

    public static final class a extends AbstractC1597b implements j {
        public a() {
        }

        public static final i g(a aVar, int i2) {
            return aVar.f(i2);
        }

        @Override // kotlin.collections.AbstractC1597b, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof i) {
                return e((i) obj);
            }
            return false;
        }

        public /* bridge */ boolean e(i iVar) {
            return super.contains(iVar);
        }

        public i f(int i2) {
            E1.d dVarI = o.i(m.this.c(), i2);
            if (dVarI.getStart().intValue() < 0) {
                return null;
            }
            String strGroup = m.this.c().group(i2);
            kotlin.jvm.internal.j.d(strGroup, "group(...)");
            return new i(strGroup, dVarI);
        }

        @Override // kotlin.collections.AbstractC1597b
        public int getSize() {
            return m.this.c().groupCount() + 1;
        }

        @Override // kotlin.collections.AbstractC1597b, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return kotlin.sequences.q.z(kotlin.collections.y.F(kotlin.collections.q.m(this)), new Function1() { // from class: kotlin.text.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return m.a.g(this.f51481b, ((Integer) obj).intValue());
                }
            }).iterator();
        }
    }

    public m(Matcher matcher, CharSequence input) {
        kotlin.jvm.internal.j.e(matcher, "matcher");
        kotlin.jvm.internal.j.e(input, "input");
        this.f51482a = matcher;
        this.f51483b = input;
        this.f51484c = new a();
    }

    @Override // kotlin.text.k
    public E1.d a() {
        return o.h(c());
    }

    public final MatchResult c() {
        return this.f51482a;
    }

    @Override // kotlin.text.k
    public k next() {
        int iEnd = c().end() + (c().end() == c().start() ? 1 : 0);
        if (iEnd > this.f51483b.length()) {
            return null;
        }
        Matcher matcher = this.f51482a.pattern().matcher(this.f51483b);
        kotlin.jvm.internal.j.d(matcher, "matcher(...)");
        return o.f(matcher, iEnd, this.f51483b);
    }
}
