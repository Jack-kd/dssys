package com.byazt.uy;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.kj.hp;
import com.byazt.nk.TTRatingBar;
import com.byazt.nk.TTRoundRectImageView;
import com.byazt.vi.a;
import com.byazt.ws.l;
import com.byazt.xci.dy;
import com.byazt.xci.mp;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, 723, 1460})
/* loaded from: classes3.dex */
public class DownloadItemView extends FrameLayout {
    public DownloadItemView(Context context) {
        super(context);
    }

    public void hp(mp mpVar) {
        String strValueOf;
        if (mpVar == null) {
            return;
        }
        Context context = getContext();
        addView(a.r(context));
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) findViewById(2114387793);
        TextView textView = (TextView) findViewById(2114387875);
        TextView textView2 = (TextView) findViewById(2114387637);
        TextView textView3 = (TextView) findViewById(2114387830);
        TextView textView4 = (TextView) findViewById(2114387630);
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(2114387609);
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            tTRatingBar.setStarFillNum(4);
            tTRatingBar.setStarImageWidth(xh.jx(context, 12.0f));
            tTRatingBar.setStarImageHeight(xh.jx(context, 12.0f));
            tTRatingBar.setStarImagePadding(xh.jx(context, 4.0f));
            tTRatingBar.hp();
        }
        if (textView4 != null) {
            int iA = mpVar.v() != null ? mpVar.v().a() : 6870;
            if (iA > 10000) {
                strValueOf = (iA / 10000) + "万";
            } else {
                strValueOf = String.valueOf(iA);
            }
            textView4.setText(String.format("%1$s个评分", strValueOf));
        }
        if (tTRoundRectImageView != null) {
            dy dyVarNq = mpVar.nq();
            if (dyVarNq == null || TextUtils.isEmpty(dyVarNq.hp())) {
                v.hp(context, "tt_ad_logo_small", (ImageView) tTRoundRectImageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } else {
                l.hp(dyVarNq).to(tTRoundRectImageView);
            }
        }
        if (textView != null) {
            textView.setText(ky.n(mpVar));
        }
        if (textView2 != null) {
            textView2.setText(ky.ns(mpVar));
        }
        if (textView3 != null) {
            textView3.setText(TextUtils.isEmpty(mpVar.ll()) ? mpVar.q() != 4 ? "查看详情" : "立即下载" : mpVar.ll());
        }
    }
}
