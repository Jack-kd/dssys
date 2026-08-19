package com.byazt.bp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.ash.eb;
import com.byazt.dnb.s;
import com.byazt.gog.hp;
import com.byazt.jdb.hp;
import com.byazt.jz.sz;
import com.byazt.ktf.w;
import com.byazt.qa.a;
import com.byazt.qt.v;
import com.byazt.vsq.j;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.mp;
import com.byazt.xci.rz;
import com.byazt.ymw.l;
import com.byazt.ymw.u;
import com.byazt.zn.hq;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoLandscapeActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, 30})
/* loaded from: classes2.dex */
public class jx extends v {

    /* renamed from: a, reason: collision with root package name */
    public long f18630a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.moz.jx f18631b;
    public boolean di;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.mv.l f18632e;
    public com.byazt.gog.hp gu;
    public final Context hp;
    public String jl;
    public final com.byazt.jt.l jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18634k;

    /* renamed from: l, reason: collision with root package name */
    public final mp f18635l;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.mv.hp f18637q;

    /* renamed from: s, reason: collision with root package name */
    public com.byazt.mv.hp f18638s;

    /* renamed from: u, reason: collision with root package name */
    public String f18639u;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public String f18641w;
    public String xs;
    public int zy;
    public final AtomicBoolean eb = new AtomicBoolean(false);

    /* renamed from: v, reason: collision with root package name */
    public int f18640v = 1;
    public int ec = -1;
    public Double sz = null;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18636n = false;
    public boolean ns = false;
    public long cx = System.currentTimeMillis();

    /* renamed from: j, reason: collision with root package name */
    public boolean f18633j = false;

