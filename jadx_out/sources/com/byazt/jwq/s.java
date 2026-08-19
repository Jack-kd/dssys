package com.byazt.jwq;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import com.byazt.ay.a;
import com.byazt.jwq.l;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.xci.nd;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 740, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes.dex */
public class s extends hp {
    public String vv;
    public com.byazt.ay.a xs;

    public s(Activity activity, mp mpVar) {
        super(activity, mpVar);
        this.xs = null;
    }

    @Override // com.byazt.jwq.l
    public String hp() {
        return this.vv;
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
        hp(aVar, this.f21729j);
        this.xs.hp(new a.hp() { // from class: com.byazt.jwq.s.1
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
        this.xs.show();
        return new l.hp(true, 0, "", this.xs);
    }

    private void hp(com.byazt.ay.a aVar, boolean z2) {
        if (n.l(this.eb)) {
            int iPk = this.eb.pk();
            int iHp = nd.hp(this.eb);
            if (iPk == 0) {
                String str = "试玩时长达标才能领取奖励";
                if (iHp != 1 && !z2 && !this.jx) {
                    str = "试玩后才能领取奖励";
                }
                this.vv = str;
                aVar.w("tt_retain_gift").hp(s()).jx("继续试玩").j("坚持退出");
                aVar.hp(com.byazt.vi.a.q(this.f21736s));
                return;
            }
            if (iPk != 1) {
                if (iPk != 3) {
                    return;
                }
                this.vv = "确定退出吗?";
                Activity activity = this.f21736s;
                if (activity != null) {
                    Intent intent = activity.getIntent();
                    this.vv = String.format("再看%s秒可得奖励", Integer.valueOf(intent != null ? intent.getIntExtra("remainTime", 0) : 0));
                }
                hp(aVar, s(), "继续观看", "坚持退出");
                aVar.hp(Color.parseColor("#FC1D56"));
                return;
            }
            boolean zJx = ec.jx(this.eb);
            if (iHp != 0 || zJx) {
                this.vv = String.format("再看%s秒可得奖励", Integer.valueOf(this.hp));
            } else {
                this.vv = "未满足奖励要求，需要继续浏览";
            }
            if (zJx) {
                aVar.l("确定退出吗?");
                hp(aVar, s(), "继续观看", "坚持退出");
            } else {
                aVar.w("tt_reward_coin").hp(Color.parseColor("#FC1D56")).hp(s()).jx("继续观看").j("坚持退出");
                aVar.hp(com.byazt.vi.a.q(this.f21736s));
            }
        }
    }

    @Override // com.byazt.jwq.l
    public boolean l() {
        com.byazt.ay.a aVar = this.xs;
        return aVar != null && aVar.isShowing();
    }

    private void hp(com.byazt.ay.a aVar, String str, String str2, String str3) {
        aVar.w("tt_reward_browse_multi_icon").hp(str).jx(str2).j(str3);
        aVar.hp(com.byazt.vi.a.lv(this.f21736s));
    }
}
