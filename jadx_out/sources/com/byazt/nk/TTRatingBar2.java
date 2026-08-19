package com.byazt.nk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.byazt.kj.hp;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1180})
/* loaded from: classes3.dex */
public class TTRatingBar2 extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f23659a;
    public int eb;
    public LinearLayout hp;

    /* renamed from: j, reason: collision with root package name */
    public int f23660j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public LinearLayout f23661l;

    /* renamed from: q, reason: collision with root package name */
    public int f23662q;

    /* renamed from: s, reason: collision with root package name */
    public int f23663s;

    /* renamed from: w, reason: collision with root package name */
    public double f23664w;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.hp = new LinearLayout(getContext());
        this.f23661l = new LinearLayout(getContext());
        this.hp.setOrientation(0);
        this.hp.setGravity(GravityCompat.START);
        this.f23661l.setOrientation(0);
        this.f23661l.setGravity(GravityCompat.START);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.jx, this.f23660j);
        layoutParams.leftMargin = this.f23659a;
        layoutParams.topMargin = this.eb;
        layoutParams.rightMargin = this.f23663s;
        layoutParams.bottomMargin = this.f23662q;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.hp.measure(i2, i3);
        double dFloor = Math.floor(this.f23664w);
        int i4 = this.f23659a;
        int i5 = this.f23663s + i4;
        this.f23661l.measure(View.MeasureSpec.makeMeasureSpec((int) (((i5 + r2) * dFloor) + i4 + ((this.f23664w - dFloor) * this.jx)), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(this.hp.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
    }

    public void setRating(double d2) {
        this.f23664w = d2;
    }

    public void hp(int i2, int i3) {
        this.jx = i3;
        this.f23660j = i2;
    }

    public void hp() {
        removeAllViews();
        v.hp(getContext(), "tt_ratingbar_full_star2", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.nk.TTRatingBar2.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i2 = 0; i2 < 5; i2++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.f23661l.addView(starImageView);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        v.hp(getContext(), "tt_ratingbar_empty_star2", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.nk.TTRatingBar2.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar2.this.getContext().getResources(), bitmap);
                for (int i2 = 0; i2 < 5; i2++) {
                    ImageView starImageView = TTRatingBar2.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar2.this.hp.addView(starImageView);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        addView(this.hp);
        addView(this.f23661l);
        requestLayout();
    }

    public void hp(int i2, int i3, int i4, int i5) {
        this.f23659a = i2;
        this.eb = i3;
        this.f23663s = i4;
        this.f23662q = i5;
    }
}
