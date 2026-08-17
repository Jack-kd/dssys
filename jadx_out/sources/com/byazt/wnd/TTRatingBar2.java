package com.byazt.wnd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.sq.s;
import com.byazt.yj.gu;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1180})
/* loaded from: classes3.dex */
public class TTRatingBar2 extends FrameLayout {
    public static final int eb = (gu.l("", 0.0f, true)[1] / 2) + 1;

    /* renamed from: s, reason: collision with root package name */
    public static final int f27067s = (gu.l("", 0.0f, true)[1] / 2) + 3;

    /* renamed from: a, reason: collision with root package name */
    public float f27068a;
    public LinearLayout hp;

    /* renamed from: j, reason: collision with root package name */
    public float f27069j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public LinearLayout f27070l;

    /* renamed from: w, reason: collision with root package name */
    public double f27071w;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hp = new LinearLayout(getContext());
        this.f27070l = new LinearLayout(getContext());
        this.hp.setOrientation(0);
        this.hp.setGravity(GravityCompat.START);
        this.f27070l.setOrientation(0);
        this.f27070l.setGravity(GravityCompat.START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.jx, (int) this.f27069j));
        imageView.setPadding(1, eb, 1, f27067s);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.hp.measure(i2, i3);
        double d2 = this.f27071w;
        float f2 = this.jx;
        this.f27070l.measure(View.MeasureSpec.makeMeasureSpec((int) ((((int) d2) * f2) + 1.0f + ((f2 - 2.0f) * (d2 - ((int) d2)))), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(this.hp.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
        if (this.f27068a > 0.0f) {
            this.hp.setPadding(0, ((int) (r7.getMeasuredHeight() - this.f27068a)) / 2, 0, 0);
            this.f27070l.setPadding(0, ((int) (this.hp.getMeasuredHeight() - this.f27068a)) / 2, 0, 0);
        }
    }

    public void hp(double d2, final int i2, int i3, int i4) {
        float f2 = i3;
        this.jx = (int) s.jx(getContext(), f2);
        this.f27069j = (int) s.jx(getContext(), f2);
        this.f27071w = d2;
        this.f27068a = i4;
        removeAllViews();
        v.hp(getContext(), "tt_star", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wnd.TTRatingBar2.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i5 = 0; i5 < 5; i5++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    starImageView.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.f27070l.addView(starImageView);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        v.hp(getContext(), "tt_star_thick", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.wnd.TTRatingBar2.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i5 = 0; i5 < 5; i5++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.hp.addView(starImageView);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        addView(this.hp);
        addView(this.f27070l);
        requestLayout();
    }
}
