package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.h2.a1;
import com.smartdigimkt.h2.b1;
import com.smartdigimkt.h2.z0;

/* loaded from: classes5.dex */
public class QuestionDialogG2CV2View extends BaseG2CV2View {

    /* renamed from: h, reason: collision with root package name */
    public TextView f43929h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f43930i;

    /* renamed from: j, reason: collision with root package name */
    public String f43931j;

    /* renamed from: k, reason: collision with root package name */
    public String f43932k;

    public QuestionDialogG2CV2View(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void initView(int i2, int i3) {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_g2c_v2_question_dialog", "layout"), this);
        TextView textView = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_question_answer1", "id"));
        this.f43929h = textView;
        textView.setOnClickListener(new z0(this));
        TextView textView2 = (TextView) findViewById(k.a(getContext(), "myoffer_g2c_question_answer2", "id"));
        this.f43930i = textView2;
        textView2.setOnClickListener(new a1(this));
        if (!TextUtils.isEmpty(this.f43931j)) {
            this.f43929h.setText(this.f43931j);
        }
        if (!TextUtils.isEmpty(this.f43932k)) {
            this.f43930i.setText(this.f43932k);
        }
        setOnClickListener(new b1());
    }

    public void setQuestionAnswer(String str, String str2) {
        this.f43931j = str;
        this.f43932k = str2;
    }
}
