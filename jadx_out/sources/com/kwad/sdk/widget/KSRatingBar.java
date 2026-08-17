package com.kwad.sdk.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.kwad.sdk.R;
import java.math.BigDecimal;

/* loaded from: classes4.dex */
public class KSRatingBar extends LinearLayout {
    private boolean btj;
    private boolean btk;
    private int btl;
    private int btm;
    private a btn;
    private float bto;
    private float btp;
    private float btq;
    private Drawable btr;
    private Drawable bts;
    private Drawable btt;
    private boolean btu;

    /* renamed from: y, reason: collision with root package name */
    private int f31479y;

    public interface a {
    }

    public KSRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31479y = 1;
        this.btu = false;
        setOrientation(0);
        setDividerDrawable(getResources().getDrawable(R.drawable.ksad_reward_apk_stars_divider));
        setShowDividers(2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_KSRatingBar);
        this.btt = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starHalf);
        this.btr = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starEmpty);
        this.bts = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starFill);
        this.bto = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImageWidth, 60.0f);
        this.btp = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImageHeight, 120.0f);
        this.btq = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImagePadding, 15.0f);
        this.btl = typedArrayObtainStyledAttributes.getInteger(R.styleable.ksad_KSRatingBar_ksad_totalStarCount, 5);
        this.btm = typedArrayObtainStyledAttributes.getInteger(R.styleable.ksad_KSRatingBar_ksad_starCount, 5);
        this.btj = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_KSRatingBar_ksad_clickable, true);
        this.btk = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_KSRatingBar_ksad_halfstart, false);
        for (int i2 = 0; i2 < this.btl; i2++) {
            ImageView imageViewD = D(context, this.btu);
            imageViewD.setOnClickListener(new View.OnClickListener() { // from class: com.kwad.sdk.widget.KSRatingBar.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (KSRatingBar.this.btj) {
                        if (!KSRatingBar.this.btk) {
                            KSRatingBar.this.setStar(r0.indexOfChild(view) + 1.0f);
                            if (KSRatingBar.this.btn != null) {
                                a unused = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                return;
                            }
                            return;
                        }
                        if (KSRatingBar.this.f31479y % 2 == 0) {
                            KSRatingBar.this.setStar(r0.indexOfChild(view) + 1.0f);
                        } else {
                            KSRatingBar.this.setStar(r0.indexOfChild(view) + 0.5f);
                        }
                        if (KSRatingBar.this.btn != null) {
                            if (KSRatingBar.this.f31479y % 2 == 0) {
                                a unused2 = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                KSRatingBar.e(KSRatingBar.this);
                            } else {
                                a unused3 = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                KSRatingBar.e(KSRatingBar.this);
                            }
                        }
                    }
                }
            });
            addView(imageViewD);
        }
        setStar(this.btm);
    }

    private ImageView D(Context context, boolean z2) {
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.bto), Math.round(this.btp)));
        imageView.setPadding(0, 0, Math.round(this.btq), 0);
        if (z2) {
            imageView.setImageDrawable(this.btr);
            return imageView;
        }
        imageView.setImageDrawable(this.bts);
        return imageView;
    }

    public static /* synthetic */ int e(KSRatingBar kSRatingBar) {
        int i2 = kSRatingBar.f31479y;
        kSRatingBar.f31479y = i2 + 1;
        return i2;
    }

    public void setImagePadding(float f2) {
        this.btq = f2;
    }

    public void setOnRatingChangeListener(a aVar) {
        this.btn = aVar;
    }

    public void setStar(float f2) {
        int i2 = (int) f2;
        float fFloatValue = new BigDecimal(Float.toString(f2)).subtract(new BigDecimal(Integer.toString(i2))).floatValue();
        int i3 = this.btl;
        float f3 = i2 > i3 ? i3 : i2;
        if (f3 < 0.0f) {
            f3 = 0.0f;
        }
        for (int i4 = 0; i4 < f3; i4++) {
            ((ImageView) getChildAt(i4)).setImageDrawable(this.bts);
        }
        if (fFloatValue > 0.0f) {
            ((ImageView) getChildAt(i2)).setImageDrawable(this.btt);
            int i5 = this.btl;
            while (true) {
                i5--;
                if (i5 < 1.0f + f3) {
                    return;
                } else {
                    ((ImageView) getChildAt(i5)).setImageDrawable(this.btr);
                }
            }
        } else {
            int i6 = this.btl;
            while (true) {
                i6--;
                if (i6 < f3) {
                    return;
                } else {
                    ((ImageView) getChildAt(i6)).setImageDrawable(this.btr);
                }
            }
        }
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.btr = drawable;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.bts = drawable;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.btt = drawable;
    }

    public void setStarImageHeight(float f2) {
        this.btp = f2;
    }

    public void setStarImageWidth(float f2) {
        this.bto = f2;
    }

    public void setTotalStarCount(int i2) {
        this.btl = i2;
    }

    public void setmClickable(boolean z2) {
        this.btj = z2;
    }
}
