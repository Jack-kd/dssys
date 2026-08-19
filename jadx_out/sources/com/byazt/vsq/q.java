package com.byazt.vsq;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.sz;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.q;
import com.byazt.xci.y;
import com.byazt.ymw.u;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 150})
/* loaded from: classes3.dex */
public class q extends hp {
    public boolean nu;
    public boolean ud;

    public q(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = false;
        this.nu = false;
        this.nu = com.byazt.jf.l.hp(mpVar) == 1;
    }

    public static int hp(mp mpVar) {
        return 9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yj() {
        if (this.ud) {
            return;
        }
        this.ud = true;
        q(false);
        this.hp.finish();
    }

    @Override // com.byazt.vsq.hp
    public boolean a() {
        return false;
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public void jx() throws JSONException {
        com.byazt.yni.w wVar;
        this.hp.l(true, true);
        this.f26634q.jx(true);
        this.f26628e.jx(false);
        this.vv.hp(false);
        int displayDpi = ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDisplayDpi();
        q.hp hpVarL = new q.hp().a(-1.0f).w(-1.0f).j(-1.0f).jx(-1.0f).l(-1L).hp(-1L).j(-1).w(-1).a(-1024).jx(com.byazt.jz.s.u().l() ? 1 : 2).l(displayDpi).hp(xh.a(sz.getContext())).l(xh.eb(sz.getContext()));
        mp mpVar = this.f26631l;
        if (mpVar != null && mpVar.wf() == 1 && (wVar = this.f26628e) != null) {
            hpVarL.hp(wVar.a() ? this.f26628e.e() : (byte) 0);
        }
        hpVarL.hp(com.byazt.fy.s.l(this.f26631l));
        com.byazt.jdb.j.hp("click", this.f26631l, hpVarL.hp(), this.jl, true, this.hp.mp(), -1, false, false);
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return hp(this.f26631l);
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        FrameLayout frameLayout = new FrameLayout(this.hp);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return false;
    }

    @Override // com.byazt.vsq.l
    public void wt() {
    }

    public static boolean hp(Context context, mp mpVar) {
        long jEb;
        if (!y.j(mpVar)) {
            return false;
        }
        if (ms.hp(mpVar)) {
            jEb = ms.l(mpVar) * 1000;
        } else {
            jEb = df.v(mpVar) != null ? (long) (df.eb(mpVar) * 1000.0d) : 0L;
        }
        long jMin = Math.min(ea.hp(), (long) (jEb * (mpVar.sv() / 100.0f)));
        HashMap map = new HashMap(3);
        map.put("reward_countdown", Long.valueOf(jMin));
        map.put("event_tag", "rewarded_video");
        map.put("reward_live_scene", Integer.valueOf(com.byazt.jf.l.hp(mpVar)));
        return com.byazt.yx.l.hp().hp(context, mpVar, (Map<String, Object>) map) == 0;
    }

    private void q(final boolean z2) {
        if (this.f26634q instanceof com.byazt.yni.q) {
            com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.vsq.q.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.yni.l lVar = q.this.f26634q;
                    if (lVar == null) {
                        return;
                    }
                    com.byazt.yni.q qVar = (com.byazt.yni.q) lVar;
                    if (z2) {
                        qVar.l();
                    } else {
                        qVar.jx();
                    }
                }
            });
        }
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        com.byazt.yni.q qVar = new com.byazt.yni.q(this.hp, this.f26631l, z2);
        this.f26634q = qVar;
        return qVar;
    }

    @Override // com.byazt.vsq.hp
    public void hp(int i2, int i3, Intent intent) {
        super.hp(i2, i3, intent);
        if (i2 != 1) {
            this.hp.finish();
            return;
        }
        if (intent == null || intent.getExtras() == null) {
            this.hp.finish();
            return;
        }
        if (intent.getExtras().getLong("csj.reward_countdown_duration_ms") <= 0) {
            int i4 = intent.getExtras().getInt("csj.reward_auth_status", 0);
            if (this.nu && i4 == 1) {
                this.hp.finish();
                return;
            }
            u.l("rewardAuthFlag", "verify rew....");
            this.hp.j(0);
            q(true);
            this.hp.ky().postDelayed(new Runnable() { // from class: com.byazt.vsq.q.1
                @Override // java.lang.Runnable
                public void run() {
                    q.this.yj();
                }
            }, 2000L);
            return;
        }
        this.hp.finish();
    }

    @Override // com.byazt.vsq.hp
    public void hp(int i2) {
        super.hp(i2);
        if (i2 == 0) {
            yj();
        }
    }
}
