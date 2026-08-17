package com.byazt.bp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.dnb.s;
import com.byazt.gog.hp;
import com.byazt.jdb.hp;
import com.byazt.jz.sz;
import com.byazt.ktf.w;
import com.byazt.qt.gu;
import com.byazt.uid.eb;
import com.byazt.vsq.j;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.l;
import com.byazt.ymw.u;
import com.byazt.zn.hq;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoLandscapeActivity;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME, 34})
/* loaded from: classes2.dex */
public class l extends gu {
    public final String eb;
    public final Context hp;

    /* renamed from: j, reason: collision with root package name */
    public String f18644j;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.pk.hp f18645k;

    /* renamed from: l, reason: collision with root package name */
    public final mp f18646l;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.moz.jx f18649u;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.gog.hp f18650v;

    /* renamed from: w, reason: collision with root package name */
    public long f18651w;
    public boolean xs;
    public com.byazt.jt.l zy;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f18642a = new AtomicBoolean(false);

    /* renamed from: s, reason: collision with root package name */
    public int f18648s = -1;

    /* renamed from: q, reason: collision with root package name */
    public Double f18647q = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18643e = false;
    public boolean gu = false;
    public long jl = System.currentTimeMillis();
    public boolean jx = false;

    public l(Context context, mp mpVar, com.byazt.jt.l lVar) {
        this.hp = context;
        this.f18646l = mpVar;
        this.zy = lVar;
        this.eb = mpVar.hashCode() + mpVar.ns() + hashCode();
        com.byazt.rk.l.hp(mpVar, lVar, 8, getLifecycleId());
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.l.jx(getLifecycleId(), 3);
    }

    @Override // com.byazt.qt.gu
    public long getExpirationTimestamp() {
        return this.f18651w;
    }

    @Override // com.byazt.qt.gu
    public int getFullVideoAdType() {
        mp mpVar = this.f18646l;
        if (mpVar == null) {
            return -1;
        }
        if (n.jx(mpVar)) {
            return 2;
        }
        if (n.j(this.f18646l)) {
            return 1;
        }
        return com.byazt.we.hp.hp(this.f18646l) ? 3 : 0;
    }

    @Override // com.byazt.qt.gu
    public int getInteractionType() {
        mp mpVar = this.f18646l;
        if (mpVar == null) {
            return -1;
        }
        return mpVar.q();
    }

