package com.czhj.wire;

import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.WireEnum;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class EnumAdapter<E extends WireEnum> extends ProtoAdapter<E> {
    public EnumAdapter(Class<E> cls) {
        super(FieldEncoding.VARINT, cls);
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final E decode(ProtoReader protoReader) throws IOException {
        int varint32 = protoReader.readVarint32();
        E e2 = (E) fromValue(varint32);
        if (e2 != null) {
            return e2;
        }
        throw new ProtoAdapter.EnumConstantNotFoundException(varint32, this.javaType);
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final void encode(ProtoWriter protoWriter, E e2) throws IOException {
        protoWriter.writeVarint32(e2.getValue());
    }

    @Override // com.czhj.wire.ProtoAdapter
    public final int encodedSize(E e2) {
        return ProtoWriter.c(e2.getValue());
    }

    public abstract E fromValue(int i2);
}
