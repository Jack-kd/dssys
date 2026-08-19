package com.smartdigimkt.sdk.basead.express.web;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.smartdigimkt.f1.a;

/* loaded from: classes5.dex */
public class ActionBar extends LinearLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public WebView f43147a;

    public ActionBar(Context context) {
        super(context);
    }

    public void addAction(a aVar) {
        addAction(aVar, getChildCount());
    }

    public int getActionCount() {
        return getChildCount();
    }

    public WebView getWebView() {
        return this.f43147a;
    }

    public View newActionItem() {
        Context context = getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        layoutParams.weight = 1.0f;
        linearLayout.setLayoutParams(layoutParams);
        View frameLayout = new FrameLayout(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        frameLayout.setLayoutParams(layoutParams2);
        linearLayout.addView(frameLayout);
        return linearLayout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getTag();
    }

    public boolean removeAction(a aVar) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null) {
                childAt.getTag();
            }
        }
        return false;
    }

    public void removeActionAt(int i2) {
        if (i2 < 0 || i2 >= getChildCount()) {
            return;
        }
        removeViewAt(i2);
    }

    public void removeAllActions() {
        removeAllViews();
    }

    public void setWebView(WebView webView) {
        this.f43147a = webView;
    }

    public ActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void addAction(a aVar, int i2) {
        View viewNewActionItem;
        View viewA = aVar.a();
        if (viewA != null) {
            viewNewActionItem = newActionItem();
            ((ViewGroup) ((ViewGroup) viewNewActionItem).getChildAt(0)).addView(viewA);
            viewA.setTag(aVar);
            viewA.setOnClickListener(this);
        } else {
            viewNewActionItem = null;
        }
        addView(viewNewActionItem, i2);
    }
}
