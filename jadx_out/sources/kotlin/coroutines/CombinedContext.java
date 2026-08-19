package kotlin.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.anythink.core.common.f.f;
import com.beizi.fusion.widget.ScrollClickView;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.i;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u00011B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0019\u001a\u00020\u00182\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ*\u0010\u001e\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u001b*\u00020\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0096\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ7\u0010$\u001a\u00028\u0000\"\u0004\b\u0000\u0010 2\u0006\u0010!\u001a\u00028\u00002\u0018\u0010#\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u00020\u00012\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u001cH\u0016¢\u0006\u0004\b&\u0010'J\u001a\u0010)\u001a\u00020\f2\b\u0010(\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\u000bJ\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010/R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u00100¨\u00062"}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/i;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", ScrollClickView.DIR_LEFT, "Lkotlin/coroutines/i$b;", "element", "<init>", "(Lkotlin/coroutines/i;Lkotlin/coroutines/i$b;)V", "", "size", "()I", "", "contains", "(Lkotlin/coroutines/i$b;)Z", com.umeng.analytics.pro.g.f49337X, "containsAll", "(Lkotlin/coroutines/CombinedContext;)Z", "", "writeReplace", "()Ljava/lang/Object;", "Ljava/io/ObjectInputStream;", "Lkotlin/internal/ReadObjectParameterType;", "input", "Lkotlin/j;", "readObject", "(Ljava/io/ObjectInputStream;)V", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/i$c;", f.a.f3242b, "get", "(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "minusKey", "(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i;", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toString", "()Ljava/lang/String;", "Lkotlin/coroutines/i;", "Lkotlin/coroutines/i$b;", "Serialized", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
/* loaded from: classes5.dex */
public final class CombinedContext implements i, Serializable {

    @NotNull
    private final i.b element;

    @NotNull
    private final i left;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\b\u0002\u0018\u0000 \u000e2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "Lkotlin/coroutines/i;", "elements", "<init>", "([Lkotlin/coroutines/i;)V", "", "readResolve", "()Ljava/lang/Object;", "[Lkotlin/coroutines/i;", "getElements", "()[Lkotlin/coroutines/i;", "Companion", "a", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,200:1\n13216#2,3:201\n*S KotlinDebug\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n*L\n197#1:201,3\n*E\n"})
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;

        @NotNull
        private final i[] elements;

        public Serialized(@NotNull i[] elements) {
            j.e(elements, "elements");
            this.elements = elements;
        }

        private final Object readResolve() {
            i[] iVarArr = this.elements;
            i iVarPlus = EmptyCoroutineContext.INSTANCE;
            for (i iVar : iVarArr) {
                iVarPlus = iVarPlus.plus(iVar);
            }
            return iVarPlus;
        }

        @NotNull
        public final i[] getElements() {
            return this.elements;
        }
    }

    public CombinedContext(@NotNull i left, @NotNull i.b element) {
        j.e(left, "left");
        j.e(element, "element");
        this.left = left;
        this.element = element;
    }

    private final boolean contains(i.b element) {
        return j.a(get(element.getKey()), element);
    }

    private final boolean containsAll(CombinedContext context) {
        while (contains(context.element)) {
            i iVar = context.left;
            if (!(iVar instanceof CombinedContext)) {
                j.c(iVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return contains((i.b) iVar);
            }
            context = (CombinedContext) iVar;
        }
        return false;
    }

    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final int size() {
        int i2 = 2;
        CombinedContext combinedContext = this;
        while (true) {
            i iVar = combinedContext.left;
            combinedContext = iVar instanceof CombinedContext ? (CombinedContext) iVar : null;
            if (combinedContext == null) {
                return i2;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String toString$lambda$0(String acc, i.b element) {
        j.e(acc, "acc");
        j.e(element, "element");
        if (acc.length() == 0) {
            return element.toString();
        }
        return acc + ", " + element;
    }

    private final Object writeReplace() {
        int size = size();
        final i[] iVarArr = new i[size];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        fold(kotlin.j.f51397a, new Function2() { // from class: kotlin.coroutines.c
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CombinedContext.writeReplace$lambda$0(iVarArr, ref$IntRef, (kotlin.j) obj, (i.b) obj2);
            }
        });
        if (ref$IntRef.element == size) {
            return new Serialized(iVarArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeReplace$lambda$0(i[] iVarArr, Ref$IntRef ref$IntRef, kotlin.j jVar, i.b element) {
        j.e(jVar, "<unused var>");
        j.e(element, "element");
        int i2 = ref$IntRef.element;
        ref$IntRef.element = i2 + 1;
        iVarArr[i2] = element;
        return kotlin.j.f51397a;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CombinedContext)) {
            return false;
        }
        CombinedContext combinedContext = (CombinedContext) other;
        return combinedContext.size() == size() && combinedContext.containsAll(this);
    }

    @Override // kotlin.coroutines.i
    public <R> R fold(R initial, @NotNull Function2<? super R, ? super i.b, ? extends R> operation) {
        j.e(operation, "operation");
        return operation.invoke(this.left.fold(initial, operation), this.element);
    }

    @Override // kotlin.coroutines.i
    @Nullable
    public <E extends i.b> E get(@NotNull i.c key) {
        j.e(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e2 = (E) combinedContext.element.get(key);
            if (e2 != null) {
                return e2;
            }
            i iVar = combinedContext.left;
            if (!(iVar instanceof CombinedContext)) {
                return (E) iVar.get(key);
            }
            combinedContext = (CombinedContext) iVar;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.i
    @NotNull
    public i minusKey(@NotNull i.c key) {
        j.e(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        i iVarMinusKey = this.left.minusKey(key);
        return iVarMinusKey == this.left ? this : iVarMinusKey == EmptyCoroutineContext.INSTANCE ? this.element : new CombinedContext(iVarMinusKey, this.element);
    }

    @Override // kotlin.coroutines.i
    @NotNull
    public /* bridge */ i plus(@NotNull i iVar) {
        return i.a.b(this, iVar);
    }

    @NotNull
    public String toString() {
        return '[' + ((String) fold("", new Function2() { // from class: kotlin.coroutines.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CombinedContext.toString$lambda$0((String) obj, (i.b) obj2);
            }
        })) + ']';
    }
}
