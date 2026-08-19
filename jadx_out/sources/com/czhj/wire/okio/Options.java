package com.czhj.wire.okio;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    final ByteString[] f29811a;

    /* renamed from: b, reason: collision with root package name */
    final int[] f29812b;

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.f29811a = byteStringArr;
        this.f29812b = iArr;
    }

    private static int a(Buffer buffer) {
        return (int) (buffer.size() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ba, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.czhj.wire.okio.Options of(com.czhj.wire.okio.ByteString... r11) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.Options.of(com.czhj.wire.okio.ByteString[]):com.czhj.wire.okio.Options");
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i2) {
        return this.f29811a[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29811a.length;
    }

    private static void a(long j2, Buffer buffer, int i2, List<ByteString> list, int i3, int i4, List<Integer> list2) {
        int i5;
        int i6;
        long j3;
        int i7;
        List<Integer> list3;
        long j4;
        int i8;
        List<ByteString> list4 = list;
        List<Integer> list5 = list2;
        if (i3 >= i4) {
            throw new AssertionError();
        }
        for (int i9 = i3; i9 < i4; i9++) {
            if (list4.get(i9).size() < i2) {
                throw new AssertionError();
            }
        }
        ByteString byteString = list.get(i3);
        ByteString byteString2 = list4.get(i4 - 1);
        if (i2 == byteString.size()) {
            int iIntValue = list5.get(i3).intValue();
            int i10 = i3 + 1;
            ByteString byteString3 = list4.get(i10);
            i5 = i10;
            i6 = iIntValue;
            byteString = byteString3;
        } else {
            i5 = i3;
            i6 = -1;
        }
        long j5 = 2;
        if (byteString.getByte(i2) == byteString2.getByte(i2)) {
            int iMin = Math.min(byteString.size(), byteString2.size());
            int i11 = 0;
            int i12 = i2;
            while (true) {
                if (i12 >= iMin) {
                    j3 = j5;
                    break;
                }
                j3 = j5;
                if (byteString.getByte(i12) != byteString2.getByte(i12)) {
                    break;
                }
                i11++;
                i12++;
                j5 = j3;
            }
            long jA = j2 + a(buffer) + j3 + i11 + 1;
            buffer.writeInt(-i11);
            buffer.writeInt(i6);
            int i13 = i2;
            while (true) {
                i7 = i2 + i11;
                if (i13 >= i7) {
                    break;
                }
                buffer.writeInt(byteString.getByte(i13) & 255);
                i13++;
            }
            if (i5 + 1 == i4) {
                if (i7 != list4.get(i5).size()) {
                    throw new AssertionError();
                }
                buffer.writeInt(list5.get(i5).intValue());
                return;
            } else {
                Buffer buffer2 = new Buffer();
                buffer.writeInt((int) ((a(buffer2) + jA) * (-1)));
                a(jA, buffer2, i7, list4, i5, i4, list5);
                buffer.write(buffer2, buffer2.size());
                return;
            }
        }
        int i14 = 1;
        for (int i15 = i5 + 1; i15 < i4; i15++) {
            if (list4.get(i15 - 1).getByte(i2) != list4.get(i15).getByte(i2)) {
                i14++;
            }
        }
        long jA2 = j2 + a(buffer) + 2 + (i14 * 2);
        buffer.writeInt(i14);
        buffer.writeInt(i6);
        for (int i16 = i5; i16 < i4; i16++) {
            byte b3 = list4.get(i16).getByte(i2);
            if (i16 == i5 || b3 != list4.get(i16 - 1).getByte(i2)) {
                buffer.writeInt(b3 & 255);
            }
        }
        Buffer buffer3 = new Buffer();
        int i17 = i5;
        while (i17 < i4) {
            byte b4 = list4.get(i17).getByte(i2);
            int i18 = i17 + 1;
            int i19 = i18;
            while (true) {
                if (i19 >= i4) {
                    i19 = i4;
                    break;
                } else if (b4 != list4.get(i19).getByte(i2)) {
                    break;
                } else {
                    i19++;
                }
            }
            if (i18 == i19 && i2 + 1 == list4.get(i17).size()) {
                buffer.writeInt(list5.get(i17).intValue());
                list3 = list5;
                j4 = jA2;
                i8 = i19;
            } else {
                buffer.writeInt((int) ((a(buffer3) + jA2) * (-1)));
                list3 = list5;
                j4 = jA2;
                i8 = i19;
                a(j4, buffer3, i2 + 1, list, i17, i8, list3);
                list4 = list;
            }
            jA2 = j4;
            i17 = i8;
            list5 = list3;
        }
        buffer.write(buffer3, buffer3.size());
    }
}
