package com.byazt.nk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.byazt.kj.hp;
import com.byazt.ymw.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 1946})
/* loaded from: classes3.dex */
public class TTRatingBar extends LinearLayout {
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public float f23656j;
    public float jx;

    /* renamed from: l, reason: collision with root package name */
    public int f23657l;

    /* renamed from: w, reason: collision with root package name */
    public float f23658w;

    public TTRatingBar(Context context) {
        super(context);
        this.hp = 5;
        this.f23657l = 0;
        hp(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.jx), Math.round(this.f23656j)));
        imageView.setPadding(0, 0, Math.round(this.f23658w), 0);
        return imageView;
    }

    public int getStarEmptyNum() {
        return this.f23657l;
    }

    public int getStarFillNum() {
        return this.hp;
    }

    public float getStarImageHeight() {
        return this.f23656j;
    }

    public float getStarImagePadding() {
        return this.f23658w;
    }

    public float getStarImageWidth() {
        return this.jx;
    }

    public void setStarEmptyNum(int i2) {
        this.f23657l = i2;
    }

    public void setStarFillNum(int i2) {
        this.hp = i2;
    }

    public void setStarImageHeight(float f2) {
        this.f23656j = f2;
    }

    public void setStarImagePadding(float f2) {
        this.f23658w = f2;
    }

    public void setStarImageWidth(float f2) {
        this.jx = f2;
    }

    private void hp(Context context) {
        setOrientation(0);
        this.jx = hp(context, 15.0f);
        this.f23656j = hp(context, 15.0f);
        this.f23658w = hp(context, 5.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        v.hp(getContext(), "tt_star_empty_bg", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.nk.TTRatingBar.2
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar.this.getContext().getResources(), bitmap);
                for (int i2 = 0; i2 < TTRatingBar.this.getStarEmptyNum(); i2++) {
                    ImageView starImageView = TTRatingBar.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar.this.addView(starImageView);
                }
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }

    private int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void hp() {
        removeAllViews();
        v.hp(getContext(), "tt_star_full_bg", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.nk.TTRatingBar.1
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(TTRatingBar.this.getContext().getResources(), bitmap);
                for (int i2 = 0; i2 < TTRatingBar.this.getStarFillNum(); i2++) {
                    ImageView starImageView = TTRatingBar.this.getStarImageView();
                    starImageView.setImageDrawable(bitmapDrawable);
                    TTRatingBar.this.addView(starImageView);
                }
                TTRatingBar.this.l();
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
    }
}
