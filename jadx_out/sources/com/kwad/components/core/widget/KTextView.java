package com.kwad.components.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.style.LineHeightSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.sdk.R;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class KTextView extends AppCompatTextView {

    public enum Font {
        HYQiHei75S("HYQiHei_75S"),
        HYQiHei80S("HYQiHei_80S"),
        HYQiHei90S("HYQiHei_90S"),
        SIYuan("SIYuan"),
        AvenirNextBold("AvenirNext-Bold"),
        AvenirNextBoldItalic("AvenirNext-Boldltalic"),
        DIN("din");

        public final String name;

        Font(String str) {
            this.name = str;
        }
    }

    public KTextView(Context context) {
        super(context);
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        boolean z2;
        int i2;
        int i3 = R.attr.ksad_use_fake_bold;
        int i4 = R.attr.ksad_font_weight;
        int i5 = R.attr.ksad_font_name;
        int[] iArr = {i3, i4, i5};
        Arrays.sort(iArr);
        int i6 = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, iArr);
            z2 = typedArrayObtainStyledAttributes.getBoolean(Arrays.binarySearch(iArr, i3), false);
            i6 = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, i4), MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL);
            i2 = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, i5), 0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            z2 = false;
            i2 = 0;
        }
        if (i2 > 0) {
            if (i2 == 1) {
                setFontName(Font.HYQiHei75S);
            } else if (i2 == 2) {
                setFontName(Font.HYQiHei80S);
            } else if (i2 == 3) {
                setFontName(Font.HYQiHei90S);
            } else if (i2 == 4) {
                setFontName(Font.SIYuan);
            } else if (i2 == 5) {
                setFontName(Font.AvenirNextBold);
            } else if (i2 == 6) {
                setFontName(Font.AvenirNextBoldItalic);
            } else if (i2 == 7) {
                setFontName(Font.DIN);
            }
        } else if (z2 || i6 >= 500) {
            getPaint().setFakeBoldText(true);
        }
        setIncludeFontPadding(false);
    }

    private SpannableStringBuilder c(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.setSpan(new LineHeightSpan() { // from class: com.kwad.components.core.widget.KTextView.1
            @Override // android.text.style.LineHeightSpan
            public final void chooseHeight(CharSequence charSequence2, int i2, int i3, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
                Rect rect = new Rect();
                KTextView.this.getPaint().getTextBounds(charSequence2.toString(), 0, charSequence2.length(), rect);
                int i6 = fontMetricsInt.descent - fontMetricsInt.ascent;
                int iMax = Math.max((int) KTextView.this.getTextSize(), rect.bottom - rect.top);
                int iAbs = Math.abs(fontMetricsInt.ascent - rect.top);
                int i7 = fontMetricsInt.descent - rect.bottom;
                int i8 = (i6 - iMax) / 2;
                if (i8 < Math.min(iAbs, i7)) {
                    fontMetricsInt.ascent += i8;
                    fontMetricsInt.descent -= i8;
                } else if (iAbs < i7) {
                    int i9 = rect.top;
                    fontMetricsInt.ascent = i9;
                    fontMetricsInt.descent = iMax + i9;
                } else {
                    int i10 = rect.bottom;
                    fontMetricsInt.descent = i10;
                    fontMetricsInt.ascent = i10 - iMax;
                }
            }
        }, 0, charSequence.length(), 33);
        return spannableStringBuilder;
    }

    public void setFontName(Font font) {
        try {
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + font.name + ".ttf"));
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    public void setFontWeight(int i2) {
        getPaint().setFakeBoldText(i2 >= 500);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(c(charSequence), bufferType);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextSize(int i2, float f2) {
        super.setTextSize(i2, f2);
    }

    public void setUseFakeBold(boolean z2) {
        getPaint().setFakeBoldText(z2);
    }

    public KTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public KTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet);
    }
}
