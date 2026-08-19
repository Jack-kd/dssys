package com.ubix.ssp.ad.e.c0;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;

/* loaded from: classes5.dex */
public class a extends FrameLayout {
    public a(Context context) {
        super(context);
        a();
    }

    private void a() {
        double dA = r.a().a(getContext());
        FrameLayout frameLayout = new FrameLayout(getContext());
        ProgressBar progressBar = new ProgressBar(getContext(), null, R.attr.progressBarStyleHorizontal);
        ImageView imageView = new ImageView(getContext());
        ImageView imageView2 = new ImageView(getContext());
        TextView textView = new TextView(getContext());
        frameLayout.setBackgroundColor(-1);
        frameLayout.setId(10001);
        progressBar.setId(10002);
        imageView.setId(10003);
        imageView2.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
        textView.setId(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2);
        textView.setTextColor(Color.parseColor("#515151"));
        imageView.setImageDrawable(q.a("ubix/ic_web_back.png"));
        imageView2.setImageDrawable(q.a("ubix/ic_web_close.png"));
        int i2 = (int) (15.0d * dA);
        imageView.setPadding(i2, i2, i2, i2);
        imageView2.setPadding(i2, i2, i2, i2);
        int i3 = (int) (50.0d * dA);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams2.leftMargin = i3;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, (int) (3.0d * dA));
        layoutParams3.gravity = 80;
        progressBar.setMax(100);
        progressBar.setProgress(10);
        progressBar.setIndeterminate(false);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams4.gravity = 17;
        textView.setTextSize(16.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(17);
        textView.setMaxWidth((int) (140.0d * dA));
        textView.setSingleLine(true);
        frameLayout.addView(progressBar, layoutParams3);
        frameLayout.addView(imageView, layoutParams);
        frameLayout.addView(imageView2, layoutParams2);
        frameLayout.addView(textView, layoutParams4);
        ViewGroup.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, i3);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.topMargin = i3;
        ImageView imageView3 = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(i3, i3);
        layoutParams7.gravity = 5;
        layoutParams7.topMargin = (int) (35.0d * dA);
        int i4 = (int) (dA * 10.0d);
        imageView3.setPadding(i4, i4, i4, i4);
        imageView3.setVisibility(8);
        imageView3.setImageDrawable(q.a("ubix/ic_close_light.png"));
        frameLayout2.setId(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec);
        imageView3.setId(10007);
        frameLayout2.addView(imageView3, layoutParams7);
        addView(frameLayout, layoutParams5);
        addView(frameLayout2, layoutParams6);
    }
}
