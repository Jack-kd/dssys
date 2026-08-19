package com.anythink.core.common.n.c;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class o extends AbstractList<f> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    final f[] f7110a;

    /* renamed from: b, reason: collision with root package name */
    final int[] f7111b;

    private o(f[] fVarArr, int[] iArr) {
        this.f7110a = fVarArr;
        this.f7111b = iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a3, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.anythink.core.common.n.c.o a(com.anythink.core.common.n.c.f... r10) {
        /*
            java.util.ArrayList r4 = new java.util.ArrayList
            java.util.List r0 = java.util.Arrays.asList(r10)
            r4.<init>(r0)
            java.util.Collections.sort(r4)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            r8 = 0
            r0 = r8
        L13:
            int r1 = r4.size()
            if (r0 >= r1) goto L24
            r1 = -1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r7.add(r1)
            int r0 = r0 + 1
            goto L13
        L24:
            r0 = r8
        L25:
            int r1 = r4.size()
            if (r0 >= r1) goto L3b
            r1 = r10[r0]
            int r1 = java.util.Collections.binarySearch(r4, r1)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            r7.set(r1, r2)
            int r0 = r0 + 1
            goto L25
        L3b:
            java.lang.Object r0 = r4.get(r8)
            com.anythink.core.common.n.c.f r0 = (com.anythink.core.common.n.c.f) r0
            int r0 = r0.j()
            if (r0 == 0) goto Lde
            r0 = r8
        L48:
            int r1 = r4.size()
            if (r0 >= r1) goto La5
            java.lang.Object r1 = r4.get(r0)
            com.anythink.core.common.n.c.f r1 = (com.anythink.core.common.n.c.f) r1
            int r2 = r0 + 1
            r3 = r2
        L57:
            int r5 = r4.size()
            if (r3 >= r5) goto La3
            java.lang.Object r5 = r4.get(r3)
            com.anythink.core.common.n.c.f r5 = (com.anythink.core.common.n.c.f) r5
            boolean r6 = r5.c(r1)
            if (r6 == 0) goto La3
            int r6 = r5.j()
            int r9 = r1.j()
            if (r6 == r9) goto L93
            java.lang.Object r5 = r7.get(r3)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            java.lang.Object r6 = r7.get(r0)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            if (r5 <= r6) goto L90
            r4.remove(r3)
            r7.remove(r3)
            goto L57
        L90:
            int r3 = r3 + 1
            goto L57
        L93:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "duplicate option: "
            java.lang.String r1 = java.lang.String.valueOf(r5)
            java.lang.String r0 = r0.concat(r1)
            r10.<init>(r0)
            throw r10
        La3:
            r0 = r2
            goto L48
        La5:
            com.anythink.core.common.n.c.c r2 = new com.anythink.core.common.n.c.c
            r2.<init>()
            r5 = 0
            int r6 = r4.size()
            r0 = 0
            r3 = 0
            a(r0, r2, r3, r4, r5, r6, r7)
            int r0 = a(r2)
            int[] r1 = new int[r0]
        Lbb:
            if (r8 >= r0) goto Lc6
            int r3 = r2.m()
            r1[r8] = r3
            int r8 = r8 + 1
            goto Lbb
        Lc6:
            boolean r0 = r2.g()
            if (r0 == 0) goto Ld8
            com.anythink.core.common.n.c.o r0 = new com.anythink.core.common.n.c.o
            java.lang.Object r10 = r10.clone()
            com.anythink.core.common.n.c.f[] r10 = (com.anythink.core.common.n.c.f[]) r10
            r0.<init>(r10, r1)
            return r0
        Ld8:
            java.lang.AssertionError r10 = new java.lang.AssertionError
            r10.<init>()
            throw r10
        Lde:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "the empty byte string is not a supported option"
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.c.o.a(com.anythink.core.common.n.c.f[]):com.anythink.core.common.n.c.o");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i2) {
        return this.f7110a[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7110a.length;
    }

    private static void a(long j2, c cVar, int i2, List<f> list, int i3, int i4, List<Integer> list2) {
        int i5;
        int i6;
        long j3;
        int i7;
        List<Integer> list3;
        long j4;
        int i8;
        List<f> list4 = list;
        List<Integer> list5 = list2;
        if (i3 < i4) {
            for (int i9 = i3; i9 < i4; i9++) {
                if (list4.get(i9).j() < i2) {
                    throw new AssertionError();
                }
            }
            f fVar = list.get(i3);
            f fVar2 = list4.get(i4 - 1);
            if (i2 == fVar.j()) {
                int iIntValue = list5.get(i3).intValue();
                int i10 = i3 + 1;
                f fVar3 = list4.get(i10);
                i5 = i10;
                i6 = iIntValue;
                fVar = fVar3;
            } else {
                i5 = i3;
                i6 = -1;
            }
            long j5 = 2;
            if (fVar.b(i2) != fVar2.b(i2)) {
                int i11 = 1;
                for (int i12 = i5 + 1; i12 < i4; i12++) {
                    if (list4.get(i12 - 1).b(i2) != list4.get(i12).b(i2)) {
                        i11++;
                    }
                }
                long jA = j2 + a(cVar) + 2 + (i11 * 2);
                cVar.i(i11);
                cVar.i(i6);
                for (int i13 = i5; i13 < i4; i13++) {
                    byte b3 = list4.get(i13).b(i2);
                    if (i13 == i5 || b3 != list4.get(i13 - 1).b(i2)) {
                        cVar.i(b3 & 255);
                    }
                }
                c cVar2 = new c();
                int i14 = i5;
                while (i14 < i4) {
                    byte b4 = list4.get(i14).b(i2);
                    int i15 = i14 + 1;
                    int i16 = i15;
                    while (true) {
                        if (i16 >= i4) {
                            i16 = i4;
                            break;
                        } else if (b4 != list4.get(i16).b(i2)) {
                            break;
                        } else {
                            i16++;
                        }
                    }
                    if (i15 == i16 && i2 + 1 == list4.get(i14).j()) {
                        cVar.i(list5.get(i14).intValue());
                        list3 = list5;
                        j4 = jA;
                        i8 = i16;
                    } else {
                        cVar.i((int) ((a(cVar2) + jA) * (-1)));
                        list3 = list5;
                        j4 = jA;
                        i8 = i16;
                        a(j4, cVar2, i2 + 1, list, i14, i8, list3);
                        list4 = list;
                    }
                    jA = j4;
                    i14 = i8;
                    list5 = list3;
                }
                cVar.a(cVar2, cVar2.f7060c);
                return;
            }
            int iMin = Math.min(fVar.j(), fVar2.j());
            int i17 = 0;
            int i18 = i2;
            while (true) {
                if (i18 >= iMin) {
                    j3 = j5;
                    break;
                }
                j3 = j5;
                if (fVar.b(i18) != fVar2.b(i18)) {
                    break;
                }
                i17++;
                i18++;
                j5 = j3;
            }
            long jA2 = j2 + a(cVar) + j3 + i17 + 1;
            cVar.i(-i17);
            cVar.i(i6);
            int i19 = i2;
            while (true) {
                i7 = i2 + i17;
                if (i19 >= i7) {
                    break;
                }
                cVar.i(fVar.b(i19) & 255);
                i19++;
            }
            if (i5 + 1 == i4) {
                if (i7 == list4.get(i5).j()) {
                    cVar.i(list5.get(i5).intValue());
                    return;
                }
                throw new AssertionError();
            }
            c cVar3 = new c();
            cVar.i((int) ((a(cVar3) + jA2) * (-1)));
            a(jA2, cVar3, i7, list4, i5, i4, list5);
            cVar.a(cVar3, cVar3.f7060c);
            return;
        }
        throw new AssertionError();
    }

    private f a(int i2) {
        return this.f7110a[i2];
    }

    private static int a(c cVar) {
        return (int) (cVar.f7060c / 4);
    }
}
