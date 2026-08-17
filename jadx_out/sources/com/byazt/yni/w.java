package com.byazt.yni;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.fub.k;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jy.FullRewardExpressView;
import com.byazt.jz.EmptyView;
import com.byazt.jz.ud;
import com.byazt.nc.hp;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.gu;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 316, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public mp f28213a;
    public String eb;
    public com.byazt.gog.jx hp;

    /* renamed from: q, reason: collision with root package name */
    public FullRewardExpressView f28216q;

    /* renamed from: s, reason: collision with root package name */
    public ViewGroup f28217s;

    /* renamed from: w, reason: collision with root package name */
    public final TTBaseVideoActivity f28218w;

    /* renamed from: l, reason: collision with root package name */
    public boolean f28215l = false;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f28214j = false;

    public w(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f28218w = tTBaseVideoActivity;
    }

    public boolean a() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        return (fullRewardExpressView == null || fullRewardExpressView.n()) ? false : true;
    }

    public byte e() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getShowDLFactorsEventParams();
        }
        return (byte) -1;
    }

    public void eb() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.v();
    }

    public boolean gu() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null) {
            return true;
        }
        return fullRewardExpressView.zy();
    }

    public void j() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jl();
        }
    }

    public k jl() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null) {
            return null;
        }
        return fullRewardExpressView.getRenderResult();
    }

    public boolean jx() {
        return this.jx;
    }

    public void k() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null && fullRewardExpressView.getJsObject() != null) {
            this.f28216q.getJsObject().eb(true);
        }
        hp("isVerifyReward", (JSONObject) null);
    }

    public boolean l() {
        return this.f28215l;
    }

    public int q() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getDynamicShowType();
        }
        return 0;
    }

    public void s() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.u();
            this.f28216q.xs();
        }
    }

    public void v() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.vv();
        }
    }

    public void w() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.xs();
        }
    }

    public FullRewardExpressView zy() {
        return this.f28216q;
    }

    public void hp(mp mpVar, com.byazt.jt.l lVar, String str, boolean z2, String str2) {
        if (this.f28214j) {
            return;
        }
        this.f28214j = true;
        this.f28213a = mpVar;
        this.eb = str;
        this.f28216q = new FullRewardExpressView(this.f28218w, mpVar, lVar, str, z2, str2);
        FrameLayout expressFrameContainer = this.f28218w.lv().getExpressFrameContainer();
        this.f28217s = expressFrameContainer;
        expressFrameContainer.addView(this.f28216q, new FrameLayout.LayoutParams(-2, -1));
        this.f28216q.setEasyPlayableContainer(this.f28218w.lv().getEasyPlayableContainer());
    }

    public void jx(boolean z2) {
        ViewGroup viewGroup = this.f28217s;
        if (viewGroup != null) {
            viewGroup.setVisibility(z2 ? 0 : 8);
        }
    }

    public void l(boolean z2) {
        this.jx = z2;
    }

    public void j(boolean z2) {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jx(z2);
        }
    }

    public void hp(CharSequence charSequence, int i2, int i3, boolean z2) {
        if (this.f28216q == null || !a()) {
            return;
        }
        this.f28216q.hp(charSequence, i2, i3, z2);
    }

    public FrameLayout hp() {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getVideoFrameLayout();
        }
        return null;
    }

    public void hp(boolean z2) {
        this.f28215l = z2;
    }

    public void hp(com.byazt.qk.a aVar, com.byazt.qk.w wVar) {
        mp mpVar;
        if (this.f28216q == null || (mpVar = this.f28213a) == null) {
            return;
        }
        com.byazt.gog.jx jxVarHp = hp(mpVar);
        this.hp = jxVarHp;
        if (jxVarHp instanceof com.byazt.fy.hp) {
            ((com.byazt.fy.hp) jxVarHp).s().hp(new com.byazt.cb.hp() { // from class: com.byazt.yni.w.1
                @Override // com.byazt.cb.hp
                public void hp() {
                    w.this.f28218w.j(true);
                }

                @Override // com.byazt.cb.hp
                public void jx() {
                }

                @Override // com.byazt.cb.hp
                public void l() {
                    w.this.f28218w.j(false);
                }
            });
        }
        com.byazt.gog.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.l();
            if (this.f28216q.getContext() != null && (this.f28216q.getContext() instanceof Activity)) {
                this.hp.hp((Activity) this.f28216q.getContext(), false);
            }
        }
        com.byazt.jdb.j.hp(this.f28213a);
        EmptyView emptyViewHp = hp((ViewGroup) this.f28216q);
        if (emptyViewHp == null) {
            mp mpVar2 = this.f28213a;
            EmptyView emptyView = new EmptyView(this.f28218w, this.f28216q, mpVar2 != null ? mpVar2.ub() : 1000);
            emptyView.hp(this.f28213a, this.eb);
            this.f28216q.addView(emptyView);
            emptyViewHp = emptyView;
        }
        emptyViewHp.setNeedCheckingShow(false);
        emptyViewHp.setCallback(new EmptyView.hp() { // from class: com.byazt.yni.w.2
            @Override // com.byazt.jz.EmptyView.hp
            public void hp(View view, Map<String, Object> map) {
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void l() {
                com.byazt.gog.jx jxVar2 = w.this.hp;
                if (jxVar2 != null) {
                    jxVar2.jx();
                }
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp(boolean z2) {
                com.byazt.gog.jx jxVar2 = w.this.hp;
                if (jxVar2 == null || !z2) {
                    return;
                }
                jxVar2.l();
            }

            @Override // com.byazt.jz.EmptyView.hp
            public void hp() {
                com.byazt.gog.jx jxVar2 = w.this.hp;
                if (jxVar2 != null) {
                    jxVar2.hp();
                }
            }
        });
        aVar.hp(this.f28216q);
        ((com.byazt.sw.hp) aVar.hp(com.byazt.sw.hp.class)).hp(this.hp);
        this.f28216q.setClickListener(aVar);
        wVar.hp(this.f28216q);
        ((com.byazt.sw.hp) wVar.hp(com.byazt.sw.hp.class)).hp(this.hp);
        this.f28216q.setClickCreativeListener(wVar);
        emptyViewHp.setNeedCheckingShow(false);
        hp(this.hp, this.f28216q);
    }

    private void hp(com.byazt.gog.jx jxVar, NativeExpressView nativeExpressView) {
        final String strJ;
        if (jxVar == null || nativeExpressView == null) {
            return;
        }
        mp mpVar = this.f28213a;
        if (mpVar != null) {
            strJ = mpVar.j();
        } else {
            strJ = "";
        }
        jxVar.hp(new com.byazt.gog.hp() { // from class: com.byazt.yni.w.3
            @Override // com.byazt.gog.hp
            public void hp() {
                w.this.f28218w.hp("点击开始下载");
                com.byazt.pm.hp.hp(strJ);
            }

            @Override // com.byazt.gog.hp
            public void jx(long j2, long j3, String str, String str2) {
                w.this.f28218w.hp("下载失败");
                com.byazt.pm.hp.jx(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void l(long j2, long j3, String str, String str2) {
                w.this.f28218w.hp("下载暂停");
                com.byazt.pm.hp.l(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, long j3, String str, String str2) {
                if (j2 > 0) {
                    w.this.f28218w.hp("已下载" + ((int) ((100 * j3) / j2)) + "%");
                }
                com.byazt.pm.hp.hp(strJ, j2, j3);
            }

            @Override // com.byazt.gog.hp
            public void hp(long j2, String str, String str2) {
                w.this.f28218w.hp("点击安装");
                com.byazt.pm.hp.l(strJ);
            }

            @Override // com.byazt.gog.hp
            public void hp(String str, String str2) {
                w.this.f28218w.hp("点击打开");
                com.byazt.pm.hp.jx(strJ);
            }
        });
    }

    private com.byazt.gog.jx hp(mp mpVar) {
        if (mpVar.q() == 4) {
            return com.byazt.ff.s.hp(this.f28218w, mpVar, this.eb);
        }
        return null;
    }

    private EmptyView hp(ViewGroup viewGroup) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    public void hp(gu guVar) {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressVideoListenerProxy(guVar);
    }

    public void hp(com.byazt.qk.hp hpVar) {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressInteractionListener(hpVar);
    }

    public void hp(com.byazt.su.jx jxVar) {
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.setVideoController(jxVar);
        }
    }

    public void hp(String str, JSONObject jSONObject) {
        ud jsObject;
        FullRewardExpressView fullRewardExpressView = this.f28216q;
        if (fullRewardExpressView == null || (jsObject = fullRewardExpressView.getJsObject()) == null || this.f28218w.isFinishing()) {
            return;
        }
        jsObject.l(str, jSONObject);
    }

    public void hp(hp.InterfaceC0317hp interfaceC0317hp) {
        com.byazt.gog.jx jxVar = this.hp;
        if (jxVar != null) {
            jxVar.hp(interfaceC0317hp);
        }
    }

    public void hp(com.byazt.jki.jx jxVar) {
        if (this.f28216q != null) {
            this.f28216q.hp((int) (jxVar.hp() / 1000), jxVar.w(), jxVar.l(), jxVar.j());
        }
    }
}
