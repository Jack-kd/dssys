package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;

/* loaded from: classes5.dex */
public final class e implements d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f51872a;

    /* renamed from: b, reason: collision with root package name */
    public final Function3 f51873b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f51874c;

    /* renamed from: d, reason: collision with root package name */
    public final Function3 f51875d;

    public e(Object obj, Function3 function3, Function3 function32) {
        this.f51872a = obj;
        this.f51873b = function3;
        this.f51874c = function32;
        this.f51875d = k.f51880a;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 a() {
        return this.f51874c;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 b() {
        return this.f51875d;
    }

    @Override // kotlinx.coroutines.selects.h
    public Function3 c() {
        return this.f51873b;
    }

    @Override // kotlinx.coroutines.selects.h
    public Object d() {
        return this.f51872a;
    }

    public /* synthetic */ e(Object obj, Function3 function3, Function3 function32, int i2, kotlin.jvm.internal.f fVar) {
        this(obj, function3, (i2 & 4) != 0 ? null : function32);
    }
}
