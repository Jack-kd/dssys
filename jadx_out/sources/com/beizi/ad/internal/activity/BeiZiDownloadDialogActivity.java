package com.beizi.ad.internal.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.ad.DownloadService;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.beizi.fusion.R;
import com.beizi.fusion.em;
import com.beizi.fusion.qh;
import com.beizi.fusion.rf;
import com.beizi.fusion.y1;
import com.beizi.fusion.y3;
import com.beizi.fusion.z7;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BeiZiDownloadDialogActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private FrameLayout f11921a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f11922b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f11923c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f11924d;

    /* renamed from: e, reason: collision with root package name */
    private ImageView f11925e;

    /* renamed from: f, reason: collision with root package name */
    private ImageView f11926f;

    /* renamed from: g, reason: collision with root package name */
    private ExpandableListView f11927g;

    /* renamed from: h, reason: collision with root package name */
    private LinearLayout f11928h;

    /* renamed from: i, reason: collision with root package name */
    private LinearLayout f11929i;

    /* renamed from: j, reason: collision with root package name */
    private TextView f11930j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f11931k;

    /* renamed from: l, reason: collision with root package name */
    private ApkBean f11932l;

    /* renamed from: m, reason: collision with root package name */
    private int f11933m = -1;

    /* renamed from: n, reason: collision with root package name */
    private int f11934n = 1;

    /* renamed from: o, reason: collision with root package name */
    private List f11935o;

    /* renamed from: p, reason: collision with root package name */
    private String f11936p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f11937q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f11938r;

    /* renamed from: s, reason: collision with root package name */
    private String f11939s;

    /* renamed from: t, reason: collision with root package name */
    private int f11940t;

    /* renamed from: u, reason: collision with root package name */
    private y1.b.C0179b f11941u;

    /* renamed from: v, reason: collision with root package name */
    private qh f11942v;

    /* renamed from: w, reason: collision with root package name */
    private boolean f11943w;

    public class a implements ExpandableListView.OnGroupClickListener {
        public a() {
        }

        @Override // android.widget.ExpandableListView.OnGroupClickListener
        public boolean onGroupClick(ExpandableListView expandableListView, View view, int i2, long j2) {
            try {
                if (BeiZiDownloadDialogActivity.this.f11927g.isGroupExpanded(i2)) {
                    BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(i2);
                } else {
                    BeiZiDownloadDialogActivity.this.f11927g.expandGroup(i2);
                    if (i2 == 0) {
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(1);
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(2);
                    } else if (i2 == 1) {
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(0);
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(2);
                    } else if (i2 == 2) {
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(0);
                        BeiZiDownloadDialogActivity.this.f11927g.collapseGroup(1);
                    }
                }
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiDownloadDialogActivity.this.finish();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiDownloadDialogActivity.this.a();
            BeiZiDownloadDialogActivity.this.finish();
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiDownloadDialogActivity.this.d();
            BeiZiDownloadDialogActivity.this.finish();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BeiZiDownloadDialogActivity.this.a();
            BeiZiDownloadDialogActivity.this.finish();
        }
    }

    public class f implements rf.f {
        public f() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a() {
        }

        @Override // com.beizi.fusion.rf.f
        public void a(Bitmap bitmap) {
            try {
                BeiZiDownloadDialogActivity.this.f11926f.setImageBitmap(bitmap);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void e() {
        try {
            if (this.f11932l == null) {
                return;
            }
            if (this.f11934n == 1) {
                this.f11925e.setVisibility(0);
                this.f11925e.setOnClickListener(new b());
                this.f11928h.setVisibility(0);
                this.f11928h.setOnClickListener(new c());
                this.f11929i.setVisibility(8);
            } else {
                this.f11925e.setVisibility(8);
                this.f11928h.setVisibility(8);
                this.f11929i.setVisibility(0);
                this.f11930j.setOnClickListener(new d());
                this.f11931k.setOnClickListener(new e());
            }
            if (this.f11926f != null && !TextUtils.isEmpty(this.f11932l.getAppIconURL())) {
                try {
                    rf.a(this).a(this.f11932l.getAppIconURL(), new f());
                } catch (Exception unused) {
                }
            }
            if (this.f11922b != null && !TextUtils.isEmpty(this.f11932l.getApkTittleName())) {
                this.f11922b.setText(this.f11932l.getApkTittleName());
            }
            if (this.f11923c != null && !TextUtils.isEmpty(this.f11932l.getAppVersion())) {
                this.f11923c.setText("版本号 ：" + this.f11932l.getAppVersion());
            }
            if (this.f11924d != null && !TextUtils.isEmpty(this.f11932l.getAppDeveloper())) {
                this.f11924d.setText("开发者 ：" + this.f11932l.getAppDeveloper());
            }
            ArrayList arrayList = new ArrayList();
            z7 z7Var = new z7();
            z7Var.c("应用权限");
            if (!TextUtils.isEmpty(this.f11932l.getAppPermissionsUrl())) {
                z7Var.a(this.f11932l.getAppPermissionsUrl());
                z7Var.b("h5");
            } else if (!TextUtils.isEmpty(this.f11932l.getAppPermissionsDesc())) {
                z7Var.a(this.f11932l.getAppPermissionsDesc());
                z7Var.b(com.baidu.mobads.sdk.internal.a.f10878b);
            }
            arrayList.add(z7Var);
            z7 z7Var2 = new z7();
            z7Var2.c("隐私协议");
            String appPrivacyUrl = this.f11932l.getAppPrivacyUrl();
            if (!TextUtils.isEmpty(appPrivacyUrl)) {
                if (appPrivacyUrl.startsWith("http")) {
                    z7Var2.a(appPrivacyUrl);
                    z7Var2.b("h5");
                } else {
                    z7Var2.a(appPrivacyUrl);
                    z7Var2.b(com.baidu.mobads.sdk.internal.a.f10878b);
                }
            }
            arrayList.add(z7Var2);
            z7 z7Var3 = new z7();
            z7Var3.c("产品功能介绍");
            String appintro = this.f11932l.getAppintro();
            if (!TextUtils.isEmpty(appintro)) {
                if (appintro.startsWith("http")) {
                    z7Var3.a(appintro);
                    z7Var3.b("h5");
                } else {
                    z7Var3.a(appintro);
                    z7Var3.b(com.baidu.mobads.sdk.internal.a.f10878b);
                }
            }
            arrayList.add(z7Var3);
            this.f11927g.setAdapter(new y3(this, arrayList));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.beizi_download_dialog);
        setFinishOnTouchOutside(false);
        b();
        c();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            if (this.f11932l == null) {
                return;
            }
            if (this.f11934n != 2) {
                Bundle bundle = new Bundle();
                bundle.putSerializable("apkBean", this.f11932l);
                Intent intent = new Intent(this, (Class<?>) DownloadService.class);
                intent.putExtra("data", bundle);
                startService(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(this.f11932l.getApkUrl()));
            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
            startActivity(intent2);
            List list = this.f11935o;
            if (list != null) {
                em.a(list);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b() {
        try {
            Bundle bundleExtra = getIntent().getBundleExtra("data");
            if (bundleExtra == null) {
                return;
            }
            if (bundleExtra.containsKey("apkBean")) {
                this.f11932l = (ApkBean) bundleExtra.getSerializable("apkBean");
            }
            if (bundleExtra.containsKey("type")) {
                this.f11934n = bundleExtra.getInt("type");
            }
            if (bundleExtra.containsKey("openList")) {
                this.f11935o = bundleExtra.getStringArrayList("openList");
            }
            if (bundleExtra.containsKey("landingPageUrl")) {
                this.f11936p = bundleExtra.getString("landingPageUrl");
            }
            if (bundleExtra.containsKey("isCanJump")) {
                this.f11937q = bundleExtra.getBoolean("isCanJump", false);
            }
            if (bundleExtra.containsKey("isDownload")) {
                this.f11938r = bundleExtra.getBoolean("isDownload", false);
            }
            if (bundleExtra.containsKey("deeplinkUrl")) {
                this.f11939s = bundleExtra.getString("deeplinkUrl");
            }
            if (bundleExtra.containsKey("webDeepLink")) {
                this.f11940t = bundleExtra.getInt("webDeepLink");
            }
            if (bundleExtra.containsKey("followTrackExt")) {
                this.f11941u = (y1.b.C0179b) bundleExtra.getSerializable("followTrackExt");
            }
            if (bundleExtra.containsKey("lpOptimizeModule")) {
                this.f11942v = (qh) bundleExtra.getSerializable("lpOptimizeModule");
            }
            if (bundleExtra.containsKey("isForbidOpenLandingPage")) {
                this.f11943w = bundleExtra.getBoolean("isForbidOpenLandingPage");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void c() {
        try {
            this.f11921a = (FrameLayout) findViewById(R.id.beizi_download_dialog_container_fl);
            this.f11925e = (ImageView) findViewById(R.id.beizi_download_dialog_close_iv);
            this.f11926f = (ImageView) findViewById(R.id.beizi_download_dialog_icon_iv);
            this.f11922b = (TextView) findViewById(R.id.beizi_download_dialog_name_tv);
            this.f11923c = (TextView) findViewById(R.id.beizi_download_dialog_version_tv);
            this.f11924d = (TextView) findViewById(R.id.beizi_download_dialog_developer_tv);
            this.f11927g = (ExpandableListView) findViewById(R.id.beizi_download_dialog_expand_lv);
            this.f11928h = (LinearLayout) findViewById(R.id.beizi_download_dialog_download_container_ll);
            this.f11929i = (LinearLayout) findViewById(R.id.beizi_download_dialog_market_container_ll);
            this.f11930j = (TextView) findViewById(R.id.beizi_download_dialog_market_cancel_tv);
            this.f11931k = (TextView) findViewById(R.id.beizi_download_dialog_market_confirm_tv);
            this.f11927g.setOnGroupClickListener(new a());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f11934n == 2 && !this.f11943w && !TextUtils.isEmpty(this.f11936p) && this.f11936p.startsWith("http")) {
            try {
                Intent intent = new Intent(this, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.f11937q);
                bundle.putBoolean("isDownload", this.f11938r);
                if (!TextUtils.isEmpty(this.f11939s)) {
                    boolean z2 = true;
                    if (this.f11940t != 1) {
                        z2 = false;
                    }
                    bundle.putBoolean("webDeepLink", z2);
                    bundle.putString("deeplinkUrl", this.f11939s);
                }
                if (!TextUtils.isEmpty(this.f11936p)) {
                    bundle.putString("landingPageUrl", this.f11936p);
                }
                y1.b.C0179b c0179b = this.f11941u;
                if (c0179b != null) {
                    bundle.putSerializable("followTrackExt", c0179b);
                }
                qh qhVar = this.f11942v;
                if (qhVar != null) {
                    bundle.putSerializable("lpOptimizeModule", qhVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
