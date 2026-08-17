package L0;

import io.flutter.embedding.android.KeyboardMap;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public class i implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    public final int f205b = 1179403647;

    /* renamed from: c, reason: collision with root package name */
    public final FileChannel f206c;

    public i(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f206c = new FileInputStream(file).getChannel();
    }

    public void A(ByteBuffer byteBuffer, long j2, int i2) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i2);
        long j3 = 0;
        while (j3 < i2) {
            int i3 = this.f206c.read(byteBuffer, j2 + j3);
            if (i3 == -1) {
                throw new EOFException();
            }
            j3 += i3;
        }
        byteBuffer.position(0);
    }

    public short B(ByteBuffer byteBuffer, long j2) throws IOException {
        A(byteBuffer, j2, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public int C(ByteBuffer byteBuffer, long j2) throws IOException {
        A(byteBuffer, j2, 2);
        return byteBuffer.getShort() & 65535;
    }

    public long D(ByteBuffer byteBuffer, long j2) throws IOException {
        A(byteBuffer, j2, 8);
        return byteBuffer.getLong();
    }

    public String E(ByteBuffer byteBuffer, long j2) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j3 = 1 + j2;
            short sB = B(byteBuffer, j2);
            if (sB == 0) {
                return sb.toString();
            }
            sb.append((char) sB);
            j2 = j3;
        }
    }

    public long F(ByteBuffer byteBuffer, long j2) throws IOException {
        A(byteBuffer, j2, 4);
        return byteBuffer.getInt() & KeyboardMap.kValueMask;
    }

    public final long a(d dVar, long j2, long j3) {
        for (long j4 = 0; j4 < j2; j4++) {
            e eVarB = dVar.b(j4);
            if (eVarB.f198a == 1) {
                long j5 = eVarB.f200c;
                if (j5 <= j3 && j3 <= eVarB.f201d + j5) {
                    return (j3 - j5) + eVarB.f199b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public d b() throws IOException {
        this.f206c.position(0L);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (F(byteBufferAllocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short sB = B(byteBufferAllocate, 4L);
        boolean z2 = B(byteBufferAllocate, 5L) == 2;
        if (sB == 1) {
            return new g(z2, this);
        }
        if (sB == 2) {
            return new h(z2, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f206c.close();
    }

    public List z() throws IOException {
        long j2;
        this.f206c.position(0L);
        ArrayList arrayList = new ArrayList();
        d dVarB = b();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(dVarB.f189a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j3 = dVarB.f194f;
        if (j3 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            j3 = dVarB.c(0).f202a;
        }
        long j4 = 0;
        while (true) {
            if (j4 >= j3) {
                j2 = 0;
                break;
            }
            e eVarB = dVarB.b(j4);
            if (eVarB.f198a == 2) {
                j2 = eVarB.f199b;
                break;
            }
            j4++;
        }
        if (j2 == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j5 = 0;
        int i2 = 0;
        while (true) {
            c cVarA = dVarB.a(j2, i2);
            long j6 = j2;
            long j7 = cVarA.f187a;
            if (j7 == 1) {
                arrayList2.add(Long.valueOf(cVarA.f188b));
            } else if (j7 == 5) {
                j5 = cVarA.f188b;
            }
            i2++;
            if (cVarA.f187a == 0) {
                break;
            }
            j2 = j6;
            j3 = j3;
        }
        if (j5 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long jA = a(dVarB, j3, j5);
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            arrayList.add(E(byteBufferAllocate, ((Long) obj).longValue() + jA));
        }
        return arrayList;
    }
}
