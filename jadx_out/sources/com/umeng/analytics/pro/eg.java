package com.umeng.analytics.pro;

import com.umeng.analytics.pro.dx;

/* loaded from: classes5.dex */
public class eg {

    /* renamed from: a, reason: collision with root package name */
    private static int f49279a = Integer.MAX_VALUE;

    public static void a(int i2) {
        f49279a = i2;
    }

    public static void a(ed edVar, byte b3) throws dk {
        a(edVar, b3, f49279a);
    }

    public static void a(ed edVar, byte b3, int i2) throws dk {
        if (i2 > 0) {
            int i3 = 0;
            switch (b3) {
                case 2:
                    edVar.t();
                    return;
                case 3:
                    edVar.u();
                    return;
                case 4:
                    edVar.y();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    edVar.v();
                    return;
                case 8:
                    edVar.w();
                    return;
                case 10:
                    edVar.x();
                    return;
                case 11:
                    edVar.A();
                    return;
                case 12:
                    edVar.j();
                    while (true) {
                        byte b4 = edVar.l().f49250b;
                        if (b4 == 0) {
                            edVar.k();
                            return;
                        } else {
                            a(edVar, b4, i2 - 1);
                            edVar.m();
                        }
                    }
                case 13:
                    ea eaVarN = edVar.n();
                    while (i3 < eaVarN.f49262c) {
                        int i4 = i2 - 1;
                        a(edVar, eaVarN.f49260a, i4);
                        a(edVar, eaVarN.f49261b, i4);
                        i3++;
                    }
                    edVar.o();
                    return;
                case 14:
                    eh ehVarR = edVar.r();
                    while (i3 < ehVarR.f49281b) {
                        a(edVar, ehVarR.f49280a, i2 - 1);
                        i3++;
                    }
                    edVar.s();
                    return;
                case 15:
                    dz dzVarP = edVar.p();
                    while (i3 < dzVarP.f49253b) {
                        a(edVar, dzVarP.f49252a, i2 - 1);
                        i3++;
                    }
                    edVar.q();
                    return;
            }
        } else {
            throw new dk("Maximum skip depth exceeded");
        }
    }

    public static ef a(byte[] bArr, ef efVar) {
        if (bArr[0] > 16) {
            return new dx.a();
        }
        return (bArr.length <= 1 || (bArr[1] & com.anythink.core.common.s.a.c.f7560a) == 0) ? efVar : new dx.a();
    }
}
