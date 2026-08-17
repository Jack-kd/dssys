package androidx.datastore.preferences.protobuf;

import java.io.IOException;

@CheckReturnValue
/* loaded from: classes.dex */
abstract class UnknownFieldSchema<T, B> {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    private final void mergeFrom(B b3, Reader reader, int i2) throws IOException {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b3, reader, i2)) {
        }
    }

    public abstract void addFixed32(B b3, int i2, int i3);

    public abstract void addFixed64(B b3, int i2, long j2);

    public abstract void addGroup(B b3, int i2, T t2);

    public abstract void addLengthDelimited(B b3, int i2, ByteString byteString);

    public abstract void addVarint(B b3, int i2, long j2);

    public abstract B getBuilderFromMessage(Object obj);

    public abstract T getFromMessage(Object obj);

    public abstract int getSerializedSize(T t2);

    public abstract int getSerializedSizeAsMessageSet(T t2);

    public abstract void makeImmutable(Object obj);

    public abstract T merge(T t2, T t3);

    public final boolean mergeOneFieldFrom(B b3, Reader reader, int i2) throws IOException {
        int tag = reader.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(b3, tagFieldNumber, reader.readInt64());
            return true;
        }
        if (tagWireType == 1) {
            addFixed64(b3, tagFieldNumber, reader.readFixed64());
            return true;
        }
        if (tagWireType == 2) {
            addLengthDelimited(b3, tagFieldNumber, reader.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            addFixed32(b3, tagFieldNumber, reader.readFixed32());
            return true;
        }
        B bNewBuilder = newBuilder();
        int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
        int i3 = i2 + 1;
        if (i3 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        mergeFrom(bNewBuilder, reader, i3);
        if (iMakeTag != reader.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        addGroup(b3, tagFieldNumber, toImmutable(bNewBuilder));
        return true;
    }

    public abstract B newBuilder();

    public abstract void setBuilderToMessage(Object obj, B b3);

    public void setRecursionLimit(int i2) {
        recursionLimit = i2;
    }

    public abstract void setToMessage(Object obj, T t2);

    public abstract boolean shouldDiscardUnknownFields(Reader reader);

    public abstract T toImmutable(B b3);

    public abstract void writeAsMessageSetTo(T t2, Writer writer) throws IOException;

    public abstract void writeTo(T t2, Writer writer) throws IOException;
}
