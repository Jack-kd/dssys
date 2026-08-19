package com.byazt.cc;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.la.e;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 771, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends jx {
    public w(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, com.byazt.td.l lVar, com.byazt.td.w wVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, lVar, wVar, z2);
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void a(View view) {
        super.a(view);
        if (e.w(this.f18733l) || e.j(this.f18733l)) {
            this.f18731a.e();
        } else {
            hp();
        }
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void hp(View view) throws JSONException {
        super.hp(view);
        if (hp()) {
            return;
        }
        this.f18731a.zx().hp();
        if (ec.zy(this.f18733l) || e.w(this.f18733l) || e.j(this.f18733l)) {
            this.f18731a.e();
            return;
        }
        com.byazt.jwq.e eVar = new com.byazt.jwq.e() { // from class: com.byazt.cc.w.1
            @Override // com.byazt.jwq.e
            public void l() {
                w.this.f18731a.k();
                w.this.f18731a.l();
            }
        };
        if (hp(eVar)) {
            this.eb--;
        } else {
            eVar.l();
        }
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void jx(View view) {
        super.jx(view);
        this.f18731a.jx("playable");
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void l(View view) {
        super.l(view);
        if (ec.j(this.f18733l)) {
            this.f18731a.r();
        } else {
            this.f18731a.pu();
        }
    }
}
