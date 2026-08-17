package com.smartdigimkt.sdk.basead.ui.web;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.s2.p;

/* loaded from: classes5.dex */
public class WebLoadFailRefrshView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public View.OnClickListener f44061a;

    public WebLoadFailRefrshView(Context context) {
        super(context);
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "web_load_fail_refresh", "layout"), this);
        setOrientation(1);
        setGravity(17);
        findViewById(k.a(getContext(), "web_load_fail_refresh", "id")).setOnClickListener(new p(this));
    }

    public void setOnRefreshListener(View.OnClickListener onClickListener) {
        this.f44061a = onClickListener;
    }
}