    public jx(Context context, mp mpVar, com.byazt.jt.l lVar) {
        this.hp = context;
        this.f18635l = mpVar;
        this.jx = lVar;
        this.jl = mpVar.hashCode() + mpVar.ns() + hashCode();
        com.byazt.rk.l.hp(mpVar, lVar, 7, getLifecycleId());
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    @Override // com.byazt.qt.v
    public long getExpirationTimestamp() {
        return this.f18630a;
    }

    @Override // com.byazt.qt.v
    public int getInteractionType() {
        mp mpVar = this.f18635l;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.q();
    }

    public String getLifecycleId() {
        mp mpVar = this.f18635l;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    @Override // com.byazt.qt.v
    public Map<String, Object> getMediaExtraInfo() {
        mp mpVar = this.f18635l;
        if (mpVar == null) {
            return null;
        }
        Map<String, Object> mapRp = mpVar.rp();
        if (mapRp == null) {
            mapRp = new HashMap<>();
        }
        mapRp.put("expireTimestamp", Long.valueOf(getExpirationTimestamp()));
        mapRp.put("isRDEnable", Boolean.valueOf(ea.j(this.f18635l)));
        mapRp.put("isPangle", Boolean.TRUE);
        mapRp.put("adSceneType", Integer.valueOf(j.hp(this.f18635l)));
        return mapRp;
    }

    @Override // com.byazt.qt.v
    public a getMediationManager() {
        return new com.byazt.pi.j();
    }

    @Override // com.byazt.qt.v
    public int getRewardVideoAdType() {
        mp mpVar = this.f18635l;
        if (mpVar == null) {
            return -1;
        }
        if (n.jx(mpVar)) {
            return 2;
        }
        if (n.j(this.f18635l)) {
            return 1;
        }
        return com.byazt.we.hp.hp(this.f18635l) ? 3 : 0;
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.ns) {
            return;
        }
        hq.hp(this.f18635l, d2, str, str2);
        this.ns = true;
    }

    public void preloadNextVideo() {
        if (this.f18635l == null || this.jx == null || this.f18634k || this.di || sz.l().pj() != 0) {
            return;
        }
        try {
            if (this.f18633j) {
                eb.hp().hp(this.jx);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        mp mpVar = this.f18635l;
        if (mpVar != null) {
            com.byazt.jz.n.hp(mpVar.n(), lVar, com.byazt.gu.l.class);
        }
    }

    public void setCustomPlayAgain(boolean z2) {
        this.vv = z2;
    }

    @Override // com.byazt.qt.v
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.gu = hp.C0257hp.hp(jxVar);
    }

    public void setExpirationTimestamp(long j2) {
        this.f18630a = j2;
    }

    public void setInsertAdBundle(com.byazt.moz.jx jxVar) {
        this.f18631b = jxVar;
    }

    public void setMetaMd5(String str) {
        this.jl = str;
    }

    public void setPlayAgain(boolean z2) {
        this.f18634k = z2;
    }

    public void setPlayAgainCount(int i2) {
        this.f18640v = i2;
    }

    public void setPlayAgainRewardAmount(String str) {
        this.xs = str;
    }

    public void setPlayAgainRewardName(String str) {
        this.f18639u = str;
    }

    public void setPlayAgainSourceRit(int i2) {
        this.zy = i2;
    }

    public void setPreload() {
        if (this.eb.get()) {
            return;
        }
        this.f18633j = true;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
        this.sz = d2;
    }

    @Override // com.byazt.qt.v
    public void setRewardAdInteractionListener(com.byazt.mv.hp hpVar) {
        if (this.eb.get()) {
            hp.hp(this.jl, hpVar);
        } else {
            this.f18638s = hpVar;
        }
    }

    @Override // com.byazt.qt.v
    public void setRewardPlayAgainController(com.byazt.mv.l lVar) {
        if (!this.eb.get()) {
            this.f18632e = lVar;
        } else {
            setCustomPlayAgain(true);
            hp.hp(rz.l(this.jl), lVar);
        }
    }

    @Override // com.byazt.qt.v
    public void setRewardPlayAgainInteractionListener(com.byazt.mv.hp hpVar) {
        if (this.eb.get()) {
            hp.hp(rz.hp(this.jl), hpVar);
        } else {
            this.f18637q = hpVar;
        }
    }

    public void setSecondAdPage(boolean z2) {
        this.di = z2;
    }

    public void setVideoCacheCallbackResult(int i2) {
        this.ec = i2;
    }

    @Override // com.byazt.qt.v
    public void showRewardVideoAd(Activity activity) {
        com.byazt.rk.l.l(getLifecycleId());
        mp mpVar = this.f18635l;
        String strW_ = mpVar != null ? mpVar.w_() : "";
        mp mpVar2 = this.f18635l;
        new hp.C0281hp().w(mpVar2 != null ? mpVar2.j() : "0").hp("rewarded_video").l("show_start").j(strW_).hp((com.byazt.dhy.hp) null);
        if (activity != null && activity.isFinishing()) {
            u.l("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.eb.get()) {
            return;
        }
        mp mpVar3 = this.f18635l;
        if (mpVar3 != null) {
            com.byazt.ktd.l.hp(mpVar3, "rewarded_video", activity, this.f18641w, this.f18633j);
        }
        this.eb.set(true);
        mp mpVar4 = this.f18635l;
        if (mpVar4 == null || df.v(mpVar4) == null) {
            return;
        }
        if (getInteractionType() == 4) {
            s.hp(new com.byazt.uid.eb("reward_register_download") { // from class: com.byazt.bp.jx.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.ff.s.hp(jx.this.hp, jx.this.f18635l, "rewarded_video").hp(jx.this.gu);
                }
            });
        }
        com.byazt.jz.l.hp().put("reward_video_show_time", System.currentTimeMillis());
        Context context = activity == null ? this.hp : activity;
        if (context == null) {
            context = sz.getContext();
        }
        hp();
        Intent intent = this.f18635l.wf() == 2 ? new Intent(context, (Class<?>) TTRewardVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTRewardVideoActivity.class);
        if (activity == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (this.f18634k) {
            intent.putExtra("is_play_again", true);
            intent.putExtra("play_again_count", this.f18640v);
        } else {
            this.zy = ky.zy(this.f18635l);
        }
        if (this.di) {
            intent.putExtra("is_second_page", true);
        }
        intent.putExtra("source_rit_id", this.zy);
        intent.putExtra("custom_play_again", this.vv);
        com.byazt.jt.l lVar = this.jx;
        if (lVar != null) {
            intent.putExtra("media_extra", lVar.zy());
            intent.putExtra("userData", this.jx.ns());
            intent.putExtra("user_id", this.jx.k());
            intent.putExtra("reward_name", this.jx.b());
            intent.putExtra("reward_amount", this.jx.di());
            intent.putExtra("is_adm", !TextUtils.isEmpty(this.jx.n()));
        }
        if (this.f18634k && !TextUtils.isEmpty(this.f18639u) && !TextUtils.isEmpty(this.xs)) {
            intent.putExtra("reward_again_name", this.f18639u);
            intent.putExtra("reward_again_amount", this.xs);
        }
        intent.putExtra("is_preload", this.f18633j);
        intent.putExtra("object_create_ts", this.cx);
        Double d2 = this.sz;
        intent.putExtra("_client_bidding_aution_price", d2 != null ? String.valueOf(d2) : "");
        if (!TextUtils.isEmpty(this.f18641w)) {
            intent.putExtra("rit_scene", this.f18641w);
        }
        int i2 = this.ec;
        if (i2 != -1) {
            intent.putExtra("key_video_cache_callback", i2);
        }
        ky.hp(intent, this.f18635l);
        intent.putExtra("multi_process_key", this.jl);
        com.byazt.moz.jx jxVar = this.f18631b;
        if (jxVar != null) {
            intent.putExtra("insert_ad_bundle", jxVar.q().toString());
        }
        hp(context, intent);
        com.byazt.kl.j.hp().hp(this.f18635l).hp(7);
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
        if (this.f18636n) {
            return;
        }
        hq.hp(this.f18635l, d2);
        this.f18636n = true;
    }

    private void hp() {
        hp.hp(this.jl, new com.byazt.mv.hp(null) { // from class: com.byazt.bp.jx.2
            @Override // com.byazt.mv.hp
            public void hp(Bundle bundle) {
                com.byazt.rk.l.hp(jx.this.getLifecycleId(), false, bundle != null ? bundle.getBoolean("has_show_event") : false);
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.hp(bundle);
                }
            }

            @Override // com.byazt.mv.hp
            public void j() {
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.j();
                }
            }

            @Override // com.byazt.mv.hp
            public void jx() {
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.jx();
                }
            }

            @Override // com.byazt.mv.hp
            public void l() {
                com.byazt.rk.l.jx(jx.this.getLifecycleId(), 1);
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.l();
                }
            }

            @Override // com.byazt.mv.hp
            public void w() {
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.w();
                }
            }

            @Override // com.byazt.mv.hp
            public void hp() {
                com.byazt.rk.l.jx(jx.this.getLifecycleId());
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.hp();
                }
            }

