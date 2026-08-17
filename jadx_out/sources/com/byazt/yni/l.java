package com.byazt.yni;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jkd.gu;
import com.byazt.jz.EmptyView;
import com.byazt.jz.sz;
import com.byazt.vt.UpieImageView;
import com.byazt.xci.dy;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 316, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f28197a;

    /* renamed from: e, reason: collision with root package name */
    public TextView f28198e;
    public ViewGroup eb;
    public RelativeLayout gu;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final int f28199j;
    public TextView jl;
    public final mp jx;

    /* renamed from: l, reason: collision with root package name */
    public final TTBaseVideoActivity f28200l;

    /* renamed from: q, reason: collision with root package name */
    public FrameLayout f28201q;

    /* renamed from: s, reason: collision with root package name */
    public RelativeLayout f28202s;

    /* renamed from: w, reason: collision with root package name */
    public final float f28203w;
    public int zy = 3;

    public l(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        this.f28200l = tTBaseVideoActivity;
        this.jx = mpVar;
        this.f28199j = mpVar.wf();
        this.f28203w = mpVar.qo();
        this.f28197a = z2;
        this.hp = z2 ? "rewarded_video" : "fullscreen_interstitial_ad";
    }

    public void a(int i2) {
        xh.hp((View) this.f28202s, i2);
    }

    public void e() {
    }

    public void gu() {
        if (this.f28197a) {
            int iQa = this.jx.qa();
            this.zy = iQa;
            if (iQa == -200) {
                gu guVarL = sz.l();
                StringBuilder sb = new StringBuilder();
                sb.append(ky.zy(this.jx));
                this.zy = guVarL.gu(sb.toString());
            }
            if (this.zy == -1) {
                xh.hp((View) this.f28202s, 0);
            }
        }
    }

    public void hp(DownloadListener downloadListener) {
    }

    public void j(int i2) {
    }

    public FrameLayout jl() {
        return this.f28201q;
    }

    public void jx(int i2) {
    }

    public String k() {
        return ky.n(this.jx);
    }

    public void l(int i2) {
    }

    public void u() {
        mp mpVar = this.jx;
        String strNn = mpVar != null ? mpVar.nn() : null;
        if (this.f28198e == null || !TextUtils.isEmpty(strNn)) {
            return;
        }
        v.hp(this.f28200l, "tt_ad_logo_backup", this.f28198e, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    public String v() {
        return ky.ns(this.jx);
    }

    public void w(int i2) {
        xh.hp((View) this.f28198e, i2);
    }

    public RelativeLayout zy() {
        return this.f28202s;
    }

    private void l() {
        ViewGroup viewGroup = this.eb;
        if (viewGroup != null) {
            EmptyView emptyViewHp = hp(viewGroup);
            if (emptyViewHp == null) {
                mp mpVar = this.jx;
                EmptyView emptyView = new EmptyView(this.f28200l, this.eb, mpVar != null ? mpVar.ub() : 1000);
                emptyView.hp(this.jx, this.hp);
                this.eb.addView(emptyView);
                emptyViewHp = emptyView;
            }
            emptyViewHp.setNeedCheckingShow(false);
            emptyViewHp.setCallback(new EmptyView.hp() { // from class: com.byazt.yni.l.1
                @Override // com.byazt.jz.EmptyView.hp
                public void hp() {
                }

                @Override // com.byazt.jz.EmptyView.hp
                public void l() {
                }

                @Override // com.byazt.jz.EmptyView.hp
                public void hp(View view, Map<String, Object> map) {
                }

                @Override // com.byazt.jz.EmptyView.hp
                public void hp(boolean z2) {
                }
            });
        }
    }

    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
    }

    public void jx(boolean z2) {
        this.f28200l.lv().getWidgetFrameContainer().setVisibility(z2 ? 0 : 8);
    }

    public void hp() {
        ViewGroup viewGroup = (ViewGroup) this.f28200l.findViewById(2114387959);
        this.eb = viewGroup;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(-16777216);
        }
        com.byazt.mb.s.hp(this.eb);
        if (hd.hp(this.jx) != 2) {
            l();
        }
    }

    public void hp(ImageView imageView, UpieImageView upieImageView) {
        List<dy> listVi;
        if (imageView == null || (listVi = this.jx.vi()) == null || listVi.size() <= 0) {
            return;
        }
        com.byazt.ws.l.hp(listVi.get(0)).to(imageView);
        if (upieImageView == null || !com.byazt.nwu.hp.j(this.jx)) {
            return;
        }
        com.byazt.nwu.hp.hp(imageView, upieImageView);
    }

    private EmptyView hp(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }
}
