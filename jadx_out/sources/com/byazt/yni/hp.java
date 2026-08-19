package com.byazt.yni;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.dy.hp;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jy.PlayableEndcardFrameLayout;
import com.byazt.jz.vv;
import com.byazt.uy.RewardLpBottomView;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.hp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 316, 28})
/* loaded from: classes3.dex */
public class hp extends l {

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.td.w f28183b;
    public AtomicBoolean cx;
    public boolean di;
    public AtomicBoolean ec;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.nqo.hp f28184k;

    /* renamed from: n, reason: collision with root package name */
    public RewardLpBottomView f28185n;
    public AtomicBoolean ns;
    public String sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.qb.j f28186u;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.jdb.eb f28187v;
    public com.byazt.qb.l vv;
    public com.byazt.bth.hp xs;

    public hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2, com.byazt.jdb.eb ebVar, com.byazt.td.w wVar) {
        super(tTBaseVideoActivity, mpVar, z2);
        this.f28184k = mpVar.pc();
        this.f28187v = ebVar;
        this.f28200l.eb(0);
        this.ec = new AtomicBoolean();
        this.ns = new AtomicBoolean();
        this.cx = new AtomicBoolean();
        this.f28183b = wVar;
    }

    private void ec() throws JSONException {
        com.byazt.bth.hp hpVar = new com.byazt.bth.hp(this.f28200l, sz(), this.f28184k, this.jx);
        this.xs = hpVar;
        hpVar.hp(this.f28200l.mp());
        this.xs.hp(new com.byazt.tk.hp() { // from class: com.byazt.yni.hp.8
            @Override // com.byazt.tk.hp
            public void hp(View view) {
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.yni.hp.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.f28200l.eb(8);
                        hp.this.ec.set(true);
                        if (hp.this.f28185n != null) {
                            hp.this.f28185n.hp();
                        }
                    }
                });
            }

            @Override // com.byazt.tk.hp
            public void hp(int i2) {
                vv.a().post(new Runnable() { // from class: com.byazt.yni.hp.8.2
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        hp.this.f28200l.eb(8);
                        hp.this.f28200l.vv();
                    }
                });
                hp.this.ec.set(false);
            }
        });
        this.xs.hp();
    }

    private ViewGroup sz() {
        if (this.eb == null) {
            return null;
        }
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.f28200l);
        this.eb.addView(playableEndcardFrameLayout);
        this.f28185n = new RewardLpBottomView(this.f28200l);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.eb.addView(this.f28185n, layoutParams);
        this.f28185n.hp(this.jx, this.sz);
        playableEndcardFrameLayout.hp(new PlayableEndcardFrameLayout.hp() { // from class: com.byazt.yni.hp.9
            @Override // com.byazt.jy.PlayableEndcardFrameLayout.hp
            public void hp() {
                if (hp.this.f28185n != null) {
                    hp.this.f28185n.l();
                }
            }
        });
        return playableEndcardFrameLayout;
    }

    private void vv() {
        FrameLayout frameLayout = new FrameLayout(this.f28200l);
        this.eb.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        com.byazt.qb.l lVar = new com.byazt.qb.l(this.f28200l, frameLayout, this.f28187v, this.jx, this.sz, ky.j(this.hp));
        this.vv = lVar;
        lVar.l(true);
        this.vv.hp(new com.byazt.dy.l() { // from class: com.byazt.yni.hp.3
            @Override // com.byazt.dy.l
            public void hp() {
                hp.this.f28200l.as();
            }

            @Override // com.byazt.dy.l
            public void l() {
                hp.this.f28200l.kg();
                hp.this.ns.set(true);
                hp.this.vv.ec();
            }
        });
        this.vv.hp(new com.byazt.tk.hp() { // from class: com.byazt.yni.hp.4
            @Override // com.byazt.tk.hp
            public void hp(View view) {
                hp.this.f28200l.eb(8);
                hp.this.ec.set(true);
            }

            @Override // com.byazt.tk.hp
            public void hp(int i2) {
                vv.a().post(new Runnable() { // from class: com.byazt.yni.hp.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.f28200l.eb(8);
                        hp.this.vv.u();
                        hp.this.vv.hp("\"暂无更多内容，奖励已发放\"");
                        hp.this.f28200l.j(0);
                    }
                });
                hp.this.ec.set(false);
            }
        });
        this.vv.hp(new hp.InterfaceC0214hp() { // from class: com.byazt.yni.hp.5
            @Override // com.byazt.dy.hp.InterfaceC0214hp
            public void hp() {
                vv.a().post(new Runnable() { // from class: com.byazt.yni.hp.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (hp.this.f28200l.vq()) {
                            hp.this.vv.hp("\"暂无更多内容，奖励已发放\"");
                        } else {
                            hp.this.vv.hp(String.format("\"暂无更多内容，继续浏览%1$s秒可得奖励\"", Integer.valueOf(hp.this.f28200l.y().xh())));
                        }
                    }
                });
            }
        });
        this.vv.jl();
        com.byazt.jz.s.u().jx().jx(new hp.l() { // from class: com.byazt.yni.hp.6
            @Override // com.byazt.zn.hp.l
            public void onAppBackground() {
            }

            @Override // com.byazt.zn.hp.l
            public void onAppExit() {
            }

            @Override // com.byazt.zn.hp.l
            public void onAppForeground() {
                if (hp.this.ns.get() || !hp.this.vv.zy()) {
                    hp.this.cx.set(false);
                } else {
                    hp.this.cx.set(true);
                }
            }

            @Override // com.byazt.zn.hp.l
            public void onAppStart() {
            }
        });
        if (TextUtils.equals(this.f28184k.hp(), "3")) {
            return;
        }
        l();
    }

    private void xs() {
        com.byazt.qb.j jVar = new com.byazt.qb.j(this.f28200l, this.eb, this.f28187v, this.jx, this.sz, ky.j(this.hp));
        this.f28186u = jVar;
        jVar.l(true);
        this.f28186u.hp(new com.byazt.tk.hp() { // from class: com.byazt.yni.hp.2
            @Override // com.byazt.tk.hp
            public void hp(View view) {
                hp.this.f28200l.eb(8);
                hp.this.ec.set(true);
            }

            @Override // com.byazt.tk.hp
            public void hp(int i2) {
                vv.a().post(new Runnable() { // from class: com.byazt.yni.hp.2.1
                    @Override // java.lang.Runnable
                    public void run() throws JSONException {
                        hp.this.f28200l.eb(8);
                        hp.this.f28200l.vv();
                    }
                });
                hp.this.ec.set(false);
            }
        });
        this.f28186u.jl();
    }

    @Override // com.byazt.yni.l
    public void e() {
        com.byazt.bth.hp hpVar = this.xs;
        if (hpVar != null) {
            hpVar.l();
        }
        com.byazt.qb.l lVar = this.vv;
        if (lVar != null) {
            lVar.v();
        }
        RewardLpBottomView rewardLpBottomView = this.f28185n;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.l();
        }
    }

    public void eb() {
        com.byazt.qb.l lVar = this.vv;
        if (lVar != null) {
            lVar.vv();
        }
    }

    public void q() {
        com.byazt.qb.l lVar = this.vv;
        if (lVar != null) {
            lVar.sz();
        }
    }

    public void s() throws JSONException {
        com.byazt.qb.l lVar = this.vv;
        if (lVar != null) {
            lVar.xs();
        }
    }

    public boolean a() {
        return this.ec.get();
    }

    public boolean j() {
        com.byazt.qb.l lVar = this.vv;
        if (lVar != null) {
            return lVar.zy();
        }
        return false;
    }

    public boolean jx() {
        return this.cx.get();
    }

    public void l() {
        final ImageView imageView = new ImageView(this.f28200l);
        float fJx = xh.jx(this.f28200l, 18.0f);
        float fJx2 = xh.jx(this.f28200l, 20.0f);
        int i2 = (int) fJx;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        layoutParams.gravity = 53;
        int i3 = (int) fJx2;
        layoutParams.setMargins(i3, i3, i3, i3);
        this.eb.addView(imageView, layoutParams);
        v.hp((Context) this.f28200l, "tt_unmute", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.yni.hp.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp.this.di = !r4.di;
                hp hpVar = hp.this;
                v.hp((Context) hpVar.f28200l, hpVar.di ? "tt_mute" : "tt_unmute", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
                hp.this.vv.jx(hp.this.di);
            }
        });
    }

    public AtomicInteger w() {
        return new AtomicInteger(0);
    }

    @Override // com.byazt.yni.l
    public void hp() throws JSONException {
        super.hp();
        this.sz = ky.hp(ky.j(this.hp));
        com.byazt.nqo.hp hpVar = this.f28184k;
        if (hpVar == null) {
            vv.a().post(new Runnable() { // from class: com.byazt.yni.hp.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    hp.this.f28200l.eb(8);
                    hp.this.f28200l.vv();
                }
            });
            return;
        }
        int iJ = hpVar.j();
        if (iJ == 2) {
            xs();
            return;
        }
        if (iJ == 3) {
            vv();
        } else if (iJ != 4) {
            this.f28200l.eb(8);
            this.f28200l.vv();
        } else {
            ec();
        }
    }

    public void l(boolean z2) {
        if (this.vv == null || !com.byazt.la.e.j(this.jx)) {
            return;
        }
        this.vv.jx(z2);
    }

    public void hp(boolean z2) {
        this.cx.set(z2);
    }

    @Override // com.byazt.yni.l
    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
        super.hp(lVar, lVar2);
        com.byazt.qb.j jVar = this.f28186u;
        if (jVar != null) {
            jVar.hp(this.f28200l.mp());
        }
        com.byazt.qb.l lVar3 = this.vv;
        if (lVar3 != null) {
            lVar3.hp(this.f28200l.mp());
        }
        com.byazt.bth.hp hpVar = this.xs;
        if (hpVar != null) {
            hpVar.hp(lVar);
        }
    }

    public void hp(int i2) {
        if (this.f28186u == null || !com.byazt.la.e.w(this.jx)) {
            return;
        }
        this.f28186u.a(i2);
    }

    @Override // com.byazt.yni.l
    public void hp(DownloadListener downloadListener) {
        com.byazt.bth.hp hpVar = this.xs;
        if (hpVar != null) {
            hpVar.hp(downloadListener);
        }
    }
}