            @Override // com.byazt.mv.hp
            public void hp(boolean z2, int i2, String str, int i3, String str2) {
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.hp(z2, i2, str, i3, str2);
                }
            }

            @Override // com.byazt.mv.hp
            public void hp(boolean z2, int i2, Bundle bundle) {
                if (jx.this.f18638s != null) {
                    jx.this.f18638s.hp(z2, i2, bundle);
                }
            }
        });
        if (this.f18637q != null) {
            hp.hp(rz.hp(this.jl), this.f18637q);
        }
        if (this.f18632e != null) {
            setCustomPlayAgain(true);
            hp.hp(rz.l(this.jl), this.f18632e);
        }
    }

    private void hp(Context context, Intent intent) {
        com.byazt.ymw.l.hp(context, intent, new l.hp() { // from class: com.byazt.bp.jx.3
            @Override // com.byazt.ymw.l.hp
            public void hp() {
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) {
                u.hp("TTRewardVideoAdImpl", "show reward video error: ", th);
            }
        });
        if (this.jx == null) {
            return;
        }
        com.byazt.vo.hp hpVarHp = com.byazt.vo.hp.hp();
        com.byazt.jt.l lVar = this.jx;
        hpVarHp.hp(lVar, lVar.j());
        if (rz.hp(this.f18635l)) {
            com.byazt.vo.hp.hp().l(this.jx, rz.j(this.f18635l));
        }
        if (!this.di && !this.f18634k) {
            com.byazt.ash.jx.hp(7, this.f18635l);
        }
        preloadNextVideo();
    }

    @Override // com.byazt.qt.v
    public void showRewardVideoAd(Activity activity, Object obj, String str) {
        if (obj == null) {
            u.l("TTRewardVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        String strHp = w.hp(obj);
        if ("customize_scenes".equalsIgnoreCase(strHp)) {
            this.f18641w = str;
        } else {
            this.f18641w = strHp;
        }
        showRewardVideoAd(activity);
    }
}
