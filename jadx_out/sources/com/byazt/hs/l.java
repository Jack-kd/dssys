package com.byazt.hs;

import com.byazt.eb.j;
import com.byazt.ju.a;
import com.byazt.ju.w;
import com.byazt.toc.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.fi.jx {
    public jl hp;

    public l(jl jlVar) {
        this.hp = jlVar;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l a() {
        jl jlVar = this.hp;
        return jlVar != null ? new a(jlVar.f_()) : new w();
    }

    @Override // com.byazt.fi.jx
    public void eb() throws NumberFormatException {
        jl jlVar = this.hp;
        if (jlVar != null) {
            jlVar.jx();
        }
    }

    @Override // com.byazt.eb.jx
    public boolean hp() {
        jl jlVar = this.hp;
        if (jlVar != null) {
            return jlVar.d();
        }
        return false;
    }

    @Override // com.byazt.eb.jx
    public com.byazt.eb.l j() {
        jl jlVar = this.hp;
        return jlVar != null ? new a(jlVar.v()) : new w();
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> jx() {
        List<com.byazt.dq.jx> listGu;
        ArrayList arrayList = new ArrayList();
        jl jlVar = this.hp;
        if (jlVar != null && (listGu = jlVar.gu()) != null) {
            for (com.byazt.dq.jx jxVar : listGu) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<j> l() {
        List<com.byazt.dq.l> listE;
        ArrayList arrayList = new ArrayList();
        jl jlVar = this.hp;
        if (jlVar != null && (listE = jlVar.e()) != null) {
            for (com.byazt.dq.l lVar : listE) {
                if (lVar != null) {
                    arrayList.add(new com.byazt.ju.hp(lVar));
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.eb.jx
    public List<com.byazt.eb.l> w() {
        List<com.byazt.dq.jx> listJl;
        ArrayList arrayList = new ArrayList();
        jl jlVar = this.hp;
        if (jlVar != null && (listJl = jlVar.jl()) != null) {
            for (com.byazt.dq.jx jxVar : listJl) {
                if (jxVar != null) {
                    arrayList.add(new a(jxVar));
                }
            }
        }
        return arrayList;
    }
}
