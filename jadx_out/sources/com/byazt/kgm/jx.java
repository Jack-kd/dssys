package com.byazt.kgm;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.nk.TTProgressBar;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 46, 30})
/* loaded from: classes.dex */
public class jx extends hp {
    @Override // com.byazt.dth.hp
    public View inflate(final Context context) {
        RelativeLayout relativeLayoutHp = hp(context, 2114387616);
        relativeLayoutHp.addView(l(context, 159));
        relativeLayoutHp.setVisibility(8);
        TextView textView = new TextView(context);
        textView.setId(2114387742);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, 2114387911);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, xh.jx(context, 13.0f), 0, 0);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(context.getResources().getColor(R.color.white));
        textView.setTextSize(2, 16.0f);
        relativeLayoutHp.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setId(2114387807);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, 2114387742);
        layoutParams2.addRule(14);
        layoutParams2.setMargins(0, xh.jx(context, 8.0f), 0, 0);
        textView2.setLayoutParams(layoutParams2);
        textView2.setTextColor(context.getResources().getColor(R.color.white));
        textView2.setTextSize(2, 12.0f);
        textView2.setText("数据加载中...");
        relativeLayoutHp.addView(textView2);
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        tTProgressBar.setId(2114387683);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(xh.jx(context, 32.0f), xh.jx(context, 32.0f));
        layoutParams3.addRule(3, 2114387807);
        layoutParams3.addRule(14);
        layoutParams3.setMargins(0, xh.jx(context, 32.0f), 0, 0);
        tTProgressBar.setLayoutParams(layoutParams3);
        v.hp(context, "tt_live_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.kgm.jx.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vi.w.hp(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayoutHp.addView(tTProgressBar);
        relativeLayoutHp.addView(hp(context, 158, 6));
        return relativeLayoutHp;
    }
}
