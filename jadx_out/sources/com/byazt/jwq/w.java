package com.byazt.jwq;

import android.app.Activity;
import android.view.View;
import com.byazt.ay.a;
import com.byazt.jwq.l;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 740, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends hp {
    public com.byazt.ay.a xs;

    public w(Activity activity, mp mpVar) {
        super(activity, mpVar);
        this.xs = null;
    }

    @Override // com.byazt.jwq.l
    public String hp() {
        return "继续观看" + this.hp + "秒可获得奖励\n确定要退出吗？";
    }

    @Override // com.byazt.jwq.l
    public void jx() {
        com.byazt.ay.a aVar = this.xs;
        if (aVar != null) {
            aVar.dismiss();
        }
    }

    @Override // com.byazt.jwq.hp, com.byazt.jwq.l
    public l.hp l(final e eVar) {
        final com.byazt.ay.a aVar = new com.byazt.ay.a(this.f21736s);
        this.xs = aVar;
        aVar.w("tt_retain_gift").hp(s()).jx("继续观看").j("坚持退出");
        aVar.hp(com.byazt.vi.a.zy(this.f21736s));
        this.xs.hp(new a.hp() { // from class: com.byazt.jwq.w.1
            @Override // com.byazt.ay.a.hp
            public void hp() {
                aVar.dismiss();
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
            }

            @Override // com.byazt.ay.a.hp
            public void l() {
                aVar.dismiss();
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
        this.xs.hp(new View.OnClickListener() { // from class: com.byazt.jwq.w.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aVar.dismiss();
                e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.jx();
                }
            }
        });
        this.xs.show();
        return new l.hp(true, 0, "", this.xs);
    }

    @Override // com.byazt.jwq.l
    public boolean l() {
        com.byazt.ay.a aVar = this.xs;
        return aVar != null && aVar.isShowing();
    }
}
