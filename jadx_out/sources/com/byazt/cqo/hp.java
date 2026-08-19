package com.byazt.cqo;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 1233, 28})
/* loaded from: classes2.dex */
public class hp implements com.byazt.dth.hp {
    @Override // com.byazt.dth.hp
    public View inflate(Context context) {
        Button button = new Button(context);
        button.setId(2114387729);
        button.setLayoutParams(new ViewGroup.LayoutParams(-1, xh.jx(context, 48.0f)));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#2A90D7"));
        button.setBackground(gradientDrawable);
        button.setText("立即下载");
        button.setTextColor(Color.parseColor("#ffffff"));
        button.setTextSize(2, 16.0f);
        return button;
    }
}
