package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.Message.Builder;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* loaded from: classes3.dex */
final class MessageSerializedForm<M extends Message<M, B>, B extends Message.Builder<M, B>> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f29713a;

    /* renamed from: b, reason: collision with root package name */
    private final Class<M> f29714b;

    public MessageSerializedForm(byte[] bArr, Class<M> cls) {
        this.f29713a = bArr;
        this.f29714b = cls;
    }

    public Object readResolve() throws ObjectStreamException {
        try {
            return ProtoAdapter.get(this.f29714b).decode(this.f29713a);
        } catch (IOException e2) {
            throw new StreamCorruptedException(e2.getMessage());
        }
    }
}
