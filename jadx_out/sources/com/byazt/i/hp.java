package com.byazt.i;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.byazt.i.j;
import com.byazt.o.ClipImageView;
import com.byazt.t.jl;
import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 28})
/* loaded from: classes.dex */
public class hp extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public TextView f20993a;

    /* renamed from: e, reason: collision with root package name */
    public final long f20994e;
    public ClipImageView eb;
    public long gu;
    public TextView hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f20995j;
    public final com.byazt.w.l jl;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f20996l;

    /* renamed from: q, reason: collision with root package name */
    public Activity f20997q;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f20998s;

    /* renamed from: w, reason: collision with root package name */
    public TextView f20999w;

    public hp(@NonNull Activity activity, long j2) {
        super(activity);
        this.f20997q = activity;
        this.f20994e = j2;
        this.jl = jx.hp().get(Long.valueOf(j2));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.byazt.ni.jx.hp(this.f20997q);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.jl == null) {
            dismiss();
            return;
        }
        requestWindowFeature(1);
        setContentView(hp());
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        this.gu = this.jl.f26866l;
        l();
        eb.l("lp_app_dialog_show", this.gu);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.byazt.i.hp.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                eb.hp("lp_app_dialog_cancel", hp.this.gu);
            }
        });
    }

    private View hp() {
        LinearLayout linearLayout = new LinearLayout(this.f20997q);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(zy.hp(this.f20997q, 6.0f));
        linearLayout.setBackgroundDrawable(gradientDrawable);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(zy.hp(this.f20997q, 300.0f), -2));
        this.eb = new ClipImageView(this.f20997q);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(zy.hp(this.f20997q, 60.0f), zy.hp(this.f20997q, 60.0f));
        layoutParams.topMargin = zy.hp(this.f20997q, 32.0f);
        this.eb.setScaleType(ImageView.ScaleType.CENTER_CROP);
        linearLayout.addView(this.eb, layoutParams);
        this.hp = new TextView(this.f20997q);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = zy.hp(this.f20997q, 8.0f);
        this.hp.setTextSize(1, 18.0f);
        this.hp.setTextColor(Color.parseColor("#161823"));
        this.hp.getPaint().setFakeBoldText(true);
        linearLayout.addView(this.hp, layoutParams2);
        this.f20996l = new TextView(this.f20997q);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = zy.hp(this.f20997q, 8.0f);
        this.f20996l.setTextSize(1, 12.0f);
        this.f20996l.setTextColor(Color.parseColor("#4D161823"));
        linearLayout.addView(this.f20996l, layoutParams3);
        this.jx = new TextView(this.f20997q);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = zy.hp(this.f20997q, 4.0f);
        this.jx.setTextSize(1, 12.0f);
        this.jx.setTextColor(Color.parseColor("#4D161823"));
        linearLayout.addView(this.jx, layoutParams4);
        LinearLayout linearLayout2 = new LinearLayout(this.f20997q);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setPadding(0, zy.hp(this.f20997q, 4.0f), 0, zy.hp(this.f20997q, 4.0f));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = zy.hp(this.f20997q, 14.0f);
        TextView textView = new TextView(this.f20997q);
        this.f20995j = textView;
        textView.setText("权限详情");
        this.f20995j.setTextSize(1, 12.0f);
        this.f20995j.setTextColor(Color.parseColor("#4E90FF"));
        linearLayout2.addView(this.f20995j);
        View view = new View(this.f20997q);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) ((this.f20997q.getResources().getDisplayMetrics().density * 0.5d) + 0.5d), zy.hp(this.f20997q, 9.0f));
        layoutParams6.leftMargin = zy.hp(this.f20997q, 32.0f);
        layoutParams6.rightMargin = zy.hp(this.f20997q, 32.0f);
        view.setBackgroundColor(Color.parseColor("#D8D8D8"));
        linearLayout2.addView(view, layoutParams6);
        TextView textView2 = new TextView(this.f20997q);
        this.f20999w = textView2;
        textView2.setText("隐私政策");
        this.f20999w.setTextSize(1, 12.0f);
        this.f20999w.setTextColor(Color.parseColor("#4E90FF"));
        linearLayout2.addView(this.f20999w);
        linearLayout.addView(linearLayout2, layoutParams5);
        LinearLayout linearLayout3 = new LinearLayout(this.f20997q);
        this.f20998s = linearLayout3;
        linearLayout3.setOrientation(0);
        this.f20998s.setGravity(17);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#4E90FF"));
        gradientDrawable2.setCornerRadius(zy.hp(this.f20997q, 2.0f));
        this.f20998s.setBackgroundDrawable(gradientDrawable2);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(zy.hp(this.f20997q, 276.0f), zy.hp(this.f20997q, 36.0f));
        layoutParams7.topMargin = zy.hp(this.f20997q, 16.0f);
        ImageView imageView = new ImageView(this.f20997q);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(zy.hp(this.f20997q, 16.0f), zy.hp(this.f20997q, 16.0f));
        layoutParams8.rightMargin = zy.hp(this.f20997q, 4.0f);
        this.f20998s.addView(imageView, layoutParams8);
        TextView textView3 = new TextView(this.f20997q);
        textView3.setText("立即下载");
        textView3.setTextColor(-1);
        textView3.setTextSize(1, 14.0f);
        this.f20998s.addView(textView3);
        linearLayout.addView(this.f20998s, layoutParams7);
        TextView textView4 = new TextView(this.f20997q);
        this.f20993a = textView4;
        textView4.setText("放弃下载");
        this.f20993a.setTextSize(1, 12.0f);
        this.f20993a.setTextColor(Color.parseColor("#4D161823"));
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.topMargin = zy.hp(this.f20997q, 11.0f);
        layoutParams9.bottomMargin = zy.hp(this.f20997q, 15.0f);
        linearLayout.addView(this.f20993a, layoutParams9);
        imageView.setImageDrawable(new com.byazt.p.hp());
        return linearLayout;
    }

    private void l() {
        this.hp.setText(zy.hp(this.jl.f26869w, "--"));
        this.f20996l.setText("版本号：" + zy.hp(this.jl.f26864a, "--"));
        this.jx.setText("开发者：" + zy.hp(this.jl.eb, "应用信息正在完善中"));
        this.eb.setRoundRadius(zy.hp(jl.getContext(), 8.0f));
        this.eb.setBackgroundColor(Color.parseColor("#EBEBEB"));
        j.hp().hp(this.f20994e, new j.hp() { // from class: com.byazt.i.hp.2
            @Override // com.byazt.i.j.hp
            public void hp(Bitmap bitmap) throws JSONException {
                if (bitmap != null) {
                    hp.this.eb.setImageBitmap(bitmap);
                } else {
                    eb.hp(8, hp.this.gu);
                }
            }
        });
        this.f20995j.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.i.hp.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.hp().hp(hp.this.f20997q);
                eb.hp("lp_app_dialog_click_detail", hp.this.gu);
            }
        });
        this.f20999w.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.i.hp.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.hp().hp(hp.this.f20997q);
                eb.hp("lp_app_dialog_click_privacy", hp.this.gu);
            }
        });
        this.f20993a.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.i.hp.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp.this.dismiss();
                eb.hp("lp_app_dialog_click_giveup", hp.this.gu);
            }
        });
        this.f20998s.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.i.hp.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                eb.hp("lp_app_dialog_click_download", hp.this.gu);
                l.hp().l(hp.this.gu);
                hp.this.dismiss();
            }
        });
    }
}
