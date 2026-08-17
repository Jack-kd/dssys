package com.byazt.yni;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nk.RoundImageView;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xci.y;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 316, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends l {

    /* renamed from: b, reason: collision with root package name */
    public TextView f28207b;
    public TextView cx;
    public boolean di;
    public TextView ec;

    /* renamed from: k, reason: collision with root package name */
    public RoundImageView f28208k;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f28209n;
    public RelativeLayout ns;
    public TextView sz;

    /* renamed from: u, reason: collision with root package name */
    public TextView f28210u;

    /* renamed from: v, reason: collision with root package name */
    public RelativeLayout f28211v;
    public ImageView vv;
    public TextView xs;

    public s(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, z2);
    }

    @Override // com.byazt.yni.l
    public void hp() {
        String strValueOf;
        String strValueOf2;
        super.hp();
        this.f28202s = (RelativeLayout) this.f28200l.findViewById(2114387662);
        this.f28201q = (FrameLayout) this.f28200l.findViewById(2114387754);
        this.f28198e = (TextView) this.f28200l.findViewById(2114387658);
        this.f28208k = (RoundImageView) this.f28200l.findViewById(2114387882);
        this.f28211v = (RelativeLayout) this.f28200l.findViewById(2114387911);
        this.f28210u = (TextView) this.f28200l.findViewById(2114387921);
        this.xs = (TextView) this.f28200l.findViewById(2114387850);
        this.vv = (ImageView) this.f28200l.findViewById(2114387881);
        this.ec = (TextView) this.f28200l.findViewById(2114387781);
        this.sz = (TextView) this.f28200l.findViewById(2114387640);
        this.f28209n = (RelativeLayout) this.f28200l.findViewById(2114387663);
        this.ns = (RelativeLayout) this.f28200l.findViewById(2114387835);
        this.gu = (RelativeLayout) this.f28200l.findViewById(2114387717);
        this.cx = (TextView) this.f28200l.findViewById(2114387752);
        this.f28207b = (TextView) this.f28200l.findViewById(2114387716);
        xh.hp(this.f28198e, this.jx);
        gu();
        if (com.byazt.we.hp.hp(this.jx)) {
            String strQ = ms.q(this.jx);
            if (TextUtils.isEmpty(strQ) || this.f28208k == null) {
                xh.hp((View) this.f28211v, 8);
            } else {
                xh.hp((View) this.f28211v, 0);
                com.byazt.ws.l.hp(strQ).to(this.f28208k);
            }
            if (this.f28210u != null) {
                this.f28210u.setText(ms.jx(this.jx));
            }
            if (this.xs != null) {
                int iJ = ms.j(this.jx);
                if (iJ < 0) {
                    this.xs.setVisibility(4);
                    xh.hp((View) this.vv, 4);
                } else {
                    if (iJ > 10000) {
                        strValueOf2 = (iJ / 10000.0f) + "w";
                    } else {
                        strValueOf2 = String.valueOf(iJ);
                    }
                    this.xs.setText(String.format("粉丝 %1$s", strValueOf2));
                }
            }
            if (this.ec != null) {
                int iW = ms.w(this.jx);
                if (iW < 0) {
                    this.ec.setVisibility(4);
                    xh.hp((View) this.vv, 4);
                } else {
                    if (iW > 10000) {
                        strValueOf = (iW / 10000.0f) + "w";
                    } else {
                        strValueOf = String.valueOf(iW);
                    }
                    this.ec.setText(String.format("观看 %1$s", strValueOf));
                }
            }
            if (this.sz != null) {
                this.sz.setText(ms.a(this.jx));
            }
        }
    }

    @Override // com.byazt.yni.l
    public void j(int i2) {
        if (this.di) {
            return;
        }
        xh.hp((View) this.gu, i2);
    }

    @Override // com.byazt.yni.l
    public void jx(int i2) {
        xh.hp((View) this.f28209n, i2);
        xh.hp((View) this.ns, i2);
    }

    @Override // com.byazt.yni.l
    public void hp(com.byazt.go.l lVar, com.byazt.go.l lVar2) {
        xh.hp((View) this.cx, (View.OnTouchListener) lVar, "TTBaseVideoActivity#mLiveLoadingBtn");
        xh.hp((View) this.cx, (View.OnClickListener) lVar, "TTBaseVideoActivity#mLiveLoadingBtn");
        xh.hp((View) this.f28207b, (View.OnClickListener) lVar, "TTBaseVideoActivity#mLiveVideoBtn");
        xh.hp((View) this.f28207b, (View.OnClickListener) lVar, "TTBaseVideoActivity#mLiveVideoBtn");
        hp(lVar2);
        hp((View.OnTouchListener) lVar2);
    }

    private void hp(View.OnTouchListener onTouchListener) {
        xh.hp(this.f28202s, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        xh.hp(this.f28201q, onTouchListener, "TTBaseVideoActivity#mVideoNativeFrame");
        xh.hp(this.sz, onTouchListener, "TTBaseVideoActivity#mLiveDesc");
        xh.hp(this.xs, onTouchListener, "TTBaseVideoActivity#mLiveFans");
        xh.hp(this.ec, onTouchListener, "TTBaseVideoActivity#mLiveWatch");
        xh.hp(this.f28210u, onTouchListener, "TTBaseVideoActivity#mLiveName");
        xh.hp(this.f28208k, onTouchListener, "TTBaseVideoActivity#mLiveIcon");
        xh.hp(this.gu, onTouchListener, "TTBaseVideoActivity#mLiveBtnLayout");
    }

    private void hp(com.byazt.go.l lVar) {
        hp(this.f28201q, lVar, "click_live_feed");
        hp(this.sz, lVar, "click_live_author_description");
        hp(this.xs, lVar, "click_live_author_follower_count");
        hp(this.ec, lVar, "click_live_author_following_count");
        hp(this.f28210u, lVar, "click_live_author_nickname");
        hp(this.f28208k, lVar, "click_live_avata");
        hp(this.f28202s, lVar, "click_live_button");
        hp(this.gu, lVar, "click_live_btn_layout");
    }

    private void hp(View view, final com.byazt.go.l lVar, final String str) {
        if (view == null || lVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        TTBaseVideoActivity tTBaseVideoActivity = this.f28200l;
        mp mpVar = this.jx;
        boolean z2 = this.f28197a;
        view.setOnClickListener(new com.byazt.go.l(tTBaseVideoActivity, mpVar, z2 ? "rewarded_video" : "fullscreen_interstitial_ad", z2 ? 7 : 5) { // from class: com.byazt.yni.s.1
            @Override // com.byazt.go.l, com.byazt.go.j
            public void hp(View view2, com.byazt.xci.e eVar) {
                HashMap map = new HashMap();
                map.put("click_live_element", str);
                ((com.byazt.ey.hp) lVar.hp(com.byazt.ey.hp.class)).hp(map);
                lVar.hp(view2, eVar);
            }
        });
    }

    public void hp(int i2, int i3) {
        TextView textView;
        if (i2 != 0) {
            this.di = true;
            xh.hp((View) this.gu, 8);
            return;
        }
        xh.hp((View) this.gu, 0);
        if (i3 >= 0 && com.byazt.yx.l.hp().l(this.jx) && y.hp(this.jx) && y.w(this.jx) == 3 && (textView = (TextView) this.f28200l.findViewById(2114387716)) != null) {
            textView.setText(String.format("%1$s后自动进入直播间", i3 + "s"));
        }
    }
}
