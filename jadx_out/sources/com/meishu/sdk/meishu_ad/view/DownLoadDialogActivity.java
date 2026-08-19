package com.meishu.sdk.meishu_ad.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.meishu.sdk.R;
import com.meishu.sdk.activity.MeishuDownloadDetailActivity;
import com.meishu.sdk.activity.MeishuWebviewActivity;
import com.meishu.sdk.activity.a;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.BaseAdSlot;
import com.meishu.sdk.core.bquery.i;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.safe.SafeAppCompatActivity;
import com.meishu.sdk.core.utils.DownloadDialogBean;
import com.meishu.sdk.core.utils.DownloadUtils;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.l0;
import com.meishu.sdk.platform.ms.c;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class DownLoadDialogActivity extends SafeAppCompatActivity {

    /* renamed from: y, reason: collision with root package name */
    public static c f32653y;

    /* renamed from: a, reason: collision with root package name */
    public ImageView f32654a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f32655b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f32656c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f32657d;

    /* renamed from: e, reason: collision with root package name */
    public TextView f32658e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f32659f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f32660g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f32661h;

    /* renamed from: i, reason: collision with root package name */
    public String f32662i;

    /* renamed from: j, reason: collision with root package name */
    public String f32663j;

    /* renamed from: k, reason: collision with root package name */
    public String f32664k;

    /* renamed from: l, reason: collision with root package name */
    public String f32665l;

    /* renamed from: m, reason: collision with root package name */
    public String f32666m;

    /* renamed from: n, reason: collision with root package name */
    public String f32667n;

    /* renamed from: o, reason: collision with root package name */
    public String f32668o;

    /* renamed from: p, reason: collision with root package name */
    public String f32669p;

    /* renamed from: q, reason: collision with root package name */
    public String f32670q;

    /* renamed from: r, reason: collision with root package name */
    public String f32671r;

    /* renamed from: s, reason: collision with root package name */
    public View f32672s;

    /* renamed from: t, reason: collision with root package name */
    public List<MeishuAdInfo.PermissionBean> f32673t;

    /* renamed from: u, reason: collision with root package name */
    public String f32674u;

    /* renamed from: v, reason: collision with root package name */
    public String f32675v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f32676w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f32677x;

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnClick(View view) {
        try {
            if (view.getId() == R.id.ms_dialog_meishu_download_appdetail) {
                if (TextUtils.isEmpty(this.f32675v)) {
                    if (TextUtils.isEmpty(this.f32666m)) {
                        return;
                    }
                    DownloadDialogBean downloadDialogBean = new DownloadDialogBean();
                    downloadDialogBean.setApp_intro(this.f32666m);
                    MeishuDownloadDetailActivity.startActivity(this, downloadDialogBean);
                    return;
                }
                try {
                    String str = this.f32675v;
                    Intent intent = new Intent(this, (Class<?>) MeishuWebviewActivity.class);
                    intent.putExtra(MeishuWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{str});
                    startActivity(intent);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (view.getId() == R.id.ms_dialog_meishu_download_permission) {
                if (TextUtils.isEmpty(this.f32674u)) {
                    if (this.f32673t != null) {
                        DownloadDialogBean downloadDialogBean2 = new DownloadDialogBean();
                        downloadDialogBean2.setApp_permission(this.f32673t);
                        MeishuDownloadDetailActivity.startActivity(this, downloadDialogBean2);
                        return;
                    }
                    return;
                }
                try {
                    String str2 = this.f32674u;
                    Intent intent2 = new Intent(this, (Class<?>) MeishuWebviewActivity.class);
                    intent2.putExtra(MeishuWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{str2});
                    startActivity(intent2);
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            if (view.getId() == R.id.ms_dialog_meishu_download_privacy) {
                try {
                    String str3 = this.f32671r;
                    Intent intent3 = new Intent(this, (Class<?>) MeishuWebviewActivity.class);
                    intent3.putExtra(MeishuWebviewActivity.EXTRA_AD_DURL_KEY, new String[]{str3});
                    startActivity(intent3);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            if (view.getId() != R.id.ms_dialog_meishu_download_downloadBtn) {
                if (view.getId() == R.id.ms_dialog_meishu_download_cancel) {
                    finish();
                    return;
                }
                return;
            }
            String[] strArrA = f.a(f32653y.a().getDn_start(), f32653y);
            String[] strArrA2 = f.a(f32653y.a().getDn_succ(), f32653y);
            String[] strArrA3 = f.a(f32653y.a().getDn_inst_start(), f32653y);
            String[] strArrA4 = f.a(f32653y.a().getDn_inst_succ(), f32653y);
            String appName = f32653y.a().getAppName();
            if (appName == null) {
                appName = "";
            }
            String str4 = appName;
            Map<Integer, l0> map = DownloadUtils.f31749h;
            DownloadUtils.c.f31779a.a(getApplicationContext(), f32653y.a().getdUrl()[0], str4, this.f32662i, strArrA, strArrA2, strArrA3, strArrA4);
            Toast.makeText(this, "开始下载", 0).show();
            finish();
            return;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        th.printStackTrace();
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnCreate(Bundle bundle) {
        AdSlot adSlotA;
        super.safeOnCreate(bundle);
        if (getResources().getConfiguration().orientation == 2) {
            setContentView(R.layout.ms_dialog_meishu_download_landscape);
        } else {
            setContentView(R.layout.ms_dialog_meishu_download);
        }
        this.f32654a = (ImageView) findViewById(R.id.ms_dialog_meishu_download_imageview);
        this.f32655b = (TextView) findViewById(R.id.ms_dialog_meishu_download_title);
        this.f32656c = (TextView) findViewById(R.id.ms_dialog_meishu_download_version);
        this.f32676w = (TextView) findViewById(R.id.ms_dialog_meishu_download_size);
        this.f32657d = (TextView) findViewById(R.id.ms_dialog_meishu_download_owner);
        this.f32658e = (TextView) findViewById(R.id.ms_dialog_meishu_download_appdetail);
        this.f32672s = findViewById(R.id.ms_dialog_meishu_download_divider);
        this.f32677x = (TextView) findViewById(R.id.ms_dialog_meishu_download_permission);
        this.f32659f = (TextView) findViewById(R.id.ms_dialog_meishu_download_privacy);
        this.f32660g = (TextView) findViewById(R.id.ms_dialog_meishu_download_downloadBtn);
        this.f32661h = (TextView) findViewById(R.id.ms_dialog_meishu_download_cancel);
        this.f32658e.setOnClickListener(this);
        this.f32677x.setOnClickListener(this);
        this.f32659f.setOnClickListener(this);
        this.f32660g.setOnClickListener(this);
        this.f32661h.setOnClickListener(this);
        c cVar = f32653y;
        if (cVar != null && (adSlotA = cVar.a()) != null) {
            try {
                this.f32663j = adSlotA.getAppName();
                this.f32662i = adSlotA.getPackageName();
                this.f32664k = adSlotA.getIcon();
                this.f32665l = adSlotA.getDeveloper();
                this.f32666m = adSlotA.getApp_intro();
                this.f32667n = adSlotA.getApp_feature();
                this.f32668o = adSlotA.getPayment_types();
                this.f32669p = adSlotA.getApp_ver();
                this.f32670q = adSlotA.getApp_size();
                adSlotA.getApp_privacy();
                this.f32671r = adSlotA.getPrivacy_agreement();
                if (adSlotA instanceof BaseAdSlot) {
                    this.f32673t = ((BaseAdSlot) adSlotA).getApp_permission();
                    this.f32674u = ((BaseAdSlot) adSlotA).getApp_permission_url();
                    this.f32675v = ((BaseAdSlot) adSlotA).getApp_intor_url();
                }
            } catch (Exception e2) {
                StringBuilder sbA = a.a("DownLoadDialog: ");
                sbA.append(e2.getMessage());
                Log.e("DownLoadDialog", sbA.toString());
                e2.printStackTrace();
            }
        }
        try {
            if (!TextUtils.isEmpty(this.f32664k)) {
                i iVar = new i((Context) null);
                iVar.f31521d = this.f32654a;
                iVar.a(this.f32664k, false);
            }
            if (TextUtils.isEmpty(this.f32663j)) {
                this.f32655b.setVisibility(8);
            } else {
                this.f32655b.setText(this.f32663j);
            }
            if (TextUtils.isEmpty(this.f32669p)) {
                this.f32656c.setVisibility(8);
            } else {
                this.f32656c.setText("版本号 ：" + this.f32669p);
            }
            if (TextUtils.isEmpty(this.f32670q)) {
                this.f32676w.setVisibility(8);
            } else {
                this.f32676w.setText("大小 ：" + this.f32670q);
            }
            if (TextUtils.isEmpty(this.f32665l)) {
                this.f32657d.setVisibility(8);
            } else {
                this.f32657d.setText(this.f32665l);
            }
            if (TextUtils.isEmpty(this.f32671r)) {
                this.f32672s.setVisibility(8);
                this.f32659f.setVisibility(8);
            }
            if (TextUtils.isEmpty(this.f32663j) && TextUtils.isEmpty(this.f32667n) && TextUtils.isEmpty(this.f32666m) && TextUtils.isEmpty(this.f32670q) && TextUtils.isEmpty(this.f32665l) && TextUtils.isEmpty(this.f32668o)) {
                this.f32672s.setVisibility(8);
                this.f32658e.setVisibility(8);
            }
        } catch (Exception e3) {
            StringBuilder sbA2 = a.a("initData: ");
            sbA2.append(e3.getMessage());
            Log.e("DownLoadDialog", sbA2.toString());
        }
    }

    @Override // com.meishu.sdk.core.safe.SafeAppCompatActivity
    public void safeOnDestroy() {
        super.safeOnDestroy();
        f32653y = null;
    }
}
