package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.g;
import kotlin.reflect.k;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes5.dex */
public abstract class MutablePropertyReference extends PropertyReference implements kotlin.reflect.g {
    public MutablePropertyReference() {
    }

    @Override // kotlin.jvm.internal.PropertyReference
    @NotNull
    public abstract /* synthetic */ k.a getGetter();

    @NotNull
    public abstract /* synthetic */ g.a getSetter();

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    @SinceKotlin(version = "1.4")
    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, i2);
    }
}
