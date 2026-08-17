package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes5.dex */
public final class pblc {

    public static class pblb extends Exception {
        public pblb(String str) {
            super(str);
        }
    }

    public static final class pgla<A, B> {
        private final A hp;

        /* renamed from: l, reason: collision with root package name */
        private final B f51971l;

        /* JADX WARN: Multi-variable type inference failed */
        private pgla(ByteBuffer byteBuffer, Long l2) {
            this.hp = byteBuffer;
            this.f51971l = l2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || pgla.class != obj.getClass()) {
                return false;
            }
            pgla pglaVar = (pgla) obj;
            A a3 = this.hp;
            if (a3 == null) {
                if (pglaVar.hp != null) {
                    return false;
                }
            } else if (!a3.equals(pglaVar.hp)) {
                return false;
            }
            B b3 = this.f51971l;
            B b4 = pglaVar.f51971l;
            return b3 == null ? b4 == null : b3.equals(b4);
        }

        public final int hashCode() {
            A a3 = this.hp;
            int iHashCode = ((a3 == null ? 0 : a3.hashCode()) + 31) * 31;
            B b3 = this.f51971l;
            return iHashCode + (b3 != null ? b3.hashCode() : 0);
        }

        public final A hp() {
            return this.hp;
        }

        public static pgla hp(ByteBuffer byteBuffer, Long l2) {
            return new pgla(byteBuffer, l2);
        }
    }

    public static HashMap hp(String str) {
        RandomAccessFile randomAccessFile = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "38e0be", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H}));
                try {
                    for (Map.Entry entry : hp(hp(randomAccessFile2.getChannel()).hp()).entrySet()) {
                        if (entry != null && entry.getKey() != null && ((Integer) entry.getKey()).intValue() != 1896449818) {
                            try {
                                ByteBuffer byteBuffer = (ByteBuffer) entry.getValue();
                                byte[] bArrArray = byteBuffer.array();
                                int iArrayOffset = byteBuffer.arrayOffset();
                                map.put((Integer) entry.getKey(), new String(Arrays.copyOfRange(bArrArray, byteBuffer.position() + iArrayOffset, byteBuffer.limit() + iArrayOffset)));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    randomAccessFile2.close();
                } catch (Throwable unused2) {
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    return map;
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable unused4) {
        }
        return map;
    }

    public static pgla<ByteBuffer, Long> hp(FileChannel fileChannel) throws IOException, pblb {
        long size = fileChannel.size();
        if (size < 22) {
            throw new IOException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "048e72", new byte[]{112, com.sigmob.sdk.archives.tar.e.f35454T}));
        }
        long j2 = size - 22;
        long jMin = Math.min(j2, WebSocketProtocol.PAYLOAD_SHORT_MAX);
        int i2 = 0;
        while (true) {
            long j3 = i2;
            if (j3 > jMin) {
                throw new IOException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5e2518", new byte[]{117, com.sigmob.sdk.archives.tar.e.f35449O}));
            }
            long j4 = j2 - j3;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            fileChannel.position(j4);
            fileChannel.read(byteBufferAllocate);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBufferAllocate.order(byteOrder);
            if (byteBufferAllocate.getInt(0) == 101010256) {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(2);
                fileChannel.position(j4 + 20);
                fileChannel.read(byteBufferAllocate2);
                byteBufferAllocate2.order(byteOrder);
                short s2 = byteBufferAllocate2.getShort(0);
                if (s2 == i2) {
                    ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(4);
                    byteBufferAllocate3.order(byteOrder);
                    fileChannel.position((fileChannel.size() - s2) - 6);
                    fileChannel.read(byteBufferAllocate3);
                    long j5 = byteBufferAllocate3.getInt(0);
                    if (j5 < 32) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "61af37", new byte[]{126}));
                    }
                    fileChannel.position(j5 - 24);
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(24);
                    fileChannel.read(byteBufferAllocate4);
                    byteBufferAllocate4.order(byteOrder);
                    if (byteBufferAllocate4.getLong(8) != 2334950737559900225L || byteBufferAllocate4.getLong(16) != 3617552046287187010L) {
                        return null;
                    }
                    long j6 = byteBufferAllocate4.getLong(0);
                    if (j6 < byteBufferAllocate4.capacity() || j6 > 2147483639) {
                        return null;
                    }
                    int i3 = (int) (8 + j6);
                    long j7 = j5 - i3;
                    if (j7 < 0) {
                        return null;
                    }
                    fileChannel.position(j7);
                    ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate(i3);
                    fileChannel.read(byteBufferAllocate5);
                    byteBufferAllocate5.order(byteOrder);
                    if (byteBufferAllocate5.getLong(0) == j6) {
                        return pgla.hp(byteBufferAllocate5, Long.valueOf(j7));
                    }
                    return null;
                }
            }
            i2++;
        }
    }

    public static LinkedHashMap hp(ByteBuffer byteBuffer) throws pblb {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            int iCapacity = byteBuffer.capacity() - 24;
            if (iCapacity < 8) {
                throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3dd73a", new byte[]{118}));
            }
            byteBuffer.capacity();
            if (iCapacity > byteBuffer.capacity()) {
                throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "99375c", new byte[]{125}));
            }
            int iLimit = byteBuffer.limit();
            int iPosition = byteBuffer.position();
            try {
                byteBuffer.position(0);
                byteBuffer.limit(iCapacity);
                byteBuffer.position(8);
                ByteBuffer byteBufferSlice = byteBuffer.slice();
                byteBufferSlice.order(byteBuffer.order());
                byteBuffer.position(0);
                byteBuffer.limit(iLimit);
                byteBuffer.position(iPosition);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (byteBufferSlice.hasRemaining()) {
                    if (byteBufferSlice.remaining() < 8) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d46cf8", new byte[]{35}));
                    }
                    long j2 = byteBufferSlice.getLong();
                    if (j2 < 4 || j2 > 2147483647L) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0a49d9", new byte[]{118}));
                    }
                    int i2 = (int) j2;
                    int iPosition2 = byteBufferSlice.position() + i2;
                    if (i2 > byteBufferSlice.remaining()) {
                        throw new pblb((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2e90aa", new byte[]{123}));
                    }
                    Integer numValueOf = Integer.valueOf(byteBufferSlice.getInt());
                    int i3 = i2 - 4;
                    if (i3 < 0) {
                        throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e187e2", new byte[]{38}));
                    }
                    int iLimit2 = byteBufferSlice.limit();
                    int iPosition3 = byteBufferSlice.position();
                    int i4 = i3 + iPosition3;
                    if (i4 < iPosition3 || i4 > iLimit2) {
                        throw new BufferUnderflowException();
                    }
                    byteBufferSlice.limit(i4);
                    try {
                        ByteBuffer byteBufferSlice2 = byteBufferSlice.slice();
                        byteBufferSlice2.order(byteBufferSlice.order());
                        byteBufferSlice.position(i4);
                        byteBufferSlice.limit(iLimit2);
                        linkedHashMap.put(numValueOf, byteBufferSlice2);
                        byteBufferSlice.position(iPosition2);
                    } catch (Throwable th) {
                        byteBufferSlice.limit(iLimit2);
                        throw th;
                    }
                }
                return linkedHashMap;
            } catch (Throwable th2) {
                byteBuffer.position(0);
                byteBuffer.limit(iLimit);
                byteBuffer.position(iPosition);
                throw th2;
            }
        }
        throw new IllegalArgumentException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8917fa", new byte[]{com.sigmob.sdk.archives.tar.e.f35452R}));
    }
}
