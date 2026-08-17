package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.WireField;
import com.czhj.wire.internal.Internal;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class RuntimeMessageAdapter<M extends Message<M, B>, B extends Message.Builder<M, B>> extends ProtoAdapter<M> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29742a = "██";

    /* renamed from: b, reason: collision with root package name */
    private final Class<M> f29743b;

    /* renamed from: c, reason: collision with root package name */
    private final Class<B> f29744c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<Integer, FieldBinding<M, B>> f29745d;

    public RuntimeMessageAdapter(Class<M> cls, Class<B> cls2, Map<Integer, FieldBinding<M, B>> map) {
        super(FieldEncoding.LENGTH_DELIMITED, cls);
        this.f29743b = cls;
        this.f29744c = cls2;
        this.f29745d = map;
    }

    public static <M extends Message<M, B>, B extends Message.Builder<M, B>> RuntimeMessageAdapter<M, B> a(Class<M> cls) {
        Class clsB = b(cls);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Field field : cls.getDeclaredFields()) {
            WireField wireField = (WireField) field.getAnnotation(WireField.class);
            if (wireField != null) {
                linkedHashMap.put(Integer.valueOf(wireField.tag()), new FieldBinding(wireField, field, clsB));
            }
        }
        return new RuntimeMessageAdapter<>(cls, clsB, Collections.unmodifiableMap(linkedHashMap));
    }

    public B b() {
        try {
            return this.f29744c.newInstance();
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    @Override // com.czhj.wire.ProtoAdapter
    public M decode(ProtoReader protoReader) throws IOException {
        Message.Builder builderB = b();
        long jBeginMessage = protoReader.beginMessage();
        while (true) {
            int iNextTag = protoReader.nextTag();
            if (iNextTag == -1) {
                protoReader.endMessage(jBeginMessage);
                return (M) builderB.build();
            }
            FieldBinding<M, B> fieldBinding = this.f29745d.get(Integer.valueOf(iNextTag));
            if (fieldBinding != null) {
                try {
                    fieldBinding.a((FieldBinding<M, B>) builderB, (fieldBinding.a() ? fieldBinding.d() : fieldBinding.b()).decode(protoReader));
                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                    builderB.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                }
            } else {
                FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                builderB.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
            }
        }
    }

    @Override // com.czhj.wire.ProtoAdapter
    public void encode(ProtoWriter protoWriter, M m2) throws IOException {
        for (FieldBinding<M, B> fieldBinding : this.f29745d.values()) {
            Object objA = fieldBinding.a((FieldBinding<M, B>) m2);
            if (objA != null) {
                fieldBinding.d().encodeWithTag(protoWriter, fieldBinding.tag, objA);
            }
        }
        protoWriter.writeBytes(m2.unknownFields());
    }

    @Override // com.czhj.wire.ProtoAdapter
    public int encodedSize(M m2) {
        int i2 = m2.cachedSerializedSize;
        if (i2 != 0) {
            return i2;
        }
        int iEncodedSizeWithTag = 0;
        for (FieldBinding<M, B> fieldBinding : this.f29745d.values()) {
            Object objA = fieldBinding.a((FieldBinding<M, B>) m2);
            if (objA != null) {
                iEncodedSizeWithTag += fieldBinding.d().encodedSizeWithTag(fieldBinding.tag, objA);
            }
        }
        int size = iEncodedSizeWithTag + m2.unknownFields().size();
        m2.cachedSerializedSize = size;
        return size;
    }

    public boolean equals(Object obj) {
        return (obj instanceof RuntimeMessageAdapter) && ((RuntimeMessageAdapter) obj).f29743b == this.f29743b;
    }

    public int hashCode() {
        return this.f29743b.hashCode();
    }

    @Override // com.czhj.wire.ProtoAdapter
    public M redact(M m2) {
        Message.Builder builderNewBuilder = m2.newBuilder();
        for (FieldBinding<M, B> fieldBinding : this.f29745d.values()) {
            if (fieldBinding.redacted && fieldBinding.label == WireField.Label.REQUIRED) {
                throw new UnsupportedOperationException(String.format("Field '%s' in %s is required and cannot be redacted.", fieldBinding.name, this.javaType.getName()));
            }
            boolean zIsAssignableFrom = Message.class.isAssignableFrom(fieldBinding.b().javaType);
            if (fieldBinding.redacted || (zIsAssignableFrom && !fieldBinding.label.a())) {
                Object objA = fieldBinding.a((FieldBinding<M, B>) builderNewBuilder);
                if (objA != null) {
                    fieldBinding.b(builderNewBuilder, fieldBinding.d().redact(objA));
                }
            } else if (zIsAssignableFrom && fieldBinding.label.a()) {
                Internal.redactElements((List) fieldBinding.a((FieldBinding<M, B>) builderNewBuilder), fieldBinding.b());
            }
        }
        builderNewBuilder.clearUnknownFields();
        return (M) builderNewBuilder.build();
    }

    @Override // com.czhj.wire.ProtoAdapter
    public String toString(M m2) {
        StringBuilder sb = new StringBuilder();
        for (FieldBinding<M, B> fieldBinding : this.f29745d.values()) {
            Object objA = fieldBinding.a((FieldBinding<M, B>) m2);
            if (objA != null) {
                sb.append(", ");
                sb.append(fieldBinding.name);
                sb.append('=');
                if (fieldBinding.redacted) {
                    objA = f29742a;
                }
                sb.append(objA);
            }
        }
        sb.replace(0, 2, this.f29743b.getSimpleName() + '{');
        sb.append('}');
        return sb.toString();
    }

    private static <M extends Message<M, B>, B extends Message.Builder<M, B>> Class<B> b(Class<M> cls) {
        try {
            return (Class<B>) Class.forName(cls.getName() + "$Builder");
        } catch (ClassNotFoundException unused) {
            throw new IllegalArgumentException("No builder class found for message type " + cls.getName());
        }
    }

    public Map<Integer, FieldBinding<M, B>> a() {
        return this.f29745d;
    }
}
