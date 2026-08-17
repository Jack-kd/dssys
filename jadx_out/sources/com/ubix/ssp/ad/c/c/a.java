package com.ubix.ssp.ad.c.c;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.v.e;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class a extends c {

    /* renamed from: k, reason: collision with root package name */
    private boolean f45690k;

    public a(Context context, Bundle bundle) {
        super(context, bundle);
        this.f45690k = false;
    }

    @Override // com.ubix.ssp.ad.c.c.c
    public boolean a(Bundle bundle) {
        try {
            this.f45690k = bundle.getBoolean("IS_DOWNLOAD");
            ImageView imageView = (ImageView) findViewById(100010);
            if (imageView != null) {
                imageView.setBackgroundDrawable(new BitmapDrawable(com.ubix.ssp.ad.e.a0.c.b(bundle.getStringArray("IMAGE_URL")[0])));
                e.b().b(bundle.getStringArray("IMAGE_URL")[0], imageView);
            }
            ImageView imageView2 = (ImageView) findViewById(100008);
            if (imageView2 != null) {
                imageView2.setBackground(q.a("ubix/ic_logo_dark_bg.webp", this.f45706j));
            }
            ImageView imageView3 = (ImageView) findViewById(100007);
            if (imageView3 != null) {
                imageView3.setBackground(q.a("ubix/ic_close_gray.webp"));
            }
            TextView textView = (TextView) findViewById(100009);
            if (textView != null && !TextUtils.isEmpty(bundle.getString("AD_SOURCE", ""))) {
                textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
                textView.setText(bundle.getString("AD_SOURCE", ""));
            }
            TextView textView2 = (TextView) findViewById(100002);
            if (textView2 != null) {
                textView2.setText(bundle.getString("TITLE"));
            }
            TextView textView3 = (TextView) findViewById(100004);
            if (textView3 == null) {
                return true;
            }
            String string = bundle.getString("BUTTON_TEXT");
            if (TextUtils.isEmpty(string)) {
                string = this.f45690k ? "立即下载" : "查看详情";
            }
            textView3.setText(string);
            textView3.setBackground(com.ubix.ssp.ad.e.a0.c.a(getContext(), Color.parseColor("#FA800F"), 120));
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int left;
        ViewGroup.LayoutParams layoutParams;
        int i6;
        super.onLayout(z2, i2, i3, i4, i5);
        this.f45701e.put("__WIDTH__", getWidth() + "");
        this.f45701e.put("__HEIGHT__", getHeight() + "");
        this.f45701e.put("__IMP_AREA__", getLeft() + "_" + getTop() + "_" + getRight() + "_" + getBottom());
        HashMap<String, String> map = this.f45701e;
        StringBuilder sb = new StringBuilder();
        sb.append(getLeft());
        sb.append("");
        map.put("adLeft", sb.toString());
        this.f45701e.put("adRight", getRight() + "");
        this.f45701e.put("adTop", getTop() + "");
        this.f45701e.put("adBottom", getBottom() + "");
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            int id = childAt.getId();
            if (id != 100002) {
                if (id == 100004) {
                    left = i4 / 4;
                    childAt.layout((i4 - left) + (this.f45697a * 2), (i5 - childAt.getMeasuredHeight()) / 2, i4 - (this.f45697a * 2), (childAt.getMeasuredHeight() + i5) / 2);
                    layoutParams = childAt.getLayoutParams();
                    i6 = this.f45697a * 4;
                } else if (id != 920101) {
                    switch (id) {
                        case 100007:
                            double d2 = i4;
                            double d3 = this.f45697a * 0.2d;
                            double d4 = (r6 * 4) + d3;
                            childAt.layout((int) (d2 - d4), (int) d3, (int) (d2 - d3), (int) d4);
                            break;
                        case 100008:
                            int i8 = this.f45697a;
                            int i9 = this.f45699c;
                            childAt.layout(i4 - (i8 * 7), i9 - (i8 * 3), i4, i9);
                            break;
                        case 100009:
                            View viewFindViewById = findViewById(100008);
                            childAt.layout(viewFindViewById.getLeft() - childAt.getMeasuredWidth(), viewFindViewById.getTop(), viewFindViewById.getLeft(), viewFindViewById.getBottom());
                            break;
                        case 100010:
                            childAt.layout(0, 0, (i4 - i2) / 4, i3 + this.f45699c);
                            break;
                    }
                } else {
                    View viewFindViewById2 = findViewById(100008);
                    childAt.layout(0, i5 - childAt.getMeasuredHeight(), viewFindViewById2.getLeft() - this.f45697a, i5);
                    layoutParams = childAt.getLayoutParams();
                    left = viewFindViewById2.getLeft();
                    i6 = this.f45697a;
                }
                layoutParams.width = left - i6;
            } else {
                int i10 = (i4 - i2) / 4;
                childAt.layout(i10, 0, i10 * 3, i5);
                childAt.getLayoutParams().width = i4 / 2;
                childAt.setBackgroundColor(0);
                childAt.getLayoutParams().height = i5;
            }
        }
    }
}
