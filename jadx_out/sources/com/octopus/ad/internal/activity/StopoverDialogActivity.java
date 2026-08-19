package com.octopus.ad.internal.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.core.common.f.g;
import com.octopus.ad.R;
import com.octopus.ad.b.b;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.utilities.ImageManager;
import java.util.Map;

/* loaded from: classes4.dex */
public class StopoverDialogActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private String f34200a;

    /* renamed from: b, reason: collision with root package name */
    private String f34201b;

    /* renamed from: c, reason: collision with root package name */
    private String f34202c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f34203d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f34204e;

    /* renamed from: f, reason: collision with root package name */
    private com.octopus.ad.b.a f34205f;

    /* renamed from: g, reason: collision with root package name */
    private ImageView f34206g;

    /* renamed from: h, reason: collision with root package name */
    private RelativeLayout f34207h;

    /* renamed from: i, reason: collision with root package name */
    private RelativeLayout f34208i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f34209j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f34210k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f34211l;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        Map map;
        super.onCreate(bundle);
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("bundleData");
            if (bundleExtra == null || (map = (Map) bundleExtra.getSerializable("mapData")) == null) {
                return;
            }
            this.f34200a = (String) map.get("icon");
            this.f34201b = (String) map.get(g.a.f3271h);
            this.f34202c = (String) map.get("description");
            a();
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        k.a().a("StopoverFinish");
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.f34203d) {
            a(1);
            b();
            this.f34203d = false;
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        com.octopus.ad.b.a aVar = this.f34205f;
        if (aVar != null) {
            aVar.b();
        }
    }

    private void b() {
        com.octopus.ad.b.a aVar = this.f34205f;
        if (aVar == null) {
            com.octopus.ad.b.a aVar2 = new com.octopus.ad.b.a(15800L, 500L);
            this.f34205f = aVar2;
            aVar2.a(new b() { // from class: com.octopus.ad.internal.activity.StopoverDialogActivity.3
                @Override // com.octopus.ad.b.b
                public void a(long j2) {
                    int i2 = (int) (j2 / 1000);
                    if (StopoverDialogActivity.this.f34209j != null) {
                        StopoverDialogActivity.this.f34209j.setText(String.format("%s秒", Integer.valueOf(i2)));
                    }
                }

                @Override // com.octopus.ad.b.b
                public void b() {
                }

                @Override // com.octopus.ad.b.b
                public void a() {
                    k.a().a("getReward");
                    StopoverDialogActivity.this.f34204e = true;
                    StopoverDialogActivity.this.a(2);
                }
            });
            this.f34205f.a();
            return;
        }
        aVar.c();
    }

    private void a() {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.OctopusAlertDialogStyle);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.oct_dialog_stopover, (ViewGroup) null);
            builder.setView(viewInflate);
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setCanceledOnTouchOutside(false);
            this.f34206g = (ImageView) viewInflate.findViewById(R.id.iv_gift);
            this.f34207h = (RelativeLayout) viewInflate.findViewById(R.id.rl_tip_start);
            this.f34208i = (RelativeLayout) viewInflate.findViewById(R.id.rl_tip_countdown);
            this.f34209j = (TextView) viewInflate.findViewById(R.id.tv_tip_time);
            this.f34210k = (TextView) viewInflate.findViewById(R.id.tv_tip_end);
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_app_icon);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_ad_title);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_ad_description);
            this.f34211l = (TextView) viewInflate.findViewById(R.id.tv_button);
            ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.iv_click);
            ImageManager.with(this).load(this.f34200a).into(imageView);
            textView.setText(this.f34201b);
            textView2.setText(this.f34202c);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setRepeatCount(-1);
            alphaAnimation.setRepeatMode(2);
            imageView2.startAnimation(alphaAnimation);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_continue);
            textView3.setPaintFlags(textView3.getPaintFlags() | 8);
            this.f34211l.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.StopoverDialogActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (StopoverDialogActivity.this.f34204e) {
                        StopoverDialogActivity.this.finish();
                    } else {
                        k.a().a("adClick");
                        StopoverDialogActivity.this.f34203d = true;
                    }
                }
            });
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.StopoverDialogActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    StopoverDialogActivity.this.finish();
                }
            });
            alertDialogCreate.show();
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (i2 == 1) {
            this.f34206g.setVisibility(8);
            this.f34207h.setVisibility(8);
            this.f34210k.setVisibility(8);
            this.f34208i.setVisibility(0);
            this.f34211l.setText("返回页面");
            return;
        }
        if (i2 != 2) {
            this.f34208i.setVisibility(8);
            this.f34210k.setVisibility(8);
            this.f34206g.setVisibility(0);
            this.f34207h.setVisibility(0);
            this.f34211l.setText("立即前往");
            return;
        }
        this.f34206g.setVisibility(8);
        this.f34207h.setVisibility(8);
        this.f34208i.setVisibility(8);
        this.f34210k.setVisibility(0);
        this.f34211l.setText("返回视频");
    }
}
