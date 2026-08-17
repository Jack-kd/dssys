package com.byazt.ymw;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.ref.SoftReference;

@com.byazt.kj.hp(hp = {0, 1, 68, 158})
/* loaded from: classes3.dex */
public class hq {
    public static SoftReference<Toast> hp;

    private static Toast hp(Context context) {
        if (context != null) {
            SoftReference<Toast> softReference = new SoftReference<>(Toast.makeText(context.getApplicationContext(), "", 0));
            hp = softReference;
            return softReference.get();
        }
        SoftReference<Toast> softReference2 = hp;
        if (softReference2 != null) {
            return softReference2.get();
        }
        return null;
    }

    public static void l(Context context, String str, int i2, int i3, int i4, int i5) {
        Toast toastHp = hp(context);
        if (toastHp != null) {
            toastHp.setDuration(i2);
            toastHp.setGravity(i3, i4, i5);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(hp(context, 10.0f));
            gradientDrawable.setColor(Color.parseColor("#CC161823"));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setBackground(gradientDrawable);
            linearLayout.setOrientation(1);
            linearLayout.setPadding(hp(context, 20.0f), hp(context, 12.0f), hp(context, 20.0f), hp(context, 12.0f));
            TextView textView = new TextView(context);
            textView.setTextColor(-1);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextSize(2, 14.0f);
            linearLayout.addView(textView);
            toastHp.setView(linearLayout);
            toastHp.show();
        }
    }

    public static Toast hp(Context context, String str, int i2, int i3, int i4, int i5) {
        Toast toast = new Toast(context);
        toast.setDuration(i2);
        toast.setGravity(i3, i4, i5);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(hp(context, 10.0f));
        gradientDrawable.setColor(Color.parseColor("#CC161823"));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(hp(context, 20.0f), hp(context, 12.0f), hp(context, 20.0f), hp(context, 12.0f));
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        return toast;
    }

    public static void hp(Context context, String str, int i2) {
        l(context, str, i2, 80, 0, hp(context, 40.0f));
    }

    private static int hp(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
