package com.byazt.fjm;

import com.byazt.fjm.RecyclerView;
import com.byazt.kvo.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, 42})
/* loaded from: classes2.dex */
public class k {
    public final com.byazt.kvo.hp<RecyclerView.cx, hp> hp = new com.byazt.kvo.hp<>();

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.kvo.jx<RecyclerView.cx> f20026l = new com.byazt.kvo.jx<>();

    public interface l {
        void hp(RecyclerView.cx cxVar);

        void hp(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2);

        void jx(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2);

        void l(RecyclerView.cx cxVar, RecyclerView.a.l lVar, RecyclerView.a.l lVar2);
    }

    public void a(RecyclerView.cx cxVar) {
        hp hpVar = this.hp.get(cxVar);
        if (hpVar != null) {
            hpVar.hp &= -2;
        }
    }

    public void eb(RecyclerView.cx cxVar) {
        int iL = this.f20026l.l() - 1;
        while (true) {
            if (iL < 0) {
                break;
            }
            if (cxVar == this.f20026l.jx(iL)) {
                this.f20026l.hp(iL);
                break;
            }
            iL--;
        }
        hp hpVarRemove = this.hp.remove(cxVar);
        if (hpVarRemove != null) {
            hp.hp(hpVarRemove);
        }
    }

    public void hp() {
        this.hp.clear();
        this.f20026l.jx();
    }

    public boolean j(RecyclerView.cx cxVar) {
        hp hpVar = this.hp.get(cxVar);
        return (hpVar == null || (hpVar.hp & 4) == 0) ? false : true;
    }

    public RecyclerView.a.l jx(RecyclerView.cx cxVar) {
        return hp(cxVar, 8);
    }

    public RecyclerView.a.l l(RecyclerView.cx cxVar) {
        return hp(cxVar, 4);
    }

    public void s(RecyclerView.cx cxVar) {
        a(cxVar);
    }

    public void w(RecyclerView.cx cxVar) {
        hp hpVarHp = this.hp.get(cxVar);
        if (hpVarHp == null) {
            hpVarHp = hp.hp();
            this.hp.put(cxVar, hpVarHp);
        }
        hpVarHp.hp |= 1;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID})
    public static class hp {

        /* renamed from: j, reason: collision with root package name */
        public static j.hp<hp> f20027j = new j.l(20);
        public int hp;
        public RecyclerView.a.l jx;

        /* renamed from: l, reason: collision with root package name */
        public RecyclerView.a.l f20028l;

        private hp() {
        }

        public static hp hp() {
            hp hpVarHp = f20027j.hp();
            return hpVarHp == null ? new hp() : hpVarHp;
        }

        public static void l() {
            while (f20027j.hp() != null) {
            }
        }

        public static void hp(hp hpVar) {
            hpVar.hp = 0;
            hpVar.f20028l = null;
            hpVar.jx = null;
            f20027j.hp(hpVar);
        }
    }

    public void jx(RecyclerView.cx cxVar, RecyclerView.a.l lVar) {
        hp hpVarHp = this.hp.get(cxVar);
        if (hpVarHp == null) {
            hpVarHp = hp.hp();
            this.hp.put(cxVar, hpVarHp);
        }
        hpVarHp.jx = lVar;
        hpVarHp.hp |= 8;
    }

    public void l(RecyclerView.cx cxVar, RecyclerView.a.l lVar) {
        hp hpVarHp = this.hp.get(cxVar);
        if (hpVarHp == null) {
            hpVarHp = hp.hp();
            this.hp.put(cxVar, hpVarHp);
        }
        hpVarHp.hp |= 2;
        hpVarHp.f20028l = lVar;
    }

    public void hp(RecyclerView.cx cxVar, RecyclerView.a.l lVar) {
        hp hpVarHp = this.hp.get(cxVar);
        if (hpVarHp == null) {
            hpVarHp = hp.hp();
            this.hp.put(cxVar, hpVarHp);
        }
        hpVarHp.f20028l = lVar;
        hpVarHp.hp |= 4;
    }

    public void l() {
        hp.l();
    }

    public boolean hp(RecyclerView.cx cxVar) {
        hp hpVar = this.hp.get(cxVar);
        return (hpVar == null || (hpVar.hp & 1) == 0) ? false : true;
    }

    private RecyclerView.a.l hp(RecyclerView.cx cxVar, int i2) {
        hp hpVarL;
        RecyclerView.a.l lVar;
        int iHp = this.hp.hp(cxVar);
        if (iHp >= 0 && (hpVarL = this.hp.l(iHp)) != null) {
            int i3 = hpVarL.hp;
            if ((i3 & i2) != 0) {
                int i4 = (~i2) & i3;
                hpVarL.hp = i4;
                if (i2 == 4) {
                    lVar = hpVarL.f20028l;
                } else if (i2 == 8) {
                    lVar = hpVarL.jx;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i4 & 12) == 0) {
                    this.hp.jx(iHp);
                    hp.hp(hpVarL);
                }
                return lVar;
            }
        }
        return null;
    }

    public void hp(long j2, RecyclerView.cx cxVar) {
        this.f20026l.l(j2, cxVar);
    }

    public RecyclerView.cx hp(long j2) {
        return this.f20026l.hp(j2);
    }

    public void hp(l lVar) {
        for (int size = this.hp.size() - 1; size >= 0; size--) {
            RecyclerView.cx cxVarHp = this.hp.hp(size);
            hp hpVarJx = this.hp.jx(size);
            int i2 = hpVarJx.hp;
            if ((i2 & 3) == 3) {
                lVar.hp(cxVarHp);
            } else if ((i2 & 1) != 0) {
                RecyclerView.a.l lVar2 = hpVarJx.f20028l;
                if (lVar2 == null) {
                    lVar.hp(cxVarHp);
                } else {
                    lVar.hp(cxVarHp, lVar2, hpVarJx.jx);
                }
            } else if ((i2 & 14) == 14) {
                lVar.l(cxVarHp, hpVarJx.f20028l, hpVarJx.jx);
            } else if ((i2 & 12) == 12) {
                lVar.jx(cxVarHp, hpVarJx.f20028l, hpVarJx.jx);
            } else if ((i2 & 4) != 0) {
                lVar.hp(cxVarHp, hpVarJx.f20028l, null);
            } else if ((i2 & 8) != 0) {
                lVar.l(cxVarHp, hpVarJx.f20028l, hpVarJx.jx);
            }
            hp.hp(hpVarJx);
        }
    }
}
