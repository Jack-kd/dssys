package com.czhj.wire;

import com.czhj.wire.Message;
import com.czhj.wire.WireField;
import com.czhj.wire.okio.Buffer;
import com.czhj.wire.okio.BufferedSink;
import com.czhj.wire.okio.BufferedSource;
import com.czhj.wire.okio.ByteString;
import com.czhj.wire.okio.Okio;
import com.czhj.wire.okio.Utf8;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class ProtoAdapter<E> {
    public static final ProtoAdapter<Boolean> BOOL;
    public static final ProtoAdapter<ByteString> BYTES;
    public static final ProtoAdapter<Double> DOUBLE;
    public static final ProtoAdapter<Integer> FIXED32;
    public static final ProtoAdapter<Long> FIXED64;
    private static final int FIXED_32_SIZE = 4;
    private static final int FIXED_64_SIZE = 8;
    private static final int FIXED_BOOL_SIZE = 1;
    public static final ProtoAdapter<Float> FLOAT;
    public static final ProtoAdapter<Integer> INT32;
    public static final ProtoAdapter<Long> INT64;
    public static final ProtoAdapter<Integer> SFIXED32;
    public static final ProtoAdapter<Long> SFIXED64;
    public static final ProtoAdapter<Integer> SINT32;
    public static final ProtoAdapter<Long> SINT64;
    public static final ProtoAdapter<String> STRING;
    public static final ProtoAdapter<Integer> UINT32;
    public static final ProtoAdapter<Long> UINT64;
    private final FieldEncoding fieldEncoding;
    final Class<?> javaType;
    ProtoAdapter<List<E>> packedAdapter;
    ProtoAdapter<List<E>> repeatedAdapter;

    public static final class EnumConstantNotFoundException extends IllegalArgumentException {
        public final int value;

        public EnumConstantNotFoundException(int i2, Class<?> cls) {
            super("Unknown enum tag " + i2 + " for " + cls.getCanonicalName());
            this.value = i2;
        }
    }

    public static final class MapEntryProtoAdapter<K, V> extends ProtoAdapter<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        final ProtoAdapter<K> f29717a;

        /* renamed from: b, reason: collision with root package name */
        final ProtoAdapter<V> f29718b;

        public MapEntryProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
            super(FieldEncoding.LENGTH_DELIMITED, Map.Entry.class);
            this.f29717a = protoAdapter;
            this.f29718b = protoAdapter2;
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Map.Entry<K, V> decode(ProtoReader protoReader) {
            throw new UnsupportedOperationException();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, Map.Entry<K, V> entry) throws IOException {
            this.f29717a.encodeWithTag(protoWriter, 1, entry.getKey());
            this.f29718b.encodeWithTag(protoWriter, 2, entry.getValue());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Map.Entry<K, V> entry) {
            return this.f29717a.encodedSizeWithTag(1, entry.getKey()) + this.f29718b.encodedSizeWithTag(2, entry.getValue());
        }
    }

    public static final class MapProtoAdapter<K, V> extends ProtoAdapter<Map<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        private final MapEntryProtoAdapter<K, V> f29719a;

        public MapProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
            super(FieldEncoding.LENGTH_DELIMITED, Map.class);
            this.f29719a = new MapEntryProtoAdapter<>(protoAdapter, protoAdapter2);
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Map<K, V> decode(ProtoReader protoReader) throws IOException {
            long jBeginMessage = protoReader.beginMessage();
            K kDecode = null;
            V vDecode = null;
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    break;
                }
                if (iNextTag == 1) {
                    kDecode = this.f29719a.f29717a.decode(protoReader);
                } else if (iNextTag == 2) {
                    vDecode = this.f29719a.f29718b.decode(protoReader);
                }
            }
            protoReader.endMessage(jBeginMessage);
            if (kDecode == null) {
                throw new IllegalStateException("Map entry with null key");
            }
            if (vDecode != null) {
                return Collections.singletonMap(kDecode, vDecode);
            }
            throw new IllegalStateException("Map entry with null value");
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, Map<K, V> map) {
            throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encodeWithTag(ProtoWriter protoWriter, int i2, Map<K, V> map) throws IOException {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                this.f29719a.encodeWithTag(protoWriter, i2, it.next());
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(Map<K, V> map) {
            throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSizeWithTag(int i2, Map<K, V> map) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            int iEncodedSizeWithTag = 0;
            while (it.hasNext()) {
                iEncodedSizeWithTag += this.f29719a.encodedSizeWithTag(i2, it.next());
            }
            return iEncodedSizeWithTag;
        }

        @Override // com.czhj.wire.ProtoAdapter
        public Map<K, V> redact(Map<K, V> map) {
            return Collections.EMPTY_MAP;
        }
    }

    static {
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        BOOL = new ProtoAdapter<Boolean>(fieldEncoding, Boolean.class) { // from class: com.czhj.wire.ProtoAdapter.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Boolean decode(ProtoReader protoReader) throws IOException {
                int varint32 = protoReader.readVarint32();
                if (varint32 == 0) {
                    return Boolean.FALSE;
                }
                if (varint32 == 1) {
                    return Boolean.TRUE;
                }
                throw new IOException(String.format("Invalid boolean value 0x%02x", Integer.valueOf(varint32)));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Boolean bool) throws IOException {
                protoWriter.writeVarint32(bool.booleanValue() ? 1 : 0);
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Boolean bool) {
                return 1;
            }
        };
        Class<Integer> cls = Integer.class;
        INT32 = new ProtoAdapter<Integer>(fieldEncoding, cls) { // from class: com.czhj.wire.ProtoAdapter.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readVarint32());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.f(num.intValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.b(num.intValue());
            }
        };
        UINT32 = new ProtoAdapter<Integer>(fieldEncoding, cls) { // from class: com.czhj.wire.ProtoAdapter.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readVarint32());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeVarint32(num.intValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.c(num.intValue());
            }
        };
        SINT32 = new ProtoAdapter<Integer>(fieldEncoding, cls) { // from class: com.czhj.wire.ProtoAdapter.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(ProtoWriter.e(protoReader.readVarint32()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeVarint32(ProtoWriter.d(num.intValue()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return ProtoWriter.c(ProtoWriter.d(num.intValue()));
            }
        };
        FieldEncoding fieldEncoding2 = FieldEncoding.FIXED32;
        ProtoAdapter<Integer> protoAdapter = new ProtoAdapter<Integer>(fieldEncoding2, cls) { // from class: com.czhj.wire.ProtoAdapter.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Integer decode(ProtoReader protoReader) throws IOException {
                return Integer.valueOf(protoReader.readFixed32());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Integer num) throws IOException {
                protoWriter.writeFixed32(num.intValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Integer num) {
                return 4;
            }
        };
        FIXED32 = protoAdapter;
        SFIXED32 = protoAdapter;
        Class<Long> cls2 = Long.class;
        INT64 = new ProtoAdapter<Long>(fieldEncoding, cls2) { // from class: com.czhj.wire.ProtoAdapter.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readVarint64());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l2) throws IOException {
                protoWriter.writeVarint64(l2.longValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Long l2) {
                return ProtoWriter.a(l2.longValue());
            }
        };
        UINT64 = new ProtoAdapter<Long>(fieldEncoding, cls2) { // from class: com.czhj.wire.ProtoAdapter.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readVarint64());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l2) throws IOException {
                protoWriter.writeVarint64(l2.longValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Long l2) {
                return ProtoWriter.a(l2.longValue());
            }
        };
        SINT64 = new ProtoAdapter<Long>(fieldEncoding, cls2) { // from class: com.czhj.wire.ProtoAdapter.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(ProtoWriter.c(protoReader.readVarint64()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l2) throws IOException {
                protoWriter.writeVarint64(ProtoWriter.b(l2.longValue()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Long l2) {
                return ProtoWriter.a(ProtoWriter.b(l2.longValue()));
            }
        };
        FieldEncoding fieldEncoding3 = FieldEncoding.FIXED64;
        ProtoAdapter<Long> protoAdapter2 = new ProtoAdapter<Long>(fieldEncoding3, cls2) { // from class: com.czhj.wire.ProtoAdapter.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Long decode(ProtoReader protoReader) throws IOException {
                return Long.valueOf(protoReader.readFixed64());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Long l2) throws IOException {
                protoWriter.writeFixed64(l2.longValue());
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Long l2) {
                return 8;
            }
        };
        FIXED64 = protoAdapter2;
        SFIXED64 = protoAdapter2;
        FLOAT = new ProtoAdapter<Float>(fieldEncoding2, Float.class) { // from class: com.czhj.wire.ProtoAdapter.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Float decode(ProtoReader protoReader) throws IOException {
                return Float.valueOf(Float.intBitsToFloat(protoReader.readFixed32()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Float f2) throws IOException {
                protoWriter.writeFixed32(Float.floatToIntBits(f2.floatValue()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Float f2) {
                return 4;
            }
        };
        DOUBLE = new ProtoAdapter<Double>(fieldEncoding3, Double.class) { // from class: com.czhj.wire.ProtoAdapter.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public Double decode(ProtoReader protoReader) throws IOException {
                return Double.valueOf(Double.longBitsToDouble(protoReader.readFixed64()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, Double d2) throws IOException {
                protoWriter.writeFixed64(Double.doubleToLongBits(d2.doubleValue()));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(Double d2) {
                return 8;
            }
        };
        FieldEncoding fieldEncoding4 = FieldEncoding.LENGTH_DELIMITED;
        STRING = new ProtoAdapter<String>(fieldEncoding4, String.class) { // from class: com.czhj.wire.ProtoAdapter.12
            @Override // com.czhj.wire.ProtoAdapter
            public String decode(ProtoReader protoReader) throws IOException {
                return protoReader.readString();
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, String str) throws IOException {
                protoWriter.writeString(str);
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(String str) {
                return (int) Utf8.size(str);
            }
        };
        BYTES = new ProtoAdapter<ByteString>(fieldEncoding4, ByteString.class) { // from class: com.czhj.wire.ProtoAdapter.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.czhj.wire.ProtoAdapter
            public ByteString decode(ProtoReader protoReader) throws IOException {
                return protoReader.readBytes();
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, ByteString byteString) throws IOException {
                protoWriter.writeBytes(byteString);
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(ByteString byteString) {
                return byteString.size();
            }
        };
    }

    public ProtoAdapter(FieldEncoding fieldEncoding, Class<?> cls) {
        this.fieldEncoding = fieldEncoding;
        this.javaType = cls;
    }

    private ProtoAdapter<List<E>> createPacked() {
        FieldEncoding fieldEncoding = this.fieldEncoding;
        FieldEncoding fieldEncoding2 = FieldEncoding.LENGTH_DELIMITED;
        if (fieldEncoding != fieldEncoding2) {
            return new ProtoAdapter<List<E>>(fieldEncoding2, List.class) { // from class: com.czhj.wire.ProtoAdapter.14
                @Override // com.czhj.wire.ProtoAdapter
                public List<E> decode(ProtoReader protoReader) throws IOException {
                    return Collections.singletonList(ProtoAdapter.this.decode(protoReader));
                }

                @Override // com.czhj.wire.ProtoAdapter
                public void encode(ProtoWriter protoWriter, List<E> list) throws IOException {
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ProtoAdapter.this.encode(protoWriter, (ProtoWriter) list.get(i2));
                    }
                }

                @Override // com.czhj.wire.ProtoAdapter
                public void encodeWithTag(ProtoWriter protoWriter, int i2, List<E> list) throws IOException {
                    if (list.isEmpty()) {
                        return;
                    }
                    super.encodeWithTag(protoWriter, i2, (int) list);
                }

                @Override // com.czhj.wire.ProtoAdapter
                public int encodedSize(List<E> list) {
                    int size = list.size();
                    int iEncodedSize = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        iEncodedSize += ProtoAdapter.this.encodedSize(list.get(i2));
                    }
                    return iEncodedSize;
                }

                @Override // com.czhj.wire.ProtoAdapter
                public int encodedSizeWithTag(int i2, List<E> list) {
                    if (list.isEmpty()) {
                        return 0;
                    }
                    return super.encodedSizeWithTag(i2, (int) list);
                }

                @Override // com.czhj.wire.ProtoAdapter
                public List<E> redact(List<E> list) {
                    return Collections.EMPTY_LIST;
                }
            };
        }
        throw new IllegalArgumentException("Unable to pack a length-delimited type.");
    }

    private ProtoAdapter<List<E>> createRepeated() {
        return new ProtoAdapter<List<E>>(this.fieldEncoding, List.class) { // from class: com.czhj.wire.ProtoAdapter.15
            @Override // com.czhj.wire.ProtoAdapter
            public List<E> decode(ProtoReader protoReader) throws IOException {
                return Collections.singletonList(ProtoAdapter.this.decode(protoReader));
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encode(ProtoWriter protoWriter, List<E> list) {
                throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
            }

            @Override // com.czhj.wire.ProtoAdapter
            public void encodeWithTag(ProtoWriter protoWriter, int i2, List<E> list) throws IOException {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ProtoAdapter.this.encodeWithTag(protoWriter, i2, list.get(i3));
                }
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSize(List<E> list) {
                throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
            }

            @Override // com.czhj.wire.ProtoAdapter
            public int encodedSizeWithTag(int i2, List<E> list) {
                int size = list.size();
                int iEncodedSizeWithTag = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    iEncodedSizeWithTag += ProtoAdapter.this.encodedSizeWithTag(i2, list.get(i3));
                }
                return iEncodedSizeWithTag;
            }

            @Override // com.czhj.wire.ProtoAdapter
            public List<E> redact(List<E> list) {
                return Collections.EMPTY_LIST;
            }
        };
    }

    public static <M extends Message> ProtoAdapter<M> get(M m2) {
        return get(m2.getClass());
    }

    public static <E extends WireEnum> RuntimeEnumAdapter<E> newEnumAdapter(Class<E> cls) {
        return new RuntimeEnumAdapter<>(cls);
    }

    public static <K, V> ProtoAdapter<Map<K, V>> newMapAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
        return new MapProtoAdapter(protoAdapter, protoAdapter2);
    }

    public static <M extends Message<M, B>, B extends Message.Builder<M, B>> ProtoAdapter<M> newMessageAdapter(Class<M> cls) {
        return RuntimeMessageAdapter.a(cls);
    }

    public final ProtoAdapter<List<E>> asPacked() {
        ProtoAdapter<List<E>> protoAdapter = this.packedAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<List<E>> protoAdapterCreatePacked = createPacked();
        this.packedAdapter = protoAdapterCreatePacked;
        return protoAdapterCreatePacked;
    }

    public final ProtoAdapter<List<E>> asRepeated() {
        ProtoAdapter<List<E>> protoAdapter = this.repeatedAdapter;
        if (protoAdapter != null) {
            return protoAdapter;
        }
        ProtoAdapter<List<E>> protoAdapterCreateRepeated = createRepeated();
        this.repeatedAdapter = protoAdapterCreateRepeated;
        return protoAdapterCreateRepeated;
    }

    public abstract E decode(ProtoReader protoReader) throws IOException;

    public final E decode(BufferedSource bufferedSource) throws IOException {
        Preconditions.a(bufferedSource, "source == null");
        return decode(new ProtoReader(bufferedSource));
    }

    public abstract void encode(ProtoWriter protoWriter, E e2) throws IOException;

    public final void encode(BufferedSink bufferedSink, E e2) throws IOException {
        Preconditions.a(e2, "value == null");
        Preconditions.a(bufferedSink, "sink == null");
        encode(new ProtoWriter(bufferedSink), (ProtoWriter) e2);
    }

    public void encodeWithTag(ProtoWriter protoWriter, int i2, E e2) throws IOException {
        if (e2 == null) {
            return;
        }
        protoWriter.writeTag(i2, this.fieldEncoding);
        if (this.fieldEncoding == FieldEncoding.LENGTH_DELIMITED) {
            protoWriter.writeVarint32(encodedSize(e2));
        }
        encode(protoWriter, (ProtoWriter) e2);
    }

    public abstract int encodedSize(E e2);

    public int encodedSizeWithTag(int i2, E e2) {
        if (e2 == null) {
            return 0;
        }
        int iEncodedSize = encodedSize(e2);
        if (this.fieldEncoding == FieldEncoding.LENGTH_DELIMITED) {
            iEncodedSize += ProtoWriter.c(iEncodedSize);
        }
        return iEncodedSize + ProtoWriter.a(i2);
    }

    public E redact(E e2) {
        return null;
    }

    public String toString(E e2) {
        return e2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProtoAdapter<?> withLabel(WireField.Label label) {
        return label.a() ? label.b() ? asPacked() : asRepeated() : this;
    }

    public static <M> ProtoAdapter<M> get(Class<M> cls) {
        try {
            return (ProtoAdapter) cls.getField("ADAPTER").get(null);
        } catch (Throwable th) {
            throw new IllegalArgumentException("failed to access " + cls.getName() + "#ADAPTER", th);
        }
    }

    public final E decode(ByteString byteString) throws IOException {
        Preconditions.a(byteString, "bytes == null");
        return decode(new Buffer().write(byteString));
    }

    public final void encode(OutputStream outputStream, E e2) throws IOException {
        Preconditions.a(e2, "value == null");
        Preconditions.a(outputStream, "stream == null");
        BufferedSink bufferedSinkBuffer = Okio.buffer(Okio.sink(outputStream));
        encode(bufferedSinkBuffer, (BufferedSink) e2);
        bufferedSinkBuffer.emit();
    }

    public static ProtoAdapter<?> get(String str) {
        try {
            int iIndexOf = str.indexOf(35);
            return (ProtoAdapter) Class.forName(str.substring(0, iIndexOf)).getField(str.substring(iIndexOf + 1)).get(null);
        } catch (Throwable th) {
            throw new IllegalArgumentException("failed to access " + str, th);
        }
    }

    public final E decode(InputStream inputStream) throws IOException {
        Preconditions.a(inputStream, "stream == null");
        return decode(Okio.buffer(Okio.source(inputStream)));
    }

    public final byte[] encode(E e2) {
        Preconditions.a(e2, "value == null");
        Buffer buffer = new Buffer();
        try {
            encode((BufferedSink) buffer, (Buffer) e2);
            return buffer.readByteArray();
        } catch (IOException e3) {
            throw new AssertionError(e3);
        }
    }

    public final E decode(byte[] bArr) throws IOException {
        Preconditions.a(bArr, "bytes == null");
        return decode(new Buffer().write(bArr));
    }
}
