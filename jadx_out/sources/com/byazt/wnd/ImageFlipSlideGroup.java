package com.byazt.wnd;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.uq.DynamicImageFlipSlide;
import com.byazt.ymw.nu;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1259})
/* loaded from: classes3.dex */
public class ImageFlipSlideGroup extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f27016a;

    /* renamed from: e, reason: collision with root package name */
    public String f27017e;
    public boolean eb;
    public String gu;
    public FrameLayout hp;

    /* renamed from: j, reason: collision with root package name */
    public float f27018j;
    public String jl;
    public ImageView jx;

    /* renamed from: l, reason: collision with root package name */
    public BookPageView f27019l;

    /* renamed from: q, reason: collision with root package name */
    public String f27020q;

    /* renamed from: s, reason: collision with root package name */
    public ImageFlipSlide f27021s;

    /* renamed from: w, reason: collision with root package name */
    public ObjectAnimator f27022w;
    public List<String> zy;

    public ImageFlipSlideGroup(Context context, boolean z2) {
        super(context);
        this.f27018j = 0.0f;
        this.eb = z2;
        j();
        setVisibility(4);
        post(new Runnable() { // from class: com.byazt.wnd.ImageFlipSlideGroup.1
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup.this.setVisibility(0);
            }
        });
    }

    private void j() {
        ImageFlipSlide imageFlipSlide = new ImageFlipSlide(getContext(), this.eb);
        this.f27021s = imageFlipSlide;
        addView(imageFlipSlide);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.hp = frameLayout;
        addView(frameLayout);
        if (!this.eb) {
            BookPageView bookPageView = new BookPageView(getContext());
            this.f27019l = bookPageView;
            this.hp.addView(bookPageView);
            return;
        }
        View view = new View(getContext());
        view.setBackgroundColor(-1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(nu.hp(getContext(), 2.0f), -1);
        layoutParams.gravity = 17;
        this.hp.addView(view, layoutParams);
        ImageView imageView = new ImageView(getContext());
        v.hp(getContext(), "tt_im_fs_handle", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(nu.hp(getContext(), 44.0f), nu.hp(getContext(), 44.0f));
        layoutParams2.gravity = 17;
        this.hp.addView(imageView, layoutParams2);
        this.jx = new ImageView(getContext());
        v.hp(getContext(), "tt_im_fs_tip", this.jx, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(nu.hp(getContext(), 196.0f), nu.hp(getContext(), 300.0f));
        layoutParams3.gravity = 17;
        layoutParams3.topMargin = nu.hp(getContext(), 6.0f);
        this.hp.addView(this.jx, layoutParams3);
    }

    public float getRatio() {
        return this.f27018j;
    }

    public void jx() {
        if (TextUtils.isEmpty(this.f27017e)) {
            this.f27021s.hp(this.f27020q, this.gu, this.zy);
        } else {
            this.f27021s.hp(this.f27017e, this.jl, (List<String>) null);
        }
    }

    public void l() {
        ObjectAnimator objectAnimator = this.f27022w;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void setFilterColors(List<String> list) {
        this.zy = list;
    }

    public void setRatio(float f2) {
        this.f27018j = f2;
        post(new Runnable() { // from class: com.byazt.wnd.ImageFlipSlideGroup.2
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup imageFlipSlideGroup = ImageFlipSlideGroup.this;
                if (imageFlipSlideGroup.eb) {
                    imageFlipSlideGroup.f27021s.hp(ImageFlipSlideGroup.this.f27018j);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ImageFlipSlideGroup.this.hp.getLayoutParams();
                    layoutParams.leftMargin = (int) (((1.0f - ImageFlipSlideGroup.this.f27018j) - 0.5f) * r1.getWidth() * 2);
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    ImageFlipSlideGroup.this.hp.setLayoutParams(layoutParams);
                    return;
                }
                Point point = new Point();
                float width = ImageFlipSlideGroup.this.getWidth();
                float width2 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup2 = ImageFlipSlideGroup.this;
                point.x = ((int) (width - (width2 * imageFlipSlideGroup2.f27018j))) - 100;
                float height = imageFlipSlideGroup2.getHeight();
                float width3 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup3 = ImageFlipSlideGroup.this;
                float f3 = imageFlipSlideGroup3.f27018j;
                point.y = ((int) (height - (width3 * f3))) - 100;
                if (f3 > 0.3f) {
                    double d2 = point.x;
                    double width4 = imageFlipSlideGroup3.getWidth() * 2;
                    ImageFlipSlideGroup imageFlipSlideGroup4 = ImageFlipSlideGroup.this;
                    point.x = (int) (d2 - (width4 * (imageFlipSlideGroup4.f27018j - 0.3d)));
                    point.y = (int) (point.y + ((imageFlipSlideGroup4.getHeight() / 2) * (ImageFlipSlideGroup.this.f27018j - 0.3d)));
                }
                ImageFlipSlideGroup.this.f27019l.hp(point);
                ImageFlipSlideGroup imageFlipSlideGroup5 = ImageFlipSlideGroup.this;
                imageFlipSlideGroup5.f27019l.setAlpha(1.0f - (imageFlipSlideGroup5.f27018j - 0.3f));
                ImageFlipSlideGroup.this.f27021s.hp(ImageFlipSlideGroup.this.f27019l.getFilterAreaPath());
            }
        });
    }

    public void hp(final DynamicImageFlipSlide.hp hpVar) {
        if (this.f27016a) {
            if (hpVar != null) {
                hpVar.hp();
                return;
            }
            return;
        }
        this.f27016a = true;
        this.f27022w.cancel();
        if (this.jx != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setFillAfter(true);
            this.jx.setAnimation(alphaAnimation);
            alphaAnimation.start();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, n.f36417C, this.f27018j, this.eb ? 1.1f : 1.3f);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.wnd.ImageFlipSlideGroup.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ImageFlipSlideGroup.this.hp.setVisibility(8);
                DynamicImageFlipSlide.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        objectAnimatorOfFloat.start();
    }

    public void l(String str, String str2) {
        this.f27017e = str;
        this.jl = str2;
    }

    public void hp() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, n.f36417C, 0.15f, 0.25f);
        this.f27022w = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(700L);
        this.f27022w.setInterpolator(new LinearInterpolator());
        this.f27022w.setRepeatCount(-1);
        this.f27022w.setRepeatMode(2);
        this.f27022w.start();
    }

    public void hp(String str, String str2) {
        this.f27020q = str;
        this.gu = str2;
    }
}
