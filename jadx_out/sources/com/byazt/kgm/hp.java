package com.byazt.kgm;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.nk.RoundImageView;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 46, 28})
/* loaded from: classes.dex */
public abstract class hp implements com.byazt.dth.hp {
    public RelativeLayout hp(Context context, int i2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(Color.parseColor("#99000000"));
        if (i2 != 0) {
            relativeLayout.setId(i2);
        }
        return relativeLayout;
    }

    public View l(Context context, int i2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387911);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(context, 66.0f), xh.jx(context, 66.0f));
        layoutParams.addRule(14);
        if (i2 != 0) {
            layoutParams.setMargins(0, xh.jx(context, i2), 0, 0);
        }
        relativeLayout.setLayoutParams(layoutParams);
        v.hp(context, "tt_live_avatar_bg", relativeLayout, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        View roundImageView = new RoundImageView(context);
        roundImageView.setId(2114387831);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(xh.jx(context, 65.0f), xh.jx(context, 65.0f));
        layoutParams2.addRule(14);
        layoutParams2.addRule(10);
        roundImageView.setLayoutParams(layoutParams2);
        relativeLayout.addView(roundImageView);
        View imageView = new ImageView(context);
        imageView.setId(2114387608);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(xh.jx(context, 42.0f), xh.jx(context, 18.0f));
        layoutParams3.addRule(13);
        layoutParams3.addRule(12);
        imageView.setLayoutParams(layoutParams3);
        v.hp(context, "tt_live_ad_status_icon", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout.addView(imageView);
        return relativeLayout;
    }

    public View hp(Context context, int i2, int i3) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387693);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, xh.jx(context, 44.0f));
        layoutParams.addRule(12);
        layoutParams.setMargins(xh.jx(context, 40.0f), 0, xh.jx(context, 40.0f), xh.jx(context, i2));
        relativeLayout.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(xh.jx(context, 5.0f));
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setGravity(17);
        View imageView = new ImageView(context);
        imageView.setId(2114387876);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(xh.jx(context, 14.0f), xh.jx(context, 16.0f));
        layoutParams2.addRule(15);
        layoutParams2.setMargins(0, 0, xh.jx(context, i3), 0);
        imageView.setLayoutParams(layoutParams2);
        v.hp(context, "tt_live_ad_loading_btn_status", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout.addView(imageView);
        TextView textView = new TextView(context);
        textView.setId(2114387752);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(1, 2114387876);
        layoutParams3.addRule(17, 2114387876);
        layoutParams3.addRule(15);
        textView.setLayoutParams(layoutParams3);
        textView.setGravity(16);
        textView.setSingleLine(true);
        textView.setText("进入直播间");
        textView.setTextColor(-1);
        relativeLayout.addView(textView);
        View imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(xh.jx(context, 14.0f), xh.jx(context, 16.0f));
        layoutParams4.addRule(1, 2114387752);
        layoutParams4.addRule(13);
        layoutParams4.setMargins(0, 0, xh.jx(context, 6.0f), 0);
        imageView2.setLayoutParams(layoutParams4);
        v.hp(context, "tt_splash_click_bar_go", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout.addView(imageView2);
        return relativeLayout;
    }
}
