package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public class CloseHeaderView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f43358a;

    /* renamed from: b, reason: collision with root package name */
    public CloseImageView f43359b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f43360c;

    /* renamed from: d, reason: collision with root package name */
    public String f43361d;

    /* renamed from: e, reason: collision with root package name */
    public String f43362e;

    /* renamed from: f, reason: collision with root package name */
    public long f43363f;

    public CloseHeaderView(Context context) {
        super(context);
        this.f43361d = "";
        this.f43362e = "";
        a();
    }

    public final void a() {
        setBackgroundColor(Color.parseColor("#000000"));
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_close_header_view", "layout"), this);
        this.f43358a = (ViewGroup) findViewById(k.a(getContext(), "myoffer_feedback_ll_nobg_id", "id"));
        this.f43359b = (CloseImageView) findViewById(k.a(getContext(), "myoffer_btn_close_ch_id", "id"));
        this.f43360c = (TextView) findViewById(k.a(getContext(), "myoffer_tv_countdown_text", "id"));
        this.f43361d = getContext().getString(k.a(getContext(), "myoffer_count_down_to_rewarded", "string"));
        this.f43362e = getContext().getString(k.a(getContext(), "myoffer_count_down_finish_rewarded", "string"));
    }

    public CloseImageView getCloseImageView() {
        return this.f43359b;
    }

    public ViewGroup getFeedbackButton() {
        return this.f43358a;
    }

    public void refresh(long j2) {
        if (j2 >= this.f43363f) {
            this.f43360c.setText(this.f43362e);
            this.f43360c.setTextColor(-1);
        } else {
            this.f43360c.setText(Html.fromHtml(String.format(this.f43361d, Integer.valueOf((int) Math.ceil((r0 - j2) / 1000.0d)))));
        }
    }

    public void setDuration(long j2) {
        this.f43363f = j2;
    }

    public CloseHeaderView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43361d = "";
        this.f43362e = "";
        a();
    }

    public CloseHeaderView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43361d = "";
        this.f43362e = "";
        a();
    }
}
