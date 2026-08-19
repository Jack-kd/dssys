package com.byazt.yj;

import android.text.TextUtils;
import com.byazt.fub.zy;
import com.byazt.yj.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1283, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public com.byazt.nw.l hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f27968j;
    public com.byazt.nw.s jx;

    /* renamed from: l, reason: collision with root package name */
    public l f27969l;

    @com.byazt.kj.hp(hp = {0, 1, 1283, 8})
    public static class hp {
        public float hp;
        public float jx;

        /* renamed from: l, reason: collision with root package name */
        public float f27970l;
    }

    public w(double d2, int i2, double d3, String str, zy zyVar) {
        this.f27969l = new l(d2, i2, d3, str, zyVar);
    }

    public void hp(hp hpVar) {
        this.f27968j = hpVar;
    }

    public void hp() {
        this.f27969l.hp();
    }

    public void hp(com.byazt.nw.s sVar, float f2, float f3) {
        if (sVar != null) {
            this.jx = sVar;
        }
        com.byazt.nw.s sVar2 = this.jx;
        float fS = sVar2.s();
        float fQ = sVar2.q();
        float f4 = TextUtils.equals(sVar2.e().w().d(), "fixed") ? fQ : 65536.0f;
        this.f27969l.hp();
        this.f27969l.jx(sVar2, fS, f4);
        l.jx jxVarHp = this.f27969l.hp(sVar2);
        com.byazt.nw.l lVar = new com.byazt.nw.l();
        lVar.hp = f2;
        lVar.f23845l = f3;
        if (jxVarHp != null) {
            fS = jxVarHp.hp;
        }
        lVar.jx = fS;
        if (jxVarHp != null) {
            fQ = jxVarHp.f27964l;
        }
        lVar.f23844j = fQ;
        lVar.f23848w = "root";
        lVar.f23846q = 1280.0f;
        lVar.f23842a = sVar2;
        sVar2.jx(f2);
        lVar.f23842a.j(lVar.f23845l);
        lVar.f23842a.w(lVar.jx);
        lVar.f23842a.a(lVar.f23844j);
        com.byazt.nw.l lVarHp = hp(lVar, 0.0f);
        this.hp = lVarHp;
        hp(lVarHp);
    }

    public void hp(com.byazt.nw.l lVar) {
        if (lVar == null) {
            return;
        }
        lVar.f23842a.e().getType();
        List<List<com.byazt.nw.l>> list = lVar.eb;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.byazt.nw.l> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.byazt.nw.l> it = list2.iterator();
                while (it.hasNext()) {
                    hp(it.next());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.nw.l hp(com.byazt.nw.l r37, float r38) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yj.w.hp(com.byazt.nw.l, float):com.byazt.nw.l");
    }

    private com.byazt.nw.q hp(com.byazt.nw.a aVar, l.jx jxVar, l.jx jxVar2) {
        float fTw = aVar.tw();
        float fQh = aVar.qh();
        float fJd = aVar.jd();
        float fT = aVar.t();
        boolean zQu = aVar.qu();
        boolean zAn = aVar.an();
        boolean zPc = aVar.pc();
        boolean zFi = aVar.fi();
        if (!zQu) {
            if (zAn) {
                float f2 = this.f27968j.hp;
                fTw = ((f2 != 0.0f ? Math.min(f2, jxVar.hp) : jxVar.hp) - fJd) - jxVar2.hp;
            } else {
                fTw = 0.0f;
            }
        }
        if (!zPc) {
            if (zFi) {
                float f3 = this.f27968j.f27970l;
                if (f3 == 0.0f) {
                    f3 = jxVar.f27964l;
                }
                fQh = (f3 - fT) - jxVar2.f27964l;
            } else {
                fQh = 0.0f;
            }
        }
        return new com.byazt.nw.q(fTw, fQh);
    }

    private com.byazt.nw.q hp(com.byazt.nw.l lVar, com.byazt.nw.a aVar, float f2, float f3) {
        float f4;
        float f5;
        float f6 = lVar.hp;
        float f7 = lVar.f23845l;
        float fTw = aVar.tw();
        float fQh = aVar.qh();
        float fJd = aVar.jd();
        float fT = aVar.t();
        boolean zQu = aVar.qu();
        boolean zAn = aVar.an();
        boolean zPc = aVar.pc();
        boolean zFi = aVar.fi();
        String strRv = aVar.rv();
        float f8 = lVar.jx;
        float f9 = lVar.f23844j;
        if (TextUtils.equals(strRv, "0")) {
            if (zQu) {
                f6 = lVar.hp + fTw;
            } else if (zAn) {
                f6 = ((lVar.hp + f8) - fJd) - f2;
            }
            if (zPc) {
                f5 = lVar.f23845l;
                f7 = f5 + fQh;
            } else if (zFi) {
                f4 = lVar.f23845l;
                f7 = ((f4 + f9) - fT) - f3;
            }
        } else if (TextUtils.equals(strRv, "1")) {
            f6 = lVar.hp + ((f8 - f2) / 2.0f);
            if (zPc) {
                f5 = lVar.f23845l;
                f7 = f5 + fQh;
            } else if (zFi) {
                f4 = lVar.f23845l;
                f7 = ((f4 + f9) - fT) - f3;
            }
        } else if (TextUtils.equals(strRv, "2")) {
            f7 = lVar.f23845l + ((f9 - f3) / 2.0f);
            if (zQu) {
                f6 = lVar.hp + fTw;
            } else if (zAn) {
                f6 = ((lVar.hp + f8) - fJd) - f2;
            }
        } else if (TextUtils.equals(strRv, "3")) {
            f6 = lVar.hp + ((f8 - f2) / 2.0f);
            f7 = lVar.f23845l + ((f9 - f3) / 2.0f);
        }
        return new com.byazt.nw.q(f6, f7);
    }
}
