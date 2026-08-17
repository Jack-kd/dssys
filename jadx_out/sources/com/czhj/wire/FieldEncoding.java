package com.czhj.wire;

import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public enum FieldEncoding {
    VARINT(0),
    FIXED64(1),
    LENGTH_DELIMITED(2),
    FIXED32(5);

    final int value;

    /* renamed from: com.czhj.wire.FieldEncoding$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f29712a;

        static {
            int[] iArr = new int[FieldEncoding.values().length];
            f29712a = iArr;
            try {
                iArr[FieldEncoding.VARINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29712a[FieldEncoding.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29712a[FieldEncoding.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29712a[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    FieldEncoding(int i2) {
        this.value = i2;
    }

    public static FieldEncoding a(int i2) throws IOException {
        if (i2 == 0) {
            return VARINT;
        }
        if (i2 == 1) {
            return FIXED64;
        }
        if (i2 == 2) {
            return LENGTH_DELIMITED;
        }
        if (i2 == 5) {
            return FIXED32;
        }
        throw new ProtocolException("Unexpected FieldEncoding: " + i2);
    }

    public ProtoAdapter<?> rawProtoAdapter() {
        int i2 = AnonymousClass1.f29712a[ordinal()];
        if (i2 == 1) {
            return ProtoAdapter.UINT64;
        }
        if (i2 == 2) {
            return ProtoAdapter.FIXED32;
        }
        if (i2 == 3) {
            return ProtoAdapter.FIXED64;
        }
        if (i2 == 4) {
            return ProtoAdapter.BYTES;
        }
        throw new AssertionError();
    }
}
