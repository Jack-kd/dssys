package com.byazt.jpy;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.ij.jx;
import com.byazt.kj.hp;
import com.byazt.ws.l;
import com.byazt.ymw.v;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME, 1732})
/* loaded from: classes.dex */
public abstract class BaseSaasEnvelope extends RelativeLayout {
    public View hp;
    public AnimatorSet jx;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f21665l;

    public BaseSaasEnvelope(Context context) {
        super(context);
    }

    private View l(Context context) {
        String strJ = ky.j(getContext());
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = xh.jx(context, 80.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 10.0f);
        textView.setGravity(17);
        textView.setText("关联后" + strJ + "将获取你的抖音头像和昵称");
        textView.setTextColor(Color.parseColor("#AAFFFFFF"));
        return textView;
    }

    public abstract void hp();

    public void hp(Context context, String str, RelativeLayout relativeLayout) {
        View viewHp = hp(context, str);
        this.hp = viewHp;
        relativeLayout.addView(viewHp);
        relativeLayout.addView(l(context));
        this.hp.setTag(67108864, 2917);
        addView(hp(context, relativeLayout));
        ImageView imageView = new ImageView(context);
        this.f21665l = imageView;
        v.hp(context, "tt_saas_close", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, relativeLayout.getId());
        layoutParams.topMargin = xh.jx(context, 25.0f);
        addView(this.f21665l, layoutParams);
    }

    public void setOnButtonClickListener(final View.OnClickListener onClickListener) {
        View view = this.hp;
        if (view == null || onClickListener == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.jpy.BaseSaasEnvelope.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BaseSaasEnvelope.this.l();
                onClickListener.onClick(view2);
            }
        });
    }

    public void setOnCloseClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f21665l;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public void l() {
        AnimatorSet animatorSet = this.jx;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.jx = null;
        }
    }

    private View hp(Context context, String str) {
        TextView textView = new TextView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(context, 166.0f), xh.jx(context, 40.0f));
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.bottomMargin = xh.jx(context, 26.0f);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(2, 16.0f);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(Color.parseColor("#9D301A"));
        textView.setTypeface(null, 1);
        int iJx = xh.jx(context, 40.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        float f2 = iJx;
        gradientDrawable.setCornerRadii(new float[]{f2, f2, f2, f2, f2, f2, f2, f2});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#F2AC5F"), Color.parseColor("#FFEECC")});
        textView.setBackground(gradientDrawable);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, "scaleX", 1.0f, 1.05f, 1.0f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setDuration(800L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView, "scaleY", 1.0f, 1.05f, 1.0f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setDuration(800L);
        AnimatorSet animatorSet = new AnimatorSet();
        this.jx = animatorSet;
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2);
        this.jx.start();
        return textView;
    }

    public RelativeLayout hp(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(getContext(), 301.0f), xh.jx(getContext(), 344.0f));
        layoutParams.addRule(13);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(2114387458);
        return relativeLayout;
    }

    private View hp(Context context, View view) {
        ImageView imageView = new ImageView(context);
        l.hp(jx.hp("saas_reward_title.webp")).to(imageView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(2, view.getId());
        layoutParams.setMargins(0, 0, 0, xh.jx(context, 20.0f));
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }
}
