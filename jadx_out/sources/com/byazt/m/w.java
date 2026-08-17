package com.byazt.m;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1097, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public String f22859a;
    public String eb;
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f22860j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public jx f22861l;

    /* renamed from: q, reason: collision with root package name */
    public String f22862q;

    /* renamed from: s, reason: collision with root package name */
    public String f22863s;

    /* renamed from: w, reason: collision with root package name */
    public Activity f22864w;

    @com.byazt.kj.hp(hp = {0, 1, 1097, 8})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public boolean f22865a;
        public j eb;
        public Activity hp;

        /* renamed from: j, reason: collision with root package name */
        public String f22866j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f22867l;

        /* renamed from: s, reason: collision with root package name */
        public jx f22868s;

        /* renamed from: w, reason: collision with root package name */
        public String f22869w;

        public hp(Activity activity) {
            this.hp = activity;
        }

        public hp hp(String str) {
            this.f22867l = str;
            return this;
        }

        public hp j(String str) {
            this.f22869w = str;
            return this;
        }

        public hp jx(String str) {
            this.f22866j = str;
            return this;
        }

        public hp l(String str) {
            this.jx = str;
            return this;
        }

        public hp hp(boolean z2) {
            this.f22865a = z2;
            return this;
        }

        public hp hp(j jVar) {
            this.eb = jVar;
            return this;
        }

        public hp hp(jx jxVar) {
            this.f22868s = jxVar;
            return this;
        }

        public w hp() {
            return new w(this.hp, this.f22867l, this.jx, this.f22866j, this.f22869w, this.f22865a, this.eb, this.f22868s);
        }
    }

    public w(@NonNull Activity activity, String str, String str2, String str3, String str4, boolean z2, @NonNull j jVar, jx jxVar) {
        super(activity);
        this.f22864w = activity;
        this.hp = jVar;
        this.f22859a = str;
        this.eb = str2;
        this.f22863s = str3;
        this.f22862q = str4;
        this.f22861l = jxVar;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCanceledOnTouchOutside(z2);
        hp(this.f22864w);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete() {
        this.f22860j = true;
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (!this.f22864w.isFinishing()) {
            this.f22864w.finish();
        }
        if (this.jx) {
            this.hp.hp();
        } else if (this.f22860j) {
            this.f22861l.delete();
        } else {
            this.hp.l();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private void hp(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(hp(context, 290), -2);
        linearLayout2.setBackgroundColor(Color.parseColor("#ffffff"));
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setBackground(hp(context, "#ffffff", 4));
        linearLayout2.setOrientation(1);
        int iHp = hp(context, 16);
        TextView textView = new TextView(context);
        textView.setTextSize(2, 16.0f);
        textView.setText("是否在WiFi环境下恢复下载？");
        textView.setTextColor(Color.parseColor("#222222"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(iHp, iHp, iHp, iHp);
        textView.setLayoutParams(layoutParams3);
        if (!TextUtils.isEmpty(this.f22859a)) {
            textView.setText(this.f22859a);
        }
        linearLayout2.addView(textView);
        LinearLayout linearLayout3 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = hp(context, 26);
        layoutParams4.bottomMargin = iHp;
        linearLayout3.setOrientation(0);
        linearLayout3.setLayoutParams(layoutParams4);
        TextView textView2 = new TextView(context);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(hp(context, 70), hp(context, 33)));
        textView2.setText("管理");
        textView2.setTextColor(Color.parseColor("#CFCFCF"));
        textView2.setTextSize(2, 13.0f);
        textView2.setGravity(17);
        if (!TextUtils.isEmpty(this.f22862q)) {
            textView2.setText(this.f22862q);
            linearLayout3.addView(textView2);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.m.w.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    w.this.delete();
                }
            });
        }
        LinearLayout linearLayout4 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout4.setOrientation(0);
        layoutParams5.rightMargin = hp(context, 16);
        linearLayout4.setGravity(5);
        linearLayout4.setLayoutParams(layoutParams5);
        TextView textView3 = new TextView(context);
        textView3.setLayoutParams(new LinearLayout.LayoutParams(hp(context, 70), hp(context, 33)));
        textView3.setTextColor(Color.parseColor("#CFCFCF"));
        textView3.setText("不，谢谢");
        textView3.setTextSize(2, 13.0f);
        textView3.setGravity(17);
        if (!TextUtils.isEmpty(this.f22863s)) {
            textView3.setText(this.f22863s);
        }
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.m.w.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.this.l();
            }
        });
        linearLayout4.addView(textView3);
        TextView textView4 = new TextView(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(hp(context, 70), hp(context, 33));
        layoutParams6.leftMargin = hp(context, 8);
        layoutParams6.gravity = 5;
        textView4.setLayoutParams(layoutParams6);
        textView4.setTextColor(Color.parseColor("#ffffff"));
        textView4.setTextSize(2, 13.0f);
        textView4.setText("好的");
        textView4.setGravity(17);
        if (!TextUtils.isEmpty(this.eb)) {
            textView4.setText(this.eb);
        }
        textView4.setBackground(hp(context, "#2A90D7", 2));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.m.w.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                w.this.hp();
            }
        });
        linearLayout4.addView(textView4);
        linearLayout3.addView(linearLayout4);
        linearLayout2.addView(linearLayout3);
        linearLayout.addView(linearLayout2);
        setContentView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        dismiss();
    }

    private static GradientDrawable hp(Context context, String str, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setCornerRadius(hp(context, i2));
        return gradientDrawable;
    }

    private static int hp(Context context, int i2) {
        return zy.hp(context, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        this.jx = true;
        dismiss();
    }
}
