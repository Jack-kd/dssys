package com.byazt.kgm;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.byazt.dth.TTViewStub;
import com.byazt.dth.l;
import com.byazt.nk.TTProgressBar;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.badge.BadgeDrawable;

@com.byazt.kj.hp(hp = {0, 1, 46, 2132})
/* loaded from: classes.dex */
public class LayoutVideoDetail extends RelativeLayout {
    public Drawable hp;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f22062l;

    public LayoutVideoDetail(Context context) {
        super(context);
        hp(context);
    }

    private View a(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387605);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setVisibility(8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setGravity(16);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387897);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams2.leftMargin = xh.jx(context, 12.0f);
        imageView.setLayoutParams(layoutParams2);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        int color = Color.parseColor("#959595");
        com.byazt.vi.hp hpVar = new com.byazt.vi.hp(48);
        hpVar.hp(color);
        float fJx = xh.jx(context, 2.0f);
        hpVar.hp(fJx);
        int color2 = Color.parseColor("#FFFFFF");
        com.byazt.vi.hp hpVar2 = new com.byazt.vi.hp(48);
        hpVar2.hp(color2);
        hpVar2.hp(fJx);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, hpVar);
        stateListDrawable.addState(new int[0], hpVar2);
        imageView.setImageDrawable(stateListDrawable);
        relativeLayout.addView(imageView);
        TextView textView = new TextView(context);
        textView.setId(2114387706);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        textView.setGravity(16);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(true);
        textView.setTextSize(2, 17.0f);
        textView.setTextColor(-1);
        int i2 = l.hp.f19308j;
        textView.setPadding(i2, 0, i2, 0);
        relativeLayout.addView(textView);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387797);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(i2, 0, i2, 0);
        TextView textView2 = new TextView(context);
        textView2.setId(2114387846);
        textView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        textView2.setSingleLine(true);
        textView2.setTextSize(2, 12.0f);
        textView2.setTextColor(-1);
        linearLayout.addView(textView2);
        relativeLayout.addView(linearLayout);
        return relativeLayout;
    }

    private StateListDrawable e(Context context) {
        int color = Color.parseColor("#959595");
        com.byazt.vi.hp hpVar = new com.byazt.vi.hp(48);
        hpVar.hp(color);
        float fJx = xh.jx(context, 2.0f);
        hpVar.hp(fJx);
        int color2 = Color.parseColor("#FFFFFF");
        com.byazt.vi.hp hpVar2 = new com.byazt.vi.hp(48);
        hpVar2.hp(color2);
        hpVar2.hp(fJx);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, hpVar);
        stateListDrawable.addState(new int[0], hpVar2);
        return stateListDrawable;
    }

    private View eb(Context context) {
        TTProgressBar tTProgressBar = new TTProgressBar(context, null, R.style.Widget.ProgressBar.Horizontal);
        tTProgressBar.setIndeterminate(false);
        tTProgressBar.setId(2114387653);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, xh.jx(context, 1.5f));
        layoutParams.addRule(12);
        tTProgressBar.setLayoutParams(layoutParams);
        tTProgressBar.setBackground(null);
        tTProgressBar.setMax(100);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#A5FFFFFF"));
        float fJx = xh.jx(context, 1.0f);
        gradientDrawable.setCornerRadius(fJx);
        int iJx = xh.jx(context, 2.0f);
        gradientDrawable.setSize(-1, iJx);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(fJx);
        gradientDrawable2.setSize(-1, iJx);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(fJx);
        gradientDrawable3.setSize(-1, iJx);
        com.byazt.vi.eb.hp(tTProgressBar, new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar.setVisibility(8);
        return tTProgressBar;
    }

    private View j(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387678);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#26000000"));
        gradientDrawable.setCornerRadius(xh.jx(context, 4.0f));
        imageView.setBackground(gradientDrawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        int color = Color.parseColor("#959595");
        com.byazt.vi.hp hpVar = new com.byazt.vi.hp(48);
        hpVar.hp(color);
        float fJx = xh.jx(context, 2.0f);
        hpVar.hp(fJx);
        int color2 = Color.parseColor("#FFFFFF");
        com.byazt.vi.hp hpVar2 = new com.byazt.vi.hp(48);
        hpVar2.hp(color2);
        hpVar2.hp(fJx);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, hpVar);
        stateListDrawable.addState(new int[0], hpVar2);
        imageView.setImageDrawable(stateListDrawable);
        int iJx = xh.jx(context, 30.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iJx, iJx);
        layoutParams.addRule(21);
        layoutParams.addRule(11);
        int iJx2 = xh.jx(context, 7.0f);
        layoutParams.setMargins(0, iJx2, iJx2, 0);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private View jx(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387626);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        v.hp(context, "tt_new_play_video", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        imageView.setVisibility(8);
        return imageView;
    }

    private View q(Context context) {
        TextView textView = new TextView(context);
        textView.setId(2114387759);
        textView.setBackgroundColor(0);
        textView.setMinHeight(xh.jx(context, 44.0f));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = xh.jx(context, 12.0f);
        textView.setLayoutParams(layoutParams);
        textView.setCompoundDrawablesWithIntrinsicBounds(e(context), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(e(context), (Drawable) null, (Drawable) null, (Drawable) null);
        textView.setText("关闭");
        return textView;
    }

    private View s(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387628);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, xh.jx(context, 40.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setVisibility(8);
        TextView textView = new TextView(context);
        textView.setId(2114387811);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(xh.jx(context, 16.0f), 0, xh.jx(context, 12.0f), 0);
        textView.setLayoutParams(layoutParams2);
        textView.setText("00:00");
        textView.setTextColor(-1);
        textView.setTextSize(2, 10.0f);
        linearLayout.addView(textView);
        SeekBar seekBar = new SeekBar(context);
        seekBar.setId(2114387872);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams3.gravity = 16;
        seekBar.setLayoutParams(layoutParams3);
        seekBar.setBackground(null);
        seekBar.setMax(100);
        if (Build.VERSION.SDK_INT >= 29) {
            seekBar.setMaxHeight(xh.jx(context, 4.0f));
            seekBar.setMinHeight(xh.jx(context, 4.0f));
        } else {
            layoutParams3.height = xh.jx(context, 4.0f);
        }
        seekBar.setPadding(0, 0, 0, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#A5FFFFFF"));
        float fJx = xh.jx(context, 1.0f);
        gradientDrawable.setCornerRadius(fJx);
        int iJx = xh.jx(context, 2.0f);
        gradientDrawable.setSize(-1, iJx);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(fJx);
        gradientDrawable2.setSize(-1, iJx);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(fJx);
        gradientDrawable3.setSize(-1, iJx);
        seekBar.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(Color.parseColor("#FFFFFFFF"));
        int iJx2 = xh.jx(context, 15.0f);
        shapeDrawable.setIntrinsicWidth(iJx2);
        shapeDrawable.setIntrinsicHeight(iJx2);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(xh.jx(context, 1.0f));
        paint.setColor(Color.parseColor("#1E000000"));
        seekBar.setThumb(shapeDrawable);
        seekBar.setThumbOffset(0);
        linearLayout.addView(seekBar);
        TextView textView2 = new TextView(context);
        textView2.setId(2114387668);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(xh.jx(context, 12.0f), 0, xh.jx(context, 16.0f), 0);
        textView2.setLayoutParams(layoutParams4);
        textView2.setText("00:00");
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 10.0f);
        linearLayout.addView(textView2);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387661);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams5.setMargins(xh.jx(context, 16.0f), 0, xh.jx(context, 16.0f), 0);
        imageView.setLayoutParams(layoutParams5);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setVisibility(8);
        v.hp(context, "tt_enlarge_video", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        linearLayout.addView(imageView);
        return linearLayout;
    }

    private View w(Context context) {
        TextView textView = new TextView(context);
        textView.setId(2114387730);
        textView.setGravity(BadgeDrawable.TOP_START);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(false);
        textView.setTextSize(2, 17.0f);
        textView.setTextColor(-1);
        textView.setVisibility(8);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setColors(new int[]{Color.parseColor("#FF1A1A1A"), Color.parseColor("#00000000")});
        textView.setBackground(gradientDrawable);
        int i2 = l.hp.f19308j;
        textView.setPadding(i2, l.hp.f19310w, i2, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(20);
        layoutParams.addRule(10);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private View l(final Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387900);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setGravity(17);
        ImageView imageView = new ImageView(context);
        imageView.setId(2114387651);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        tTProgressBar.setId(2114387631);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(xh.jx(context, 60.0f), xh.jx(context, 60.0f));
        layoutParams.addRule(13);
        tTProgressBar.setLayoutParams(layoutParams);
        v.hp(context, "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.kgm.LayoutVideoDetail.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vi.w.hp(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setId(2114387823);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setVisibility(8);
        final ImageView imageView2 = new ImageView(context);
        imageView2.setId(2114387618);
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        v.hp(context, "tt_refreshing_video_textpage_pressed", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.kgm.LayoutVideoDetail.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                LayoutVideoDetail.this.hp = new BitmapDrawable(context.getResources(), bitmap);
                LayoutVideoDetail.this.hp(context, imageView2);
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        v.hp(context, "tt_refreshing_video_textpage_normal", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.kgm.LayoutVideoDetail.3
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                LayoutVideoDetail.this.f22062l = new BitmapDrawable(context.getResources(), bitmap);
                LayoutVideoDetail.this.hp(context, imageView2);
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        TextView textView = new TextView(context);
        textView.setId(2114387860);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText("加载失败，点击重试");
        textView.setTextColor(10066329);
        linearLayout.addView(imageView2);
        linearLayout.addView(textView);
        relativeLayout.addView(imageView);
        relativeLayout.addView(tTProgressBar);
        relativeLayout.addView(linearLayout);
        return relativeLayout;
    }

    private void hp(Context context) {
        setId(2114387714);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        setBackgroundColor(-1);
        addView(l(context));
        addView(new j().inflate(context));
        addView(jx(context));
        addView(j(context));
        addView(w(context));
        addView(a(context));
        addView(eb(context));
        addView(s(context));
        TTViewStub tTViewStub = new TTViewStub(context, new a());
        tTViewStub.setId(2114387744);
        tTViewStub.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(tTViewStub);
        TTViewStub tTViewStub2 = new TTViewStub(context, new l());
        tTViewStub2.setId(2114387666);
        tTViewStub2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(tTViewStub2);
        addView(q(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, ImageView imageView) {
        Drawable drawable;
        Drawable drawable2 = this.hp;
        if (drawable2 == null || (drawable = this.f22062l) == null) {
            return;
        }
        imageView.setImageDrawable(com.byazt.vi.w.hp(context, drawable2, drawable));
    }
}
