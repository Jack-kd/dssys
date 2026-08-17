package okio.internal;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlin.text.AbstractC1622b;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Timeout;
import okio.buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\n\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0014\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0080\b¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u000b\u001a\u00020\n*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\u000b\u0010\f\u001a\u001c\u0010\r\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\r\u0010\u000e\u001a\u0014\u0010\u0010\u001a\u00020\u000f*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0014\u0010\u0013\u001a\u00020\u0012*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001c\u0010\u0013\u001a\u00020\u0012*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\u0013\u0010\u0015\u001a\u001c\u0010\u0019\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H\u0080\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0014\u0010\u001c\u001a\u00020\u001b*\u00020\u0000H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\u001b*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001e\u001a\u001c\u0010\u001f\u001a\u00020\n*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u001bH\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a,\u0010\u0005\u001a\u00020\u0018*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0018H\u0080\b¢\u0006\u0004\b\u0005\u0010\"\u001a$\u0010\u001f\u001a\u00020\n*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b\u001f\u0010#\u001a\u001c\u0010%\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020$H\u0080\b¢\u0006\u0004\b%\u0010&\u001a\u0014\u0010(\u001a\u00020'*\u00020\u0000H\u0080\b¢\u0006\u0004\b(\u0010)\u001a\u001c\u0010(\u001a\u00020'*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b(\u0010*\u001a\u0016\u0010+\u001a\u0004\u0018\u00010'*\u00020\u0000H\u0080\b¢\u0006\u0004\b+\u0010)\u001a\u001c\u0010-\u001a\u00020'*\u00020\u00002\u0006\u0010,\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b-\u0010*\u001a\u0014\u0010.\u001a\u00020\u0018*\u00020\u0000H\u0080\b¢\u0006\u0004\b.\u0010/\u001a\u0014\u00101\u001a\u000200*\u00020\u0000H\u0080\b¢\u0006\u0004\b1\u00102\u001a\u0014\u00103\u001a\u000200*\u00020\u0000H\u0080\b¢\u0006\u0004\b3\u00102\u001a\u0014\u00104\u001a\u00020\u0018*\u00020\u0000H\u0080\b¢\u0006\u0004\b4\u0010/\u001a\u0014\u00105\u001a\u00020\u0018*\u00020\u0000H\u0080\b¢\u0006\u0004\b5\u0010/\u001a\u0014\u00106\u001a\u00020\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b6\u00107\u001a\u0014\u00108\u001a\u00020\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b8\u00107\u001a\u0014\u00109\u001a\u00020\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b9\u00107\u001a\u0014\u0010:\u001a\u00020\u0003*\u00020\u0000H\u0080\b¢\u0006\u0004\b:\u00107\u001a\u001c\u0010;\u001a\u00020\n*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b;\u0010\f\u001a,\u0010?\u001a\u00020\u0003*\u00020\u00002\u0006\u0010<\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b?\u0010@\u001a$\u0010?\u001a\u00020\u0003*\u00020\u00002\u0006\u0010A\u001a\u00020\u00122\u0006\u0010=\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\b?\u0010B\u001a$\u0010D\u001a\u00020\u0003*\u00020\u00002\u0006\u0010C\u001a\u00020\u00122\u0006\u0010=\u001a\u00020\u0003H\u0080\b¢\u0006\u0004\bD\u0010B\u001a4\u0010F\u001a\u00020\u0007*\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0018H\u0080\b¢\u0006\u0004\bF\u0010G\u001a\u0014\u0010I\u001a\u00020H*\u00020\u0000H\u0080\b¢\u0006\u0004\bI\u0010J\u001a\u0014\u0010K\u001a\u00020\n*\u00020\u0000H\u0080\b¢\u0006\u0004\bK\u0010L\u001a\u0014\u0010N\u001a\u00020M*\u00020\u0000H\u0080\b¢\u0006\u0004\bN\u0010O\u001a\u0014\u0010P\u001a\u00020'*\u00020\u0000H\u0080\b¢\u0006\u0004\bP\u0010)¨\u0006Q"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/Buffer;", "sink", "", "byteCount", "commonRead", "(Lokio/RealBufferedSource;Lokio/Buffer;J)J", "", "commonExhausted", "(Lokio/RealBufferedSource;)Z", "Lkotlin/j;", "commonRequire", "(Lokio/RealBufferedSource;J)V", "commonRequest", "(Lokio/RealBufferedSource;J)Z", "", "commonReadByte", "(Lokio/RealBufferedSource;)B", "Lokio/ByteString;", "commonReadByteString", "(Lokio/RealBufferedSource;)Lokio/ByteString;", "(Lokio/RealBufferedSource;J)Lokio/ByteString;", "Lokio/Options;", "options", "", "commonSelect", "(Lokio/RealBufferedSource;Lokio/Options;)I", "", "commonReadByteArray", "(Lokio/RealBufferedSource;)[B", "(Lokio/RealBufferedSource;J)[B", "commonReadFully", "(Lokio/RealBufferedSource;[B)V", "offset", "(Lokio/RealBufferedSource;[BII)I", "(Lokio/RealBufferedSource;Lokio/Buffer;J)V", "Lokio/Sink;", "commonReadAll", "(Lokio/RealBufferedSource;Lokio/Sink;)J", "", "commonReadUtf8", "(Lokio/RealBufferedSource;)Ljava/lang/String;", "(Lokio/RealBufferedSource;J)Ljava/lang/String;", "commonReadUtf8Line", "limit", "commonReadUtf8LineStrict", "commonReadUtf8CodePoint", "(Lokio/RealBufferedSource;)I", "", "commonReadShort", "(Lokio/RealBufferedSource;)S", "commonReadShortLe", "commonReadInt", "commonReadIntLe", "commonReadLong", "(Lokio/RealBufferedSource;)J", "commonReadLongLe", "commonReadDecimalLong", "commonReadHexadecimalUnsignedLong", "commonSkip", "b", "fromIndex", "toIndex", "commonIndexOf", "(Lokio/RealBufferedSource;BJJ)J", "bytes", "(Lokio/RealBufferedSource;Lokio/ByteString;J)J", "targetBytes", "commonIndexOfElement", "bytesOffset", "commonRangeEquals", "(Lokio/RealBufferedSource;JLokio/ByteString;II)Z", "Lokio/BufferedSource;", "commonPeek", "(Lokio/RealBufferedSource;)Lokio/BufferedSource;", "commonClose", "(Lokio/RealBufferedSource;)V", "Lokio/Timeout;", "commonTimeout", "(Lokio/RealBufferedSource;)Lokio/Timeout;", "commonToString", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
@JvmName(name = "-RealBufferedSource")
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,402:1\n1#2:403\n62#3:404\n62#3:405\n62#3:406\n62#3:407\n62#3:408\n62#3:409\n62#3:410\n62#3:411\n62#3:412\n62#3:413\n62#3:414\n62#3:415\n62#3:416\n62#3:417\n62#3:418\n62#3:419\n62#3:420\n62#3:421\n62#3:422\n62#3:423\n62#3:424\n62#3:425\n62#3:426\n62#3:428\n62#3:429\n62#3:430\n62#3:431\n62#3:432\n62#3:433\n62#3:434\n62#3:435\n62#3:436\n62#3:437\n62#3:438\n62#3:439\n62#3:440\n62#3:441\n62#3:442\n62#3:443\n62#3:444\n62#3:445\n62#3:446\n62#3:447\n62#3:449\n62#3:450\n62#3:451\n62#3:452\n62#3:453\n62#3:454\n62#3:455\n62#3:456\n62#3:457\n62#3:458\n62#3:459\n62#3:460\n62#3:461\n62#3:462\n62#3:463\n62#3:464\n62#3:465\n62#3:466\n62#3:467\n62#3:468\n62#3:469\n62#3:470\n62#3:471\n62#3:472\n62#3:473\n62#3:474\n62#3:475\n89#4:427\n89#4:448\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n*L\n41#1:404\n42#1:405\n46#1:406\n47#1:407\n52#1:408\n62#1:409\n63#1:410\n70#1:411\n74#1:412\n75#1:413\n80#1:414\n87#1:415\n94#1:416\n99#1:417\n107#1:418\n108#1:419\n113#1:420\n122#1:421\n123#1:422\n130#1:423\n136#1:424\n137#1:425\n141#1:426\n142#1:428\n150#1:429\n154#1:430\n159#1:431\n160#1:432\n163#1:433\n166#1:434\n167#1:435\n168#1:436\n174#1:437\n175#1:438\n180#1:439\n187#1:440\n188#1:441\n193#1:442\n201#1:443\n203#1:444\n204#1:445\n206#1:446\n209#1:447\n211#1:449\n219#1:450\n226#1:451\n231#1:452\n236#1:453\n241#1:454\n246#1:455\n251#1:456\n256#1:457\n264#1:458\n275#1:459\n283#1:460\n297#1:461\n304#1:462\n307#1:463\n308#1:464\n319#1:465\n324#1:466\n325#1:467\n338#1:468\n341#1:469\n342#1:470\n354#1:471\n357#1:472\n358#1:473\n383#1:474\n396#1:475\n141#1:427\n209#1:448\n*E\n"})
/* renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* loaded from: classes5.dex */
public final class RealBufferedSource {
    public static final void commonClose(@NotNull buffer bufferVar) throws IOException {
        j.e(bufferVar, "<this>");
        if (bufferVar.closed) {
            return;
        }
        bufferVar.closed = true;
        bufferVar.source.close();
        bufferVar.bufferField.clear();
    }

    public static final boolean commonExhausted(@NotNull buffer bufferVar) {
        j.e(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        return bufferVar.bufferField.exhausted() && bufferVar.source.read(bufferVar.bufferField, 8192L) == -1;
    }

    public static final long commonIndexOf(@NotNull buffer bufferVar, byte b3, long j2, long j3) {
        j.e(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (0 > j2 || j2 > j3) {
            throw new IllegalArgumentException(("fromIndex=" + j2 + " toIndex=" + j3).toString());
        }
        long jMax = j2;
        while (jMax < j3) {
            byte b4 = b3;
            long j4 = j3;
            long jIndexOf = bufferVar.bufferField.indexOf(b4, jMax, j4);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = bufferVar.bufferField.size();
            if (size >= j4 || bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
                break;
            }
            jMax = Math.max(jMax, size);
            b3 = b4;
            j3 = j4;
        }
        return -1L;
    }

    public static final long commonIndexOfElement(@NotNull buffer bufferVar, @NotNull ByteString targetBytes, long j2) {
        j.e(bufferVar, "<this>");
        j.e(targetBytes, "targetBytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = bufferVar.bufferField.indexOfElement(targetBytes, j2);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = bufferVar.bufferField.size();
            if (bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, size);
        }
    }

    @NotNull
    public static final BufferedSource commonPeek(@NotNull buffer bufferVar) {
        j.e(bufferVar, "<this>");
        return Okio.buffer(new PeekSource(bufferVar));
    }

    public static final boolean commonRangeEquals(@NotNull buffer bufferVar, long j2, @NotNull ByteString bytes, int i2, int i3) {
        j.e(bufferVar, "<this>");
        j.e(bytes, "bytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || i2 < 0 || i3 < 0 || bytes.size() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            long j3 = i4 + j2;
            if (!bufferVar.request(1 + j3) || bufferVar.bufferField.getByte(j3) != bytes.getByte(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    public static final long commonRead(@NotNull buffer bufferVar, @NotNull Buffer sink, long j2) {
        j.e(bufferVar, "<this>");
        j.e(sink, "sink");
        if (j2 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j2).toString());
        }
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
            return -1L;
        }
        return bufferVar.bufferField.read(sink, Math.min(j2, bufferVar.bufferField.size()));
    }

    public static final long commonReadAll(@NotNull buffer bufferVar, @NotNull Sink sink) throws IOException {
        j.e(bufferVar, "<this>");
        j.e(sink, "sink");
        long j2 = 0;
        while (bufferVar.source.read(bufferVar.bufferField, 8192L) != -1) {
            long jCompleteSegmentByteCount = bufferVar.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j2 += jCompleteSegmentByteCount;
                sink.write(bufferVar.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (bufferVar.bufferField.size() <= 0) {
            return j2;
        }
        long size = j2 + bufferVar.bufferField.size();
        Buffer buffer = bufferVar.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    public static final byte commonReadByte(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(1L);
        return bufferVar.bufferField.readByte();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(j2);
        return bufferVar.bufferField.readByteArray(j2);
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(j2);
        return bufferVar.bufferField.readByteString(j2);
    }

    public static final long commonReadDecimalLong(@NotNull buffer bufferVar) throws EOFException {
        byte b3;
        j.e(bufferVar, "<this>");
        bufferVar.require(1L);
        long j2 = 0;
        while (true) {
            long j3 = j2 + 1;
            if (!bufferVar.request(j3)) {
                break;
            }
            b3 = bufferVar.bufferField.getByte(j2);
            if ((b3 < 48 || b3 > 57) && !(j2 == 0 && b3 == 45)) {
                break;
            }
            j2 = j3;
        }
        if (j2 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected a digit or '-' but was 0x");
            String string = Integer.toString(b3, AbstractC1622b.a(AbstractC1622b.a(16)));
            j.d(string, "toString(this, checkRadix(radix))");
            sb.append(string);
            throw new NumberFormatException(sb.toString());
        }
        return bufferVar.bufferField.readDecimalLong();
    }

    public static final void commonReadFully(@NotNull buffer bufferVar, @NotNull byte[] sink) throws EOFException {
        j.e(bufferVar, "<this>");
        j.e(sink, "sink");
        try {
            bufferVar.require(sink.length);
            bufferVar.bufferField.readFully(sink);
        } catch (EOFException e2) {
            int i2 = 0;
            while (bufferVar.bufferField.size() > 0) {
                Buffer buffer = bufferVar.bufferField;
                int i3 = buffer.read(sink, i2, (int) buffer.size());
                if (i3 == -1) {
                    throw new AssertionError();
                }
                i2 += i3;
            }
            throw e2;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(@NotNull buffer bufferVar) throws EOFException {
        byte b3;
        j.e(bufferVar, "<this>");
        bufferVar.require(1L);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!bufferVar.request(i3)) {
                break;
            }
            b3 = bufferVar.bufferField.getByte(i2);
            if ((b3 < 48 || b3 > 57) && ((b3 < 97 || b3 > 102) && (b3 < 65 || b3 > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i2 == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            String string = Integer.toString(b3, AbstractC1622b.a(AbstractC1622b.a(16)));
            j.d(string, "toString(this, checkRadix(radix))");
            sb.append(string);
            throw new NumberFormatException(sb.toString());
        }
        return bufferVar.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(4L);
        return bufferVar.bufferField.readInt();
    }

    public static final int commonReadIntLe(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(4L);
        return bufferVar.bufferField.readIntLe();
    }

    public static final long commonReadLong(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(8L);
        return bufferVar.bufferField.readLong();
    }

    public static final long commonReadLongLe(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(8L);
        return bufferVar.bufferField.readLongLe();
    }

    public static final short commonReadShort(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(2L);
        return bufferVar.bufferField.readShort();
    }

    public static final short commonReadShortLe(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(2L);
        return bufferVar.bufferField.readShortLe();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(j2);
        return bufferVar.bufferField.readUtf8(j2);
    }

    public static final int commonReadUtf8CodePoint(@NotNull buffer bufferVar) throws EOFException {
        j.e(bufferVar, "<this>");
        bufferVar.require(1L);
        byte b3 = bufferVar.bufferField.getByte(0L);
        if ((b3 & 224) == 192) {
            bufferVar.require(2L);
        } else if ((b3 & 240) == 224) {
            bufferVar.require(3L);
        } else if ((b3 & 248) == 240) {
            bufferVar.require(4L);
        }
        return bufferVar.bufferField.readUtf8CodePoint();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull buffer bufferVar) {
        j.e(bufferVar, "<this>");
        long jIndexOf = bufferVar.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(bufferVar.bufferField, jIndexOf);
        }
        if (bufferVar.bufferField.size() != 0) {
            return bufferVar.readUtf8(bufferVar.bufferField.size());
        }
        return null;
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        if (j2 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j2).toString());
        }
        long j3 = j2 == LocationRequestCompat.PASSIVE_INTERVAL ? Long.MAX_VALUE : j2 + 1;
        long jIndexOf = bufferVar.indexOf((byte) 10, 0L, j3);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(bufferVar.bufferField, jIndexOf);
        }
        if (j3 < LocationRequestCompat.PASSIVE_INTERVAL && bufferVar.request(j3) && bufferVar.bufferField.getByte(j3 - 1) == 13 && bufferVar.request(j3 + 1) && bufferVar.bufferField.getByte(j3) == 10) {
            return Buffer.readUtf8Line(bufferVar.bufferField, j3);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = bufferVar.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(bufferVar.bufferField.size(), j2) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public static final boolean commonRequest(@NotNull buffer bufferVar, long j2) {
        j.e(bufferVar, "<this>");
        if (j2 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j2).toString());
        }
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (bufferVar.bufferField.size() < j2) {
            if (bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
                return false;
            }
        }
        return true;
    }

    public static final void commonRequire(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        if (!bufferVar.request(j2)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(@NotNull buffer bufferVar, @NotNull Options options) throws EOFException {
        j.e(bufferVar, "<this>");
        j.e(options, "options");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        do {
            int iSelectPrefix = Buffer.selectPrefix(bufferVar.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                bufferVar.bufferField.skip(options.getByteStrings()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (bufferVar.source.read(bufferVar.bufferField, 8192L) != -1);
        return -1;
    }

    public static final void commonSkip(@NotNull buffer bufferVar, long j2) throws EOFException {
        j.e(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j2, bufferVar.bufferField.size());
            bufferVar.bufferField.skip(jMin);
            j2 -= jMin;
        }
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull buffer bufferVar) {
        j.e(bufferVar, "<this>");
        return bufferVar.source.getTimeout();
    }

    @NotNull
    public static final String commonToString(@NotNull buffer bufferVar) {
        j.e(bufferVar, "<this>");
        return "buffer(" + bufferVar.source + ')';
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull buffer bufferVar) throws IOException {
        j.e(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readByteArray();
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull buffer bufferVar) throws IOException {
        j.e(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readByteString();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull buffer bufferVar) throws IOException {
        j.e(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readUtf8();
    }

    public static final void commonReadFully(@NotNull buffer bufferVar, @NotNull Buffer sink, long j2) throws IOException {
        j.e(bufferVar, "<this>");
        j.e(sink, "sink");
        try {
            bufferVar.require(j2);
            bufferVar.bufferField.readFully(sink, j2);
        } catch (EOFException e2) {
            sink.writeAll(bufferVar.bufferField);
            throw e2;
        }
    }

    public static final long commonIndexOf(@NotNull buffer bufferVar, @NotNull ByteString bytes, long j2) throws IOException {
        j.e(bufferVar, "<this>");
        j.e(bytes, "bytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = bufferVar.bufferField.indexOf(bytes, j2);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = bufferVar.bufferField.size();
            if (bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
                return -1L;
            }
            j2 = Math.max(j2, (size - bytes.size()) + 1);
        }
    }

    public static final int commonRead(@NotNull buffer bufferVar, @NotNull byte[] sink, int i2, int i3) {
        j.e(bufferVar, "<this>");
        j.e(sink, "sink");
        long j2 = i3;
        SegmentedByteString.checkOffsetAndCount(sink.length, i2, j2);
        if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, 8192L) == -1) {
            return -1;
        }
        return bufferVar.bufferField.read(sink, i2, (int) Math.min(j2, bufferVar.bufferField.size()));
    }
}