    public String getLifecycleId() {
        mp mpVar = this.f18646l;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    @Override // com.byazt.qt.gu
    public Map<String, Object> getMediaExtraInfo() {
        mp mpVar = this.f18646l;
        if (mpVar == null) {
            return null;
        }
        Map<String, Object> mapRp = mpVar.rp();
        mapRp.put("expireTimestamp", Long.valueOf(getExpirationTimestamp()));
        mapRp.put("adSceneType", Integer.valueOf(j.hp(this.f18646l)));
        return mapRp;
    }

    @Override // com.byazt.qt.gu
    public com.byazt.qa.j getMediationManager() {
        return new com.byazt.pi.l();
    }

    @Override // com.byazt.qt.s
    public void loss(Double d2, String str, String str2) {
        if (this.gu) {
            return;
        }
        hq.hp(this.f18646l, d2, str, str2);
        this.gu = true;
    }

    public void preloadNextVideo() {
        if (this.f18646l == null || this.zy == null || this.xs || sz.l().pj() != 0) {
            return;
        }
        try {
            boolean z2 = this.jx;
            if (this.zy == null || !z2) {
                return;
            }
            com.byazt.ash.l.hp().hp(this.zy);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.qt.s
    public void setAdInteractionListener(com.byazt.gu.l lVar) {
        mp mpVar = this.f18646l;
        if (mpVar != null) {
            com.byazt.jz.n.hp(mpVar.n(), lVar, com.byazt.gu.l.class);
        }
    }

    @Override // com.byazt.qt.gu
    public void setDownloadListener(com.byazt.gu.jx jxVar) {
        this.f18650v = hp.C0257hp.hp(jxVar);
    }

    public void setExpirationTimestamp(long j2) {
        this.f18651w = j2;
    }

    @Override // com.byazt.qt.gu
    public void setFullScreenVideoAdInteractionListener(com.byazt.pk.hp hpVar) {
        if (this.f18642a.get()) {
            hp.hp(this.eb, hpVar);
        }
        this.f18645k = hpVar;
    }

    public void setInsertAdBundle(com.byazt.moz.jx jxVar) {
        this.f18649u = jxVar;
    }

    public void setPreload() {
        if (this.f18642a.get()) {
            return;
        }
        this.jx = true;
    }

    @Override // com.byazt.qt.s
    public void setPrice(Double d2) {
        this.f18647q = d2;
    }

    public void setSecondAdPage(boolean z2) {
        this.xs = z2;
    }

    public void setVideoCacheCallbackResult(int i2) {
        this.f18648s = i2;
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity) {
        com.byazt.rk.l.l(getLifecycleId());
        mp mpVar = this.f18646l;
        String strW_ = mpVar != null ? mpVar.w_() : "";
        mp mpVar2 = this.f18646l;
        new hp.C0281hp().w(mpVar2 != null ? mpVar2.j() : "0").hp("fullscreen_interstitial_ad").l("show_start").j(strW_).hp((com.byazt.dhy.hp) null);
        if (activity != null && activity.isFinishing()) {
            u.l("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.f18642a.get()) {
            return;
        }
        mp mpVar3 = this.f18646l;
        if (mpVar3 != null) {
            com.byazt.ktd.l.hp(mpVar3, "fullscreen_interstitial_ad", activity, this.f18644j, this.jx);
        }
        this.f18642a.set(true);
        mp mpVar4 = this.f18646l;
        if (mpVar4 != null) {
            if (df.v(mpVar4) == null && this.f18646l.vi() == null) {
                return;
            }
            if (getInteractionType() == 4) {
                s.hp(new eb("full_register_download") { // from class: com.byazt.bp.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.ff.s.hp(l.this.hp, l.this.f18646l, "fullscreen_interstitial_ad").hp(l.this.f18650v);
                    }
                });
            }
            com.byazt.jz.l.hp().get("full_video_show_time", System.currentTimeMillis());
            Context context = activity == null ? this.hp : activity;
            if (context == null) {
                context = sz.getContext();
            }
            hp();
            Intent intent = this.f18646l.wf() == 2 ? new Intent(context, (Class<?>) TTFullScreenVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTFullScreenVideoActivity.class);
            if (activity == null) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (this.zy != null) {
                intent.putExtra("is_adm", !TextUtils.isEmpty(r7.n()));
            }
            intent.putExtra("is_preload", this.jx);
            intent.putExtra("object_create_ts", this.jl);
            Double d2 = this.f18647q;
            intent.putExtra("_client_bidding_aution_price", d2 != null ? String.valueOf(d2) : "");
            if (!TextUtils.isEmpty(this.f18644j)) {
                intent.putExtra("rit_scene", this.f18644j);
            }
            int i2 = this.f18648s;
            if (i2 != -1) {
                intent.putExtra("key_video_cache_callback", i2);
            }
            if (this.xs) {
                intent.putExtra("is_second_page", true);
            }
            ky.hp(intent, this.f18646l);
            intent.putExtra("multi_process_key", this.eb);
            com.byazt.moz.jx jxVar = this.f18649u;
            if (jxVar != null) {
                intent.putExtra("insert_ad_bundle", jxVar.q().toString());
            }
            hp(context, intent);
            com.byazt.kl.j.hp().hp(this.f18646l).hp(8);
        }
    }

    @Override // com.byazt.qt.s
    public void win(Double d2) {
        if (this.f18643e) {
            return;
        }
        hq.hp(this.f18646l, d2);
        this.f18643e = true;
    }

    private void hp() {
        if (this.f18645k != null) {
            hp.hp(this.eb, new com.byazt.pk.hp(null) { // from class: com.byazt.bp.l.2
                @Override // com.byazt.pk.hp
                public void hp(Bundle bundle) {
                    com.byazt.rk.l.hp(l.this.getLifecycleId(), false, bundle != null ? bundle.getBoolean("has_show_event") : false);
                    if (l.this.f18645k != null) {
                        l.this.f18645k.hp(bundle);
                    }
                }

                @Override // com.byazt.pk.hp
                public void j() {
                    if (l.this.f18645k != null) {
                        l.this.f18645k.j();
                    }
                }

                @Override // com.byazt.pk.hp
                public void jx() {
                    if (l.this.f18645k != null) {
                        l.this.f18645k.jx();
                    }
                }

                @Override // com.byazt.pk.hp
                public void l() {
                    com.byazt.rk.l.jx(l.this.getLifecycleId(), 1);
                    if (l.this.f18645k != null) {
                        l.this.f18645k.l();
                    }
                }

                @Override // com.byazt.pk.hp
                public void hp() {
                    com.byazt.rk.l.jx(l.this.getLifecycleId());
                    if (l.this.f18645k != null) {
                        l.this.f18645k.hp();
                    }
                }
            });
        }
    }

    private void hp(Context context, Intent intent) {
        com.byazt.ymw.l.hp(context, intent, new l.hp() { // from class: com.byazt.bp.l.3
            @Override // com.byazt.ymw.l.hp
            public void hp() {
            }

            @Override // com.byazt.ymw.l.hp
            public void hp(Throwable th) {
                u.hp("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
            }
        });
        if (this.zy == null) {
            return;
        }
        com.byazt.vo.hp hpVarHp = com.byazt.vo.hp.hp();
        com.byazt.jt.l lVar = this.zy;
        hpVarHp.hp(lVar, lVar.j());
        if (!this.xs) {
            com.byazt.ash.jx.hp(8, this.f18646l);
        }
        preloadNextVideo();
    }

    @Override // com.byazt.qt.gu
    public void showFullScreenVideoAd(Activity activity, Object obj, String str) {
        if (obj == null) {
            u.l("TTFullScreenVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        String strHp = w.hp(obj);
        if ("customize_scenes".equalsIgnoreCase(strHp)) {
            this.f18644j = str;
        } else {
            this.f18644j = strHp;
        }
        showFullScreenVideoAd(activity);
    }
}
