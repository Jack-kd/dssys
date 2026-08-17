package com.ubix.ssp.ad.e.z;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.ubix.ssp.ad.e.a0.l;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.q;
import com.ubix.ssp.ad.e.z.h;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class c extends h implements View.OnClickListener {

    /* renamed from: h, reason: collision with root package name */
    private TextView f47878h;

    /* renamed from: i, reason: collision with root package name */
    private TextView f47879i;

    /* renamed from: j, reason: collision with root package name */
    private ImageView f47880j;

    /* renamed from: k, reason: collision with root package name */
    private EditText f47881k;

    /* renamed from: l, reason: collision with root package name */
    private View f47882l;

    /* renamed from: m, reason: collision with root package name */
    private int f47883m;

    /* renamed from: n, reason: collision with root package name */
    private int f47884n;

    /* renamed from: o, reason: collision with root package name */
    private float f47885o;

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (editable.length() > 0) {
                    c.this.f47879i.setTextColor(-16777216);
                } else {
                    c.this.f47879i.setTextColor(-8158333);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }
    }

    public class b implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((InputMethodManager) c.this.getContext().getSystemService("input_method")).toggleSoftInput(0, 2);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.d();
            if (c.this.f47881k != null) {
                c.this.f47881k.requestFocus();
            }
            c.this.postDelayed(new a(), 200L);
        }
    }

    public c(Context context) {
        super(context);
        this.f47883m = r.a().h(context);
        this.f47884n = r.a().c(context);
        this.f47885o = r.a().a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        this.f47880j = new ImageView(getContext());
        this.f47878h = new TextView(getContext());
        this.f47879i = new TextView(getContext());
        this.f47881k = new EditText(getContext());
        this.f47882l = new View(getContext());
        this.f47880j.setImageDrawable(q.a("ubix/ic_web_back.png"));
        this.f47880j.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f47878h.setText("其他建议");
        this.f47879i.setText("提交");
        this.f47878h.setTextColor(-13421773);
        this.f47879i.setTextColor(-8158333);
        this.f47881k.setBackground(null);
        relativeLayout.setId(20000);
        this.f47880j.setId(20003);
        this.f47878h.setId(20001);
        this.f47879i.setId(20004);
        this.f47881k.setId(20005);
        this.f47882l.setId(20002);
        this.f47882l.setBackgroundColor(-921103);
        this.f47881k.setTextColor(-16777216);
        this.f47881k.setGravity(GravityCompat.START);
        this.f47881k.setTextSize(12.0f);
        this.f47881k.setFilters(new InputFilter[]{new InputFilter.LengthFilter(200)});
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f47883m, (int) (this.f47885o * 32.0f));
        int i2 = (int) (this.f47885o * 22.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams2.addRule(9);
        layoutParams2.addRule(15);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(13);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (((int) (Math.min(this.f47883m, this.f47884n) * 0.7d)) - ((int) (this.f47885o * 32.0f))) - 2);
        layoutParams5.addRule(3, 20002);
        int i3 = (int) (this.f47885o * 12.0f);
        layoutParams2.leftMargin = i3;
        layoutParams3.rightMargin = i3;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, 2);
        layoutParams6.addRule(3, 20000);
        this.f47880j.setPadding(10, 10, 10, 10);
        this.f47879i.setPadding(10, 10, 10, 10);
        EditText editText = this.f47881k;
        float f2 = this.f47885o;
        int i4 = (int) (14.0f * f2);
        int i5 = (int) (f2 * 4.0f);
        editText.setPadding(i4, i5, i4, i5);
        relativeLayout.addView(this.f47880j, layoutParams2);
        relativeLayout.addView(this.f47878h, layoutParams4);
        relativeLayout.addView(this.f47879i, layoutParams3);
        addView(relativeLayout, layoutParams);
        addView(this.f47882l, layoutParams6);
        addView(this.f47881k, layoutParams5);
        setBackgroundColor(-1);
        this.f47880j.setOnClickListener(this);
        this.f47879i.setOnClickListener(this);
        this.f47881k.addTextChangedListener(new a());
    }

    public int getContentHeight() {
        return this.f47884n;
    }

    public int getContentWidth() {
        return this.f47883m;
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public int getPopupType() {
        return 4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        postDelayed(new b(), 50L);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 20003) {
            l lVar = this.f47966c;
            if (lVar != null && lVar.b()) {
                this.f47966c.a();
            }
            Dialog dialog = this.f47967d;
            if (dialog != null && dialog.isShowing()) {
                this.f47967d.dismiss();
            }
            h.c cVar = this.f47968e;
            if (cVar != null) {
                cVar.a(null);
            }
            h.c cVar2 = this.f47968e;
            if (cVar2 != null) {
                cVar2.b(null);
                return;
            }
            return;
        }
        if (id == 20004 && !TextUtils.isEmpty(this.f47881k.getText().toString())) {
            a(this.f47881k);
            l lVar2 = this.f47966c;
            if (lVar2 != null && lVar2.b()) {
                this.f47966c.a();
            }
            Dialog dialog2 = this.f47967d;
            if (dialog2 != null && dialog2.isShowing()) {
                this.f47967d.dismiss();
            }
            HashMap<String, String> map = new HashMap<>();
            map.put("dislikeId", "601210");
            map.put("dislikeContent", this.f47881k.getText().toString());
            h.c cVar3 = this.f47968e;
            if (cVar3 != null) {
                cVar3.a(this, map);
            }
            h.c cVar4 = this.f47968e;
            if (cVar4 != null) {
                cVar4.b(this);
            }
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.f47883m = r.a().h(getContext());
            this.f47884n = r.a().c(getContext());
            findViewById(20000).getLayoutParams().width = this.f47883m;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setMeasuredDimension(this.f47883m, (int) (Math.min(r5, this.f47884n) * 0.7d));
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void setData(Bundle bundle) {
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(Dialog dialog, h.c cVar, h.b bVar) {
        this.f47967d = dialog;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }

    private void a(EditText editText) {
        if (editText != null) {
            try {
                ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
                editText.clearFocus();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.ubix.ssp.ad.e.z.h
    public void a(l lVar, h.c cVar, h.b bVar) {
        this.f47966c = lVar;
        this.f47968e = cVar;
        this.f47969f = bVar;
    }
}
