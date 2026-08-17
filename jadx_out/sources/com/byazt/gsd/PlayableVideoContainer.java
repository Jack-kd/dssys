package com.byazt.gsd;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Shader;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.byazt.jz.sz;
import com.byazt.ymw.v;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, 1958})
/* loaded from: classes2.dex */
public class PlayableVideoContainer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View f20575a;
    public long eb;
    public final Paint hp;

    /* renamed from: j, reason: collision with root package name */
    public FrameLayout f20576j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public float f20577l;

    /* renamed from: s, reason: collision with root package name */
    public View.OnClickListener f20578s;

    /* renamed from: w, reason: collision with root package name */
    public View f20579w;

    public PlayableVideoContainer(Context context) {
        super(context);
        this.hp = new Paint();
        this.eb = 0L;
        l();
    }

    private void a() {
        int height;
        final int i2;
        final int i3;
        int width;
        int iJ = xh.j(getContext());
        int iW = xh.w(getContext());
        final int left = getLeft();
        final int top = getTop();
        int left2 = getLeft();
        int right = iJ - getRight();
        int top2 = getTop();
        int bottom = iW - getBottom();
        int iJx = xh.jx(getContext(), 20.0f);
        int iMin = Math.min(Math.min(left2, right), Math.min(top2, bottom));
        if (left2 != iMin) {
            if (right == iMin) {
                width = (iJ - iJx) - getWidth();
                int top3 = getTop();
                int bottom2 = getBottom();
                if (top3 < 0) {
                    bottom2 = iJx + getHeight();
                    top3 = iJx;
                }
                if (bottom2 <= iW) {
                    i3 = width;
                    i2 = top3;
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.gsd.PlayableVideoContainer.3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float animatedFraction = valueAnimator.getAnimatedFraction();
                            int i4 = (int) (left + ((i3 - r0) * animatedFraction));
                            int i5 = (int) (top + ((i2 - r1) * animatedFraction));
                            PlayableVideoContainer.this.hp(i4, i5, PlayableVideoContainer.this.getWidth() + i4, PlayableVideoContainer.this.getHeight() + i5);
                        }
                    });
                    duration.start();
                }
                iJx = (iW - iJx) - getHeight();
                i3 = width;
            } else if (top2 == iMin) {
                int left3 = getLeft();
                int right2 = getRight();
                getHeight();
                if (left3 < 0) {
                    right2 = iJx + getWidth();
                    left3 = iJx;
                }
                if (right2 > iJ) {
                    width = (iJ - iJx) - getWidth();
                    i3 = width;
                } else {
                    i3 = left3;
                }
            } else {
                int left4 = getLeft();
                int right3 = getRight();
                height = (iW - iJx) - getHeight();
                if (left4 < 0) {
                    right3 = iJx + getWidth();
                    left4 = iJx;
                }
                if (right3 <= iJ) {
                    i2 = height;
                    i3 = left4;
                    ValueAnimator duration2 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                    duration2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.gsd.PlayableVideoContainer.3
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float animatedFraction = valueAnimator.getAnimatedFraction();
                            int i4 = (int) (left + ((i3 - r0) * animatedFraction));
                            int i5 = (int) (top + ((i2 - r1) * animatedFraction));
                            PlayableVideoContainer.this.hp(i4, i5, PlayableVideoContainer.this.getWidth() + i4, PlayableVideoContainer.this.getHeight() + i5);
                        }
                    });
                    duration2.start();
                }
                iJx = (iJ - iJx) - getWidth();
            }
            i2 = iJx;
            ValueAnimator duration22 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
            duration22.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.gsd.PlayableVideoContainer.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i4 = (int) (left + ((i3 - r0) * animatedFraction));
                    int i5 = (int) (top + ((i2 - r1) * animatedFraction));
                    PlayableVideoContainer.this.hp(i4, i5, PlayableVideoContainer.this.getWidth() + i4, PlayableVideoContainer.this.getHeight() + i5);
                }
            });
            duration22.start();
        }
        getWidth();
        int top4 = getTop();
        int bottom3 = getBottom();
        if (top4 < 0) {
            bottom3 = iJx + getHeight();
            top4 = iJx;
        }
        if (bottom3 <= iW) {
            i2 = top4;
            i3 = iJx;
            ValueAnimator duration222 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
            duration222.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.gsd.PlayableVideoContainer.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i4 = (int) (left + ((i3 - r0) * animatedFraction));
                    int i5 = (int) (top + ((i2 - r1) * animatedFraction));
                    PlayableVideoContainer.this.hp(i4, i5, PlayableVideoContainer.this.getWidth() + i4, PlayableVideoContainer.this.getHeight() + i5);
                }
            });
            duration222.start();
        }
        height = (iW - iJx) - getHeight();
        i2 = height;
        i3 = iJx;
        ValueAnimator duration2222 = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
        duration2222.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.gsd.PlayableVideoContainer.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                int i4 = (int) (left + ((i3 - r0) * animatedFraction));
                int i5 = (int) (top + ((i2 - r1) * animatedFraction));
                PlayableVideoContainer.this.hp(i4, i5, PlayableVideoContainer.this.getWidth() + i4, PlayableVideoContainer.this.getHeight() + i5);
            }
        });
        duration2222.start();
    }

    private View j() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(Color.parseColor("#77000000"));
        TextView textView = new TextView(getContext());
        textView.setId(2114387593);
        textView.setText("视频异常\n无法播放");
        textView.setTextColor(-1);
        textView.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    private View jx() {
        int iJx = xh.jx(getContext(), 8.0f);
        int iJx2 = xh.jx(getContext(), 7.0f);
        int iJx3 = xh.jx(getContext(), 5.0f);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(Color.parseColor("#77000000"));
        TextView textView = new TextView(getContext());
        textView.setId(2114387593);
        textView.setText("可以\n拖动");
        textView.setTextColor(-1);
        textView.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        ImageView imageView = new ImageView(getContext());
        v.hp(getContext(), "tt_arrow_up", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iJx2, iJx3);
        layoutParams2.setMargins(iJx, iJx, iJx, iJx);
        layoutParams2.addRule(14);
        layoutParams2.addRule(2, textView.getId());
        relativeLayout.addView(imageView, layoutParams2);
        ImageView imageView2 = new ImageView(getContext());
        v.hp(getContext(), "tt_arrow_down", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iJx2, iJx3);
        layoutParams3.setMargins(iJx, iJx, iJx, iJx);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView.getId());
        relativeLayout.addView(imageView2, layoutParams3);
        ImageView imageView3 = new ImageView(getContext());
        v.hp(getContext(), "tt_arrow_left", imageView3, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iJx3, iJx2);
        layoutParams4.setMargins(iJx, iJx, iJx, iJx);
        layoutParams4.addRule(15);
        layoutParams4.addRule(0, textView.getId());
        relativeLayout.addView(imageView3, layoutParams4);
        ImageView imageView4 = new ImageView(getContext());
        v.hp(getContext(), "tt_arrow_right", imageView4, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(iJx3, iJx2);
        layoutParams5.setMargins(iJx, iJx, iJx, iJx);
        layoutParams5.addRule(15);
        layoutParams5.addRule(1, textView.getId());
        relativeLayout.addView(imageView4, layoutParams5);
        relativeLayout.setVisibility(8);
        return relativeLayout;
    }

    private void l() {
        int iJx = xh.jx(getContext(), 2.0f);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setPadding(iJx, iJx, iJx, iJx);
        addView(frameLayout, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.f20576j = frameLayout2;
        frameLayout.addView(frameLayout2);
        this.f20579w = jx();
        frameLayout.addView(this.f20579w, new ViewGroup.MarginLayoutParams(-1, -1));
        this.f20575a = j();
        frameLayout.addView(this.f20575a, new ViewGroup.MarginLayoutParams(-1, -1));
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.byazt.gsd.PlayableVideoContainer.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), xh.jx(sz.getContext(), 12.0f));
            }
        });
        setClipToOutline(true);
    }

    private void w() {
        View.OnClickListener onClickListener = this.f20578s;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean zDrawChild = super.drawChild(canvas, view, j2);
        this.hp.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, getMeasuredHeight(), new int[]{Color.parseColor("#FFDD42"), Color.parseColor("#FFB744")}, (float[]) null, Shader.TileMode.CLAMP));
        this.hp.setColor(SupportMenu.CATEGORY_MASK);
        this.hp.setStyle(Paint.Style.STROKE);
        this.hp.setAntiAlias(true);
        this.hp.setStrokeWidth(xh.jx(getContext(), 4.0f));
        canvas.drawRoundRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), xh.jx(getContext(), 12.0f), xh.jx(getContext(), 12.0f), this.hp);
        return zDrawChild;
    }

    public FrameLayout getVideoContainer() {
        return this.f20576j;
    }

    public void hp() {
        post(new Runnable() { // from class: com.byazt.gsd.PlayableVideoContainer.2
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup.LayoutParams layoutParams = PlayableVideoContainer.this.getLayoutParams();
                layoutParams.width = xh.jx(PlayableVideoContainer.this.getContext(), 94.0f);
                layoutParams.height = xh.jx(PlayableVideoContainer.this.getContext(), 167.0f);
                PlayableVideoContainer.this.setLayoutParams(layoutParams);
            }
        });
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                float fAbs = Math.abs(motionEvent.getX() - this.f20577l);
                float fAbs2 = Math.abs(motionEvent.getY() - this.jx);
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.eb;
                if (fAbs < 10.0f && fAbs2 < 10.0f && jElapsedRealtime < 200) {
                    w();
                    return true;
                }
            } else if (action == 2) {
                float x2 = motionEvent.getX() - this.f20577l;
                float y2 = motionEvent.getY() - this.jx;
                if (x2 != 0.0f && y2 != 0.0f) {
                    int left = (int) (getLeft() + x2);
                    int top = (int) (getTop() + y2);
                    hp(left, top, getWidth() + left, getHeight() + top);
                }
            } else if (action == 3) {
            }
            a();
            setPressed(false);
        } else {
            this.f20577l = motionEvent.getX();
            this.jx = motionEvent.getY();
            this.eb = SystemClock.elapsedRealtime();
        }
        return true;
    }

    public void setCustomClickListener(View.OnClickListener onClickListener) {
        this.f20578s = onClickListener;
    }

    public void hp(boolean z2) {
        if (!z2) {
            xh.hp(this.f20575a, 8);
        } else {
            xh.hp(this.f20575a, 0);
            xh.hp(this.f20579w, 8);
        }
    }

    public void hp(int i2, int i3, int i4, int i5) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.leftMargin = i2;
        layoutParams.topMargin = i3;
        layoutParams.gravity = 0;
        layout(i2, i3, i4, i5);
    }

    public void l(boolean z2) {
        if (z2) {
            xh.hp(this.f20579w, 0);
            xh.hp(this.f20575a, 8);
        } else {
            xh.hp(this.f20579w, 8);
        }
    }
}
