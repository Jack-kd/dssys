package com.kwad.components.ad.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.kwad.sdk.R;
import com.kwad.sdk.wrapper.m;
import java.util.List;

/* loaded from: classes4.dex */
public class KsAppTagsView extends LinearLayout {
    private int Oj;

    public KsAppTagsView(Context context) {
        super(context);
        this.Oj = 3;
    }

    public final void a(List<String> list, @LayoutRes int i2) {
        if (list == null) {
            return;
        }
        int i3 = 0;
        for (String str : list) {
            i3++;
            if (i3 > this.Oj) {
                return;
            } else {
                a(this, str, i2);
            }
        }
    }

    public void setAppTags(List<String> list) {
        a(list, R.layout.ksad_reward_apk_info_card_tag_item);
    }

    public void setMaxCount(int i2) {
        this.Oj = i2;
    }

    public KsAppTagsView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Oj = 3;
    }

    private static void a(LinearLayout linearLayout, String str, @LayoutRes int i2) {
        TextView textView = (TextView) m.a(linearLayout.getContext(), i2, linearLayout, false);
        textView.setText(str);
        linearLayout.addView(textView);
    }

    public KsAppTagsView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.Oj = 3;
    }

    @RequiresApi(api = 21)
    public KsAppTagsView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.Oj = 3;
    }
}
