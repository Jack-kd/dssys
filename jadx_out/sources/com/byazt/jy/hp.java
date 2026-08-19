package com.byazt.jy;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.nk.TTRatingBar;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 235, 28})
/* loaded from: classes.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public TextView f21766a;

    /* renamed from: e, reason: collision with root package name */
    public int f21767e;
    public TextView eb;
    public boolean gu;
    public LinearLayout hp;

    /* renamed from: j, reason: collision with root package name */
    public TTRatingBar f21768j;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public TTRoundRectImageView f21769l;

    /* renamed from: q, reason: collision with root package name */
    public mp f21770q;

    /* renamed from: s, reason: collision with root package name */
    public final TTBaseVideoActivity f21771s;

    /* renamed from: w, reason: collision with root package name */
    public TextView f21772w;

    public hp(TTBaseVideoActivity tTBaseVideoActivity) {
        this.f21771s = tTBaseVideoActivity;
    }

    private void a() {
        TTRoundRectImageView tTRoundRectImageView;
        if (this.f21767e == 1 && (tTRoundRectImageView = this.f21769l) != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) tTRoundRectImageView.getLayoutParams();
            layoutParams.setMargins(0, xh.jx(this.f21771s, 50.0f), 0, 0);
            this.f21769l.setLayoutParams(layoutParams);
        }
    }

    private void w() {
        this.hp = (LinearLayout) this.f21771s.findViewById(2114387739);
        this.f21769l = (TTRoundRectImageView) this.f21771s.findViewById(2114387773);
        this.jx = (TextView) this.f21771s.findViewById(2114387645);
        this.f21768j = (TTRatingBar) this.f21771s.findViewById(2114387779);
        this.f21772w = (TextView) this.f21771s.findViewById(2114387782);
        this.f21766a = (TextView) this.f21771s.findViewById(2114387864);
        this.eb = (TextView) this.f21771s.findViewById(2114387709);
        TTRatingBar tTRatingBar = this.f21768j;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.f21768j.setStarFillNum(4);
            this.f21768j.setStarImageWidth(xh.jx(this.f21771s, 16.0f));
            this.f21768j.setStarImageHeight(xh.jx(this.f21771s, 16.0f));
            this.f21768j.setStarImagePadding(xh.jx(this.f21771s, 4.0f));
            this.f21768j.hp();
        }
    }

    public void hp(mp mpVar) {
        if (this.gu) {
            return;
        }
        this.gu = true;
        this.f21770q = mpVar;
        this.f21767e = mpVar.wf();
        w();
        l();
        hp(j());
        a();
    }

    public String j() {
        mp mpVar = this.f21770q;
        return mpVar == null ? "立即下载" : TextUtils.isEmpty(mpVar.ll()) ? this.f21770q.q() != 4 ? "查看详情" : "立即下载" : this.f21770q.ll();
    }

    public void jx() {
        xh.hp((View) this.hp, 8);
    }

    public void l() {
        String strValueOf;
        if (this.f21769l != null) {
            dy dyVarNq = this.f21770q.nq();
            if (dyVarNq == null || TextUtils.isEmpty(dyVarNq.hp())) {
                v.hp((Context) this.f21771s, "tt_ad_logo_small", (ImageView) this.f21769l, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } else {
                com.byazt.ws.l.hp(dyVarNq).to(this.f21769l);
            }
        }
        if (this.jx != null) {
            if (this.f21770q.v() == null || TextUtils.isEmpty(this.f21770q.v().jx())) {
                this.jx.setText(this.f21770q.v_());
            } else {
                this.jx.setText(this.f21770q.v().jx());
            }
        }
        if (this.f21772w != null) {
            int iA = this.f21770q.v() != null ? this.f21770q.v().a() : 6870;
            if (iA > 10000) {
                strValueOf = (iA / 10000) + "万";
            } else {
                strValueOf = String.valueOf(iA);
            }
            this.f21772w.setText(String.format("(%1$s个评论)", strValueOf));
        }
        TextView textView = this.eb;
        if (textView != null) {
            xh.hp(textView, this.f21770q);
        }
    }

    public void hp(com.byazt.go.l lVar) {
        xh.hp(this.hp, new View.OnClickListener() { // from class: com.byazt.jy.hp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mLLEndCardBackup");
        TextView textView = this.f21766a;
        if (textView != null) {
            textView.setOnClickListener(lVar);
            this.f21766a.setOnTouchListener(lVar);
        }
    }

    public void hp() {
        xh.hp((View) this.hp, 0);
        mp mpVar = this.f21770q;
        if (mpVar == null || mpVar.qo() == 100.0f) {
            return;
        }
        xh.hp((View) this.f21768j, 8);
        xh.hp((View) this.f21772w, 8);
    }

    public void hp(String str) {
        TextView textView;
        if (TextUtils.isEmpty(str) || (textView = this.f21766a) == null) {
            return;
        }
        textView.setText(str);
    }
}
