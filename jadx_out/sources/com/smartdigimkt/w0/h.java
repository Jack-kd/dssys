package com.smartdigimkt.w0;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public final class h implements f0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f44786a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f44787b;

    public h(i iVar, int i2) {
        this.f44787b = iVar;
        this.f44786a = i2;
    }

    @Override // com.smartdigimkt.w0.f0
    public final boolean a() {
        i iVar = this.f44787b;
        int i2 = this.f44786a;
        if (iVar.f44822w || iVar.f44795H != -9223372036854775807L) {
            return false;
        }
        return iVar.f44798K || iVar.f44816q[i2].f44759c.a();
    }

    @Override // com.smartdigimkt.w0.f0
    public final void b() throws IOException {
        i iVar = this.f44787b;
        com.smartdigimkt.z0.a0 a0Var = iVar.f44808i;
        int i2 = iVar.f44820u;
        IOException iOException = a0Var.f45353c;
        if (iOException != null) {
            throw iOException;
        }
        com.smartdigimkt.z0.w wVar = a0Var.f45352b;
        if (wVar != null) {
            if (i2 == Integer.MIN_VALUE) {
                i2 = wVar.f45419a;
            }
            IOException iOException2 = wVar.f45423e;
            if (iOException2 != null && wVar.f45424f > i2) {
                throw iOException2;
            }
        }
    }

    @Override // com.smartdigimkt.w0.f0
    public final int a(com.smartdigimkt.j0.t tVar, com.smartdigimkt.m0.d dVar, boolean z2) {
        int i2;
        int i3;
        char c2;
        int i4;
        i iVar = this.f44787b;
        int i5 = this.f44786a;
        if (iVar.f44822w || iVar.f44795H != -9223372036854775807L) {
            return -3;
        }
        e0 e0Var = iVar.f44816q[i5];
        boolean z3 = iVar.f44798K;
        long j2 = iVar.f44794G;
        b0 b0Var = e0Var.f44759c;
        com.smartdigimkt.j0.s sVar = e0Var.f44765i;
        a0 a0Var = e0Var.f44760d;
        synchronized (b0Var) {
            i2 = -5;
            if (b0Var.a()) {
                int iC = b0Var.c(b0Var.f44744l);
                if (!z2 && b0Var.f44740h[iC] == sVar) {
                    if (dVar.f41702c == null && dVar.f41704e == 0) {
                        i3 = 1;
                        c2 = 65533;
                    } else {
                        dVar.f41703d = b0Var.f44738f[iC];
                        dVar.f41700a = b0Var.f44737e[iC];
                        a0Var.f44725a = b0Var.f44736d[iC];
                        i3 = 1;
                        a0Var.f44726b = b0Var.f44735c[iC];
                        a0Var.f44727c = b0Var.f44739g[iC];
                        b0Var.f44744l++;
                        c2 = 65532;
                    }
                } else {
                    i3 = 1;
                    tVar.f41012a = b0Var.f44740h[iC];
                    c2 = 65531;
                }
            } else if (z3) {
                dVar.f41700a = 4;
                i3 = 1;
                c2 = 65532;
            } else {
                com.smartdigimkt.j0.s sVar2 = b0Var.f44749q;
                if (sVar2 == null || (!z2 && sVar2 == sVar)) {
                    i3 = 1;
                    c2 = 65533;
                } else {
                    tVar.f41012a = sVar2;
                    c2 = 65531;
                    i3 = 1;
                }
            }
        }
        if (c2 == 65531) {
            e0Var.f44765i = tVar.f41012a;
            i4 = -4;
        } else if (c2 == 65532) {
            if (!dVar.b(4)) {
                if (dVar.f41703d < j2) {
                    dVar.f41700a = Integer.MIN_VALUE | dVar.f41700a;
                }
                if (dVar.b(C.ENCODING_PCM_32BIT)) {
                    a0 a0Var2 = e0Var.f44760d;
                    long j3 = a0Var2.f44726b;
                    int iJ = i3;
                    e0Var.f44761e.b(iJ);
                    e0Var.a(j3, e0Var.f44761e.f39286a, iJ);
                    long j4 = j3 + 1;
                    byte b3 = e0Var.f44761e.f39286a[0];
                    int i6 = (b3 & com.anythink.core.common.s.a.c.f7560a) != 0 ? iJ : 0;
                    int i7 = b3 & 127;
                    com.smartdigimkt.m0.b bVar = dVar.f41701b;
                    if (bVar.f41694a == null) {
                        bVar.f41694a = new byte[16];
                    }
                    e0Var.a(j4, bVar.f41694a, i7);
                    long j5 = j4 + i7;
                    if (i6 != 0) {
                        e0Var.f44761e.b(2);
                        e0Var.a(j5, e0Var.f44761e.f39286a, 2);
                        j5 += 2;
                        iJ = e0Var.f44761e.j();
                    }
                    com.smartdigimkt.m0.b bVar2 = dVar.f41701b;
                    int[] iArr = bVar2.f41695b;
                    if (iArr == null || iArr.length < iJ) {
                        iArr = new int[iJ];
                    }
                    int[] iArr2 = iArr;
                    int[] iArr3 = bVar2.f41696c;
                    if (iArr3 == null || iArr3.length < iJ) {
                        iArr3 = new int[iJ];
                    }
                    int[] iArr4 = iArr3;
                    if (i6 != 0) {
                        int i8 = iJ * 6;
                        e0Var.f44761e.b(i8);
                        e0Var.a(j5, e0Var.f44761e.f39286a, i8);
                        j5 += i8;
                        e0Var.f44761e.c(0);
                        for (int i9 = 0; i9 < iJ; i9++) {
                            iArr2[i9] = e0Var.f44761e.j();
                            iArr4[i9] = e0Var.f44761e.h();
                        }
                    } else {
                        iArr2[0] = 0;
                        iArr4[0] = a0Var2.f44725a - ((int) (j5 - a0Var2.f44726b));
                    }
                    com.smartdigimkt.o0.m mVar = a0Var2.f44727c;
                    com.smartdigimkt.m0.b bVar3 = dVar.f41701b;
                    bVar3.a(iJ, iArr2, iArr4, mVar.f42208b, bVar3.f41694a, mVar.f42207a, mVar.f42209c, mVar.f42210d);
                    long j6 = a0Var2.f44726b;
                    int i10 = (int) (j5 - j6);
                    a0Var2.f44726b = j6 + i10;
                    a0Var2.f44725a -= i10;
                }
                int i11 = e0Var.f44760d.f44725a;
                ByteBuffer byteBuffer = dVar.f41702c;
                if (byteBuffer == null) {
                    dVar.f41702c = dVar.a(i11);
                } else {
                    int iCapacity = byteBuffer.capacity();
                    int iPosition = dVar.f41702c.position();
                    int i12 = i11 + iPosition;
                    if (iCapacity < i12) {
                        ByteBuffer byteBufferA = dVar.a(i12);
                        if (iPosition > 0) {
                            dVar.f41702c.position(0);
                            dVar.f41702c.limit(iPosition);
                            byteBufferA.put(dVar.f41702c);
                        }
                        dVar.f41702c = byteBufferA;
                    }
                }
                a0 a0Var3 = e0Var.f44760d;
                long j7 = a0Var3.f44726b;
                ByteBuffer byteBuffer2 = dVar.f41702c;
                int i13 = a0Var3.f44725a;
                while (true) {
                    c0 c0Var = e0Var.f44763g;
                    if (j7 < c0Var.f44751b) {
                        break;
                    }
                    e0Var.f44763g = c0Var.f44754e;
                }
                while (i13 > 0) {
                    int iMin = Math.min(i13, (int) (e0Var.f44763g.f44751b - j7));
                    c0 c0Var2 = e0Var.f44763g;
                    com.smartdigimkt.z0.a aVar = c0Var2.f44753d;
                    byteBuffer2.put(aVar.f45349a, ((int) (j7 - c0Var2.f44750a)) + aVar.f45350b, iMin);
                    i13 -= iMin;
                    j7 += iMin;
                    c0 c0Var3 = e0Var.f44763g;
                    if (j7 == c0Var3.f44751b) {
                        e0Var.f44763g = c0Var3.f44754e;
                    }
                }
            }
            i4 = -4;
            i2 = -4;
        } else {
            if (c2 != 65533) {
                throw new IllegalStateException();
            }
            i4 = -4;
            i2 = -3;
        }
        if (i2 == i4) {
            iVar.a(i5);
            return i2;
        }
        if (i2 == -3) {
            iVar.b(i5);
        }
        return i2;
    }

    @Override // com.smartdigimkt.w0.f0
    public final int a(long j2) {
        i iVar = this.f44787b;
        int i2 = this.f44786a;
        int i3 = 0;
        if (!iVar.f44822w && iVar.f44795H == -9223372036854775807L) {
            e0 e0Var = iVar.f44816q[i2];
            if (iVar.f44798K && j2 > e0Var.b()) {
                b0 b0Var = e0Var.f44759c;
                synchronized (b0Var) {
                    int i4 = b0Var.f44741i;
                    i3 = i4 - b0Var.f44744l;
                    b0Var.f44744l = i4;
                }
            } else {
                int iA = e0Var.a(j2, true);
                if (iA != -1) {
                    i3 = iA;
                }
            }
            if (i3 > 0) {
                iVar.a(i2);
                return i3;
            }
            iVar.b(i2);
        }
        return i3;
    }
}
