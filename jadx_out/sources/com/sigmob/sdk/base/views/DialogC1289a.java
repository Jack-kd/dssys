package com.sigmob.sdk.base.views;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.windad.WindAds;

/* renamed from: com.sigmob.sdk.base.views.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class DialogC1289a extends Dialog implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private Context f36691a;

    /* renamed from: b, reason: collision with root package name */
    private Window f36692b;

    /* renamed from: c, reason: collision with root package name */
    private int f36693c;

    /* renamed from: d, reason: collision with root package name */
    private int f36694d;

    /* renamed from: e, reason: collision with root package name */
    private int f36695e;

    /* renamed from: f, reason: collision with root package name */
    private int f36696f;

    /* renamed from: g, reason: collision with root package name */
    private String f36697g;

    /* renamed from: h, reason: collision with root package name */
    private String f36698h;

    /* renamed from: i, reason: collision with root package name */
    private ImageView f36699i;

    public DialogC1289a(Context context, String str, String str2) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f36691a = context.getApplicationContext();
        this.f36697g = str;
        this.f36698h = str2;
        this.f36699i = b();
        this.f36694d = this.f36691a.getResources().getDisplayMetrics().widthPixels;
        this.f36693c = Dips.dipsToIntPixels(120.0f, context);
    }

    private ImageView b() {
        ImageView imageView = new ImageView(this.f36691a);
        this.f36699i = imageView;
        imageView.setImageBitmap(EnumC1306s.CLOSE.a());
        this.f36699i.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f36699i.setImageAlpha(127);
        this.f36699i.setClickable(true);
        this.f36699i.setOnClickListener(this);
        return this.f36699i;
    }

    private TextView c() {
        TextView textView = new TextView(getContext());
        textView.setText("复制广告信息");
        textView.setTextColor(-16776961);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f36660b.a(view);
            }
        });
        return textView;
    }

    private View d() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        int iDipsToIntPixels = Dips.dipsToIntPixels(20.0f, getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, iDipsToIntPixels);
        layoutParams.setMargins(0, iDipsToIntPixels / 4, 0, 0);
        TextView textView = new TextView(getContext());
        textView.setText("appid: " + WindAds.sharedAds().getAppId());
        textView.setTextColor(-16777216);
        textView.setTextSize(12.0f);
        linearLayout.addView(textView, layoutParams);
        TextView textView2 = new TextView(getContext());
        textView2.setText("p_id: " + this.f36698h);
        textView2.setTextColor(-16777216);
        textView2.setTextSize(12.0f);
        linearLayout.addView(textView2, layoutParams);
        TextView textView3 = new TextView(getContext());
        String str = "req_id: " + this.f36697g;
        textView3.setTextSize(12.0f);
        textView3.setText(str);
        textView3.setTextColor(-16777216);
        linearLayout.addView(textView3, layoutParams);
        return linearLayout;
    }

    private void e() {
        Window window = getWindow();
        this.f36692b = window;
        if (window == null) {
            return;
        }
        window.setGravity(80);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG != 0) {
            this.f36692b.setWindowAnimations(iG);
        }
        this.f36692b.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = this.f36692b.getAttributes();
        attributes.width = this.f36694d;
        attributes.height = this.f36693c;
        this.f36692b.setAttributes(attributes);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        float fDipsToIntPixels = Dips.dipsToIntPixels(20.0f, this.f36691a);
        gradientDrawable.setCornerRadii(new float[]{fDipsToIntPixels, fDipsToIntPixels, fDipsToIntPixels, fDipsToIntPixels, 0.0f, 0.0f, 0.0f, 0.0f});
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, this.f36691a);
        relativeLayout.setPadding(iDipsToIntPixels, iDipsToIntPixels, iDipsToIntPixels, iDipsToIntPixels);
        relativeLayout.setBackground(gradientDrawable);
        setContentView(relativeLayout);
        setOnShowListener(this);
        setOnDismissListener(this);
        SigmobLog.i("AdInfoDialog onCreate:" + this.f36694d + ":" + this.f36693c);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(18.0f, this.f36691a);
        if (this.f36699i != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDipsToIntPixels2, iDipsToIntPixels2);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(0, iDipsToIntPixels2 / 4, iDipsToIntPixels2 / 2, 0);
            relativeLayout.addView(this.f36699i, layoutParams);
        }
        TextView textViewC = c();
        textViewC.setId(ClientMetadata.generateViewId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, iDipsToIntPixels2);
        layoutParams2.addRule(10);
        layoutParams2.addRule(9);
        layoutParams2.setMargins(0, iDipsToIntPixels2 / 4, iDipsToIntPixels2 / 2, 0);
        relativeLayout.addView(textViewC, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(3, textViewC.getId());
        layoutParams3.addRule(9);
        relativeLayout.addView(d(), layoutParams3);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        e();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        SigmobLog.i("AdInfoDialog  onDismiss");
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        SigmobLog.i("AdInfoDialog  onShow");
    }

    public void a() {
        ImageView imageView = this.f36699i;
        if (imageView != null) {
            com.sigmob.sdk.base.utils.w.a(imageView);
            this.f36699i = null;
        }
        if (this.f36691a != null) {
            this.f36691a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        String str = "appid:" + WindAds.sharedAds().getAppId();
        String str2 = "p_id:" + this.f36698h;
        StringBuilder sb = new StringBuilder();
        sb.append("req_id:");
        sb.append(this.f36697g);
        com.sigmob.sdk.base.common.ak.a(view.getContext(), a(view.getContext(), String.format("%s,%s,%s", str, str2, sb.toString())) ? "广告信息复制完成" : "广告信息复制失败，请检查权限", 0).show();
    }

    private boolean a(Context context, String str) {
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", str));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
