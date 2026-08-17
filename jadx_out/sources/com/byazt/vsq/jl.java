package com.byazt.vsq;

import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.xci.ea;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 19})
/* loaded from: classes3.dex */
public class jl extends hp {
    public jl(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
    }

    public static boolean hp(mp mpVar) {
        return true;
    }

    public static int l(mp mpVar) {
        return 1;
    }

    @Override // com.byazt.vsq.l
    public boolean fi() {
        if (!this.f26630k) {
            return false;
        }
        if (hd.hp(this.f26631l) == 2 && hd.l(this.f26631l) == 3) {
            return false;
        }
        return (hd.hp(this.f26631l) == 2 && hd.l(this.f26631l) == 7) ? false : true;
    }

    @Override // com.byazt.vsq.l
    public boolean nr() {
        return ea.xs(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean pc() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return !eb() || ea.jx(this.f26631l, eb());
    }

    @Override // com.byazt.vsq.l
    public void rk() throws JSONException {
        if (ea.xs(this.f26631l)) {
            boolean zJx = ea.jx();
            boolean zJx2 = ea.jx();
            this.hp.jx(0);
            if (o() > mp() || this.f26637v) {
                com.byazt.ij.a.hp = 0;
                com.byazt.td.w wVar = this.vv;
                boolean z2 = this.f26630k;
                wVar.hp(z2, z2 ? "领取成功" : "", zJx ? "" : "跳过", zJx2, true);
                this.hp.rz();
                return;
            }
            int iA = a(true);
            int iA2 = a(false);
            com.byazt.ij.a.hp = iA;
            boolean z3 = o() > this.hq.jx() || this.hp.nd();
            boolean z4 = !zJx && z3;
            boolean z5 = zJx2 && z3;
            com.byazt.td.w wVar2 = this.vv;
            boolean z6 = this.f26630k;
            StringBuilder sb = new StringBuilder();
            sb.append(iA2);
            sb.append("s");
            sb.append(this.f26630k ? "后可领取奖励" : "");
            wVar2.hp(z6, sb.toString(), z4 ? "跳过" : "", z5, z3);
            l(iA);
        }
    }

    @Override // com.byazt.vsq.l
    public void ru() {
        com.byazt.qk.a aVar = this.ns;
        if (aVar != null) {
            ((com.byazt.sw.hp) aVar.hp(com.byazt.sw.hp.class)).hp((Object) this.hp);
        }
        com.byazt.qk.w wVar = this.cx;
        if (wVar != null) {
            ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp((Object) this.hp);
        }
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return rv();
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.vv.l(this.f26631l.jc());
        if (a()) {
            this.f26634q.w(8);
            this.f26634q.a(8);
            this.vv.hp(false);
        } else {
            this.f26634q.w(0);
            this.f26634q.a(0);
            this.vv.w(true);
        }
        this.hp.f();
    }

    @Override // com.byazt.vsq.hp
    public void xs() {
        super.xs();
        this.hp.f();
    }
}
