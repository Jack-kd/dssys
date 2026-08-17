package com.czhj.wire;

import com.anythink.core.common.d.i;
import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import com.czhj.wire.WireField;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class FieldBinding<M extends Message<M, B>, B extends Message.Builder<M, B>> {

    /* renamed from: a, reason: collision with root package name */
    private final String f29704a;

    /* renamed from: b, reason: collision with root package name */
    private final String f29705b;

    /* renamed from: c, reason: collision with root package name */
    private final Field f29706c;

    /* renamed from: d, reason: collision with root package name */
    private final Field f29707d;

    /* renamed from: e, reason: collision with root package name */
    private final Method f29708e;

    /* renamed from: f, reason: collision with root package name */
    private ProtoAdapter<?> f29709f;

    /* renamed from: g, reason: collision with root package name */
    private ProtoAdapter<?> f29710g;

    /* renamed from: h, reason: collision with root package name */
    private ProtoAdapter<Object> f29711h;
    public final WireField.Label label;
    public final String name;
    public final boolean redacted;
    public final int tag;

    public FieldBinding(WireField wireField, Field field, Class<B> cls) {
        this.label = wireField.label();
        String name = field.getName();
        this.name = name;
        this.tag = wireField.tag();
        this.f29704a = wireField.keyAdapter();
        this.f29705b = wireField.adapter();
        this.redacted = wireField.redacted();
        this.f29706c = field;
        this.f29707d = a((Class<?>) cls, name);
        this.f29708e = a(cls, name, field.getType());
    }

    public Object a(B b3) {
        try {
            return this.f29707d.get(b3);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }

    public ProtoAdapter<?> b() {
        ProtoAdapter<?> protoAdapter = this.f29709f;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.f29705b);
        this.f29709f = protoAdapter2;
        return protoAdapter2;
    }

    public ProtoAdapter<?> c() {
        ProtoAdapter<?> protoAdapter = this.f29710g;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapter2 = ProtoAdapter.get(this.f29704a);
        this.f29710g = protoAdapter2;
        return protoAdapter2;
    }

    public ProtoAdapter<Object> d() {
        ProtoAdapter<Object> protoAdapter = this.f29711h;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<?> protoAdapterNewMapAdapter = a() ? ProtoAdapter.newMapAdapter(c(), b()) : b().withLabel(this.label);
        this.f29711h = protoAdapterNewMapAdapter;
        return protoAdapterNewMapAdapter;
    }

    public Object a(M m2) {
        try {
            return this.f29706c.get(m2);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        }
    }

    public void b(B b3, Object obj) {
        try {
            if (this.label.c()) {
                this.f29708e.invoke(b3, obj);
            } else {
                this.f29707d.set(b3, obj);
            }
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getField(str);
        } catch (NoSuchFieldException unused) {
            throw new AssertionError("No builder field " + cls.getName() + i.f2495E + str);
        }
    }

    private static Method a(Class<?> cls, String str, Class<?> cls2) {
        try {
            return cls.getMethod(str, cls2);
        } catch (NoSuchMethodException unused) {
            throw new AssertionError("No builder method " + cls.getName() + i.f2495E + str + "(" + cls2.getName() + ")");
        }
    }

    public void a(B b3, Object obj) {
        if (this.label.a()) {
            ((List) a((FieldBinding<M, B>) b3)).add(obj);
        } else if (this.f29704a.isEmpty()) {
            b(b3, obj);
        } else {
            ((Map) a((FieldBinding<M, B>) b3)).putAll((Map) obj);
        }
    }

    public boolean a() {
        return !this.f29704a.isEmpty();
    }
}
