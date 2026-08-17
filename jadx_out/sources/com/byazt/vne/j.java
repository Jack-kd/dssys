package com.byazt.vne;

import com.byazt.gak.a;
import com.byazt.gak.e;
import com.byazt.gak.eb;
import com.byazt.gak.gu;
import com.byazt.gak.jl;
import com.byazt.gak.w;
import com.byazt.rlh.s;

@com.byazt.kj.hp(hp = {0, 1, 1443, 38})
/* loaded from: classes3.dex */
public class j {
    public static com.byazt.ewl.hp hp(com.byazt.xl.l lVar, com.byazt.ewl.l lVar2) {
        if (lVar == null) {
            return null;
        }
        int iV = lVar.v();
        switch (lVar.o()) {
            case 1:
                return new com.byazt.gak.hp(lVar2);
            case 2:
                return new eb(lVar2);
            case 3:
                return new jl(lVar2);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return iV == 4 ? new e(lVar2) : iV == 5 ? new w(lVar2) : iV == 3 ? new com.byazt.gak.hp(lVar2) : new e(lVar2);
            case 7:
                return iV == 6 ? new gu(lVar2) : iV == 7 ? new a(lVar2) : iV == 8 ? new eb(lVar2) : new gu(lVar2);
            case 8:
                return new a(lVar2);
            case 9:
                return new w(lVar2);
            case 10:
                if (iV == 1) {
                    return new eb(lVar2);
                }
                if (iV == 2) {
                    return new a(lVar2);
                }
                return null;
        }
    }

    public static com.byazt.ewl.hp hp(String str, com.byazt.xl.l lVar, com.byazt.ewl.l lVar2) {
        if (lVar == null) {
            return null;
        }
        int iV = lVar.v();
        switch (lVar.o()) {
            case 1:
                return new com.byazt.rlh.hp(str, lVar2);
            case 2:
                return new com.byazt.rlh.a(str, lVar2);
            case 3:
                return new s(str, lVar2);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                if (iV == 4) {
                    return new com.byazt.rlh.j(str, lVar2);
                }
                if (iV == 5) {
                    return new com.byazt.rlh.jx(str, lVar2);
                }
                if (iV == 3) {
                    return new com.byazt.rlh.hp(str, lVar2);
                }
                return new com.byazt.rlh.j(str, lVar2);
            case 7:
                if (iV == 6) {
                    return new com.byazt.rlh.eb(str, lVar2);
                }
                if (iV == 7) {
                    return new com.byazt.rlh.w(str, lVar2);
                }
                if (iV == 8) {
                    return new com.byazt.rlh.a(str, lVar2);
                }
                return new com.byazt.rlh.eb(str, lVar2);
            case 8:
                return new com.byazt.rlh.w(str, lVar2);
            case 9:
                return new com.byazt.rlh.jx(str, lVar2);
            case 10:
                if (iV == 1) {
                    return new com.byazt.rlh.a(str, lVar2);
                }
                if (iV == 2) {
                    return new com.byazt.rlh.w(str, lVar2);
                }
                return null;
        }
    }
}
