package com.byazt.iw;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.anythink.core.common.f.b;
import com.byazt.dnb.s;
import com.byazt.iw.hp;
import com.byazt.jdb.j;
import com.byazt.jwq.e;
import com.byazt.jz.k;
import com.byazt.jz.sz;
import com.byazt.nk.TTProgressBar;
import com.byazt.qt.v;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.rz;
import com.byazt.ymw.hq;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 698, 34})
/* loaded from: classes.dex */
public class l implements hp {

    /* renamed from: a, reason: collision with root package name */
    public int f21245a;
    public final hp.InterfaceC0276hp hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.zr.hp f21249l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f21251s;
    public final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f21247j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f21252w = new AtomicBoolean(false);
    public int eb = 0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f21250q = true;

    /* renamed from: e, reason: collision with root package name */
    public String f21246e = "";
    public String gu = "";
    public String jl = "";
    public String zy = "";

    /* renamed from: k, reason: collision with root package name */
    public String f21248k = "";

    public l(hp.InterfaceC0276hp interfaceC0276hp) {
        this.hp = interfaceC0276hp;
    }

    private void gu() {
        w.l(new eb("executeMultiProcessCallback") { // from class: com.byazt.iw.l.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(5)).jx(rz.l(l.this.hp.l()), "recycleRes", null);
                } catch (Throwable unused) {
                }
            }
        }, 5);
    }

    private boolean e() {
        if (!rz.l(this.hp.hp())) {
            return false;
        }
        if (this.jx.get()) {
            return true;
        }
        e eVar = new e() { // from class: com.byazt.iw.l.4
            @Override // com.byazt.jwq.e
            public void hp() {
                if (l.this.jx.get()) {
                    return;
                }
                if (l.this.f21249l != null) {
                    l.this.f21249l.j();
                }
                l.this.q();
                j.hp(l.this.hp.hp(), "reward_endcard", "reward_again", "popup");
            }

            @Override // com.byazt.jwq.e
            public void l() {
                if (l.this.jx.get()) {
                    return;
                }
                j.hp(l.this.hp.hp(), "reward_endcard", "popup_cancel", (String) null);
                l.this.hp.jx();
            }
        };
        com.byazt.zr.l lVar = new com.byazt.zr.l(this.hp.getActivity(), this.hp.hp());
        this.f21249l = lVar;
        lVar.j(this.f21246e);
        this.f21249l.jx(this.gu);
        this.f21249l.hp(this.f21248k);
        this.hp.j();
        return this.f21249l.hp(eVar).jx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        try {
            this.jx.set(true);
            String strJ = rz.j(this.hp.hp());
            if (TextUtils.isEmpty(strJ)) {
                strJ = String.valueOf(this.f21245a);
            }
            if (TextUtils.isEmpty(strJ)) {
                strJ = String.valueOf(ky.zy(this.hp.hp()));
            }
            com.byazt.ash.eb.hp().hp(com.byazt.vo.hp.hp().hp(this.hp.hp(), strJ), rz.jx(this.hp.hp()), this.eb, new com.byazt.ash.j(new com.byazt.p000if.eb(null) { // from class: com.byazt.iw.l.3
                @Override // com.byazt.p000if.eb
                public void hp() {
                }

                @Override // com.byazt.p000if.eb
                public void l(v vVar) {
                }

                @Override // com.byazt.p000if.eb
                public void hp(int i2, String str) {
                    s.hp(new Runnable() { // from class: com.byazt.iw.l.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            l.this.j("当前无新视频，请点击重试");
                            l.this.jx.set(false);
                            if (l.this.f21249l != null) {
                                l.this.f21249l.w();
                            }
                            l.this.hp.hp(8, null);
                        }
                    });
                }

                @Override // com.byazt.p000if.eb
                public void hp(final v vVar) {
                    s.hp(new Runnable() { // from class: com.byazt.iw.l.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            v vVar2 = vVar;
                            if (vVar2 instanceof com.byazt.bp.jx) {
                                com.byazt.bp.jx jxVar = (com.byazt.bp.jx) vVar2;
                                jxVar.setPlayAgain(true);
                                jxVar.setPlayAgainSourceRit(l.this.f21245a);
                                jxVar.setPlayAgainCount(l.this.eb + 1);
                                jxVar.setMetaMd5(l.this.hp.l());
                                if (!TextUtils.isEmpty(l.this.f21246e) && !TextUtils.isEmpty(l.this.gu)) {
                                    jxVar.setPlayAgainRewardAmount(l.this.gu);
                                    jxVar.setPlayAgainRewardName(l.this.f21246e);
                                }
                                jxVar.setCustomPlayAgain(l.this.f21251s);
                                jxVar.showRewardVideoAd(l.this.hp.getActivity());
                                l.this.hp.w();
                                l.this.f21247j.set(true);
                            } else {
                                l.this.j("当前无新视频，请点击重试");
                                l.this.jx.set(false);
                            }
                            l.this.hp.hp(8, null);
                        }
                    });
                }
            }));
        } catch (Throwable unused) {
            this.jx.set(false);
            j("当前无新视频，请退出后重试");
        }
    }

    @Override // com.byazt.iw.hp
    public String a() {
        return this.jl;
    }

    @Override // com.byazt.iw.hp
    public String eb() {
        return this.zy;
    }

    @Override // com.byazt.iw.hp
    public void j() {
        hp.InterfaceC0276hp interfaceC0276hp = this.hp;
        if (interfaceC0276hp == null || interfaceC0276hp.getActivity() == null || this.hp.hp() == null || !rz.hp(this.hp.hp())) {
            return;
        }
        if (!this.f21251s) {
            boolean z2 = this.eb == 0;
            this.hp.hp(z2, null, null);
            this.f21250q = z2;
        } else {
            this.f21250q = false;
            this.hp.hp(false, this.f21246e, this.gu);
            final int i2 = this.eb + 1;
            w.l(new eb("executeMultiProcessCallback") { // from class: com.byazt.iw.l.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        k kVarHp = k.hp.hp(com.byazt.pjz.hp.hp(sz.getContext()).hp(5));
                        Bundle bundle = new Bundle();
                        bundle.putInt("callback_extra_key_next_play_again_count", i2);
                        l.this.hp(kVarHp.jx(rz.l(l.this.hp.l()), "getPlayAgainCondition", bundle));
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
        }
    }

    @Override // com.byazt.iw.hp
    public boolean jx(int i2) {
        hp.InterfaceC0276hp interfaceC0276hp = this.hp;
        if (interfaceC0276hp == null || interfaceC0276hp.getActivity() == null || this.hp.hp() == null || this.jx.get() || !this.f21250q) {
            return false;
        }
        if (i2 == 1) {
            hp.InterfaceC0276hp interfaceC0276hp2 = this.hp;
            interfaceC0276hp2.hp(0, hp(interfaceC0276hp2.getActivity()));
            q();
            j.hp(this.hp.hp(), "reward_endcard", "reward_again", "endcard");
        } else {
            if (i2 == 2) {
                return e();
            }
            if (i2 == 3) {
                hp.InterfaceC0276hp interfaceC0276hp3 = this.hp;
                interfaceC0276hp3.hp(0, hp(interfaceC0276hp3.getActivity()));
                q();
                j.hp(this.hp.hp(), "reward_endcard", "reward_again", "videoplaying");
            }
        }
        return true;
    }

    @Override // com.byazt.iw.hp
    public void l(boolean z2) {
        this.f21251s = z2;
    }

    @Override // com.byazt.iw.hp
    public String s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isPlayAgain", this.f21252w.get());
            jSONObject.put("mSourceRitId", this.f21245a);
            jSONObject.put("mNowPlayAgainCount", this.eb);
            jSONObject.put("isCustomPlayAgain", this.f21251s);
            jSONObject.put("isCanPlayAgain", this.f21250q);
            jSONObject.put("mPlayAgainRewardName", this.f21246e);
            jSONObject.put("mPlayAgainRewardAmount", this.gu);
            jSONObject.put("mLastRewardName", this.jl);
            jSONObject.put("mLastRewardAmount", this.zy);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.iw.hp
    public boolean w() {
        com.byazt.zr.hp hpVar = this.f21249l;
        if (hpVar == null) {
            return false;
        }
        return hpVar.l();
    }

    @Override // com.byazt.iw.hp
    public void l(int i2) {
        this.f21245a = i2;
    }

    @Override // com.byazt.iw.hp
    public void hp(boolean z2) {
        this.f21252w.set(z2);
    }

    @Override // com.byazt.iw.hp
    public boolean l() {
        return this.f21247j.get();
    }

    @Override // com.byazt.iw.hp
    public void hp(int i2) {
        this.eb = i2;
    }

    @Override // com.byazt.iw.hp
    public void l(String str) {
        this.zy = str;
    }

    @Override // com.byazt.iw.hp
    public boolean hp() {
        return this.f21252w.get();
    }

    @Override // com.byazt.iw.hp
    public void hp(String str) {
        this.jl = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Bundle bundle) {
        boolean z2 = bundle.getBoolean("play_again_allow");
        this.f21246e = bundle.getString("play_again_reward_name");
        this.gu = bundle.getString("play_again_reward_amount");
        this.f21248k = bundle.getString(b.a.f3232f);
        this.f21250q = z2;
        if (z2) {
            s.hp(new Runnable() { // from class: com.byazt.iw.l.2
                @Override // java.lang.Runnable
                public void run() {
                    l.this.hp.hp(true, l.this.f21246e, l.this.gu);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(final String str) {
        hp.InterfaceC0276hp interfaceC0276hp = this.hp;
        if (interfaceC0276hp == null || interfaceC0276hp.getActivity() == null) {
            return;
        }
        s.hp(new Runnable() { // from class: com.byazt.iw.l.5
            @Override // java.lang.Runnable
            public void run() {
                hq.hp(l.this.hp.getActivity(), str, 0);
            }
        });
    }

    @Override // com.byazt.iw.hp
    public void jx() {
        com.byazt.zr.hp hpVar = this.f21249l;
        if (hpVar != null) {
            hpVar.jx();
        }
        gu();
    }

    private TTProgressBar hp(final Context context) {
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
        layoutParams.gravity = 17;
        tTProgressBar.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#77000000"));
        gradientDrawable.setCornerRadius(xh.jx(context, 2.0f));
        tTProgressBar.setBackground(gradientDrawable);
        int iJx = xh.jx(context, 10.0f);
        tTProgressBar.setPadding(iJx, iJx, iJx, iJx);
        com.byazt.ymw.v.hp(context, "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.iw.l.6
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vi.w.hp(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        return tTProgressBar;
    }

    @Override // com.byazt.iw.hp
    public void jx(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f21252w.set(jSONObject.getBoolean("isPlayAgain"));
            this.f21245a = jSONObject.optInt("mSourceRitId");
            this.eb = jSONObject.optInt("mNowPlayAgainCount");
            this.f21251s = jSONObject.optBoolean("isCustomPlayAgain");
            this.f21250q = jSONObject.optBoolean("isCanPlayAgain");
            this.f21246e = jSONObject.optString("mPlayAgainRewardName");
            this.gu = jSONObject.optString("mPlayAgainRewardAmount");
            this.jl = jSONObject.optString("mLastRewardName");
            this.gu = jSONObject.optString("mPlayAgainRewardAmount");
        } catch (Exception unused) {
        }
    }
}
