package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;

/* loaded from: classes5.dex */
public final class g implements f {

    /* renamed from: a, reason: collision with root package name */
    public final Object f51876a;

    /* renamed from: b, reason: collision with root package name */
    public final Function3 f51877b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f51878c;

    /* renamed from: d, reason: collision with root package name */
    public final Function3 f51879d;

    public g(Object obj, Function3 function3, Function3 function32, Function3 function33) {
        this.f51876a = obj;
        this.f51877b = function3;
        this.f51878c = function32;
        this.f51879d = function33;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 a() {
        return this.f51879d;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 b() {
        return this.f51878c;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 c() {
        return this.f51877b;
    }

    @Override // kotlinx.coroutines.selects.h
    public Object d() {
        return this.f51876a;
    }
}
