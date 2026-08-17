package com.beizi.fusion.asnp.adn.ad.widget.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.permission.PermissionModel;
import com.beizi.fusion.pg;
import com.google.android.material.tabs.TabLayout;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class ASNPDlInfoDetailActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private TabLayout f12963a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f12964b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f12965c;

    /* renamed from: d, reason: collision with root package name */
    private FrameLayout f12966d;

    /* renamed from: e, reason: collision with root package name */
    private BasicWebView f12967e;

    /* renamed from: f, reason: collision with root package name */
    private String f12968f;

    /* renamed from: g, reason: collision with root package name */
    private Map f12969g;

    /* renamed from: h, reason: collision with root package name */
    private final String[] f12970h = {"introduction", "privacy", "permission"};

    /* renamed from: i, reason: collision with root package name */
    private int f12971i = -1;

    public class a implements TabLayout.OnTabSelectedListener {
        public a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
            int position = tab.getPosition();
            if (ASNPDlInfoDetailActivity.this.f12971i != position) {
                ASNPDlInfoDetailActivity.this.a(position);
                ASNPDlInfoDetailActivity.this.f12971i = position;
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            ASNPDlInfoDetailActivity.this.f12971i = tab.getPosition();
            ASNPDlInfoDetailActivity aSNPDlInfoDetailActivity = ASNPDlInfoDetailActivity.this;
            aSNPDlInfoDetailActivity.a(aSNPDlInfoDetailActivity.f12971i);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f12973a;

        /* renamed from: b, reason: collision with root package name */
        private final String f12974b;

        public /* synthetic */ b(String str, String str2, a aVar) {
            this(str, str2);
        }

        private b(String str, String str2) {
            this.f12973a = str;
            this.f12974b = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            if (TextUtils.isEmpty(this.f12974b)) {
                return false;
            }
            return this.f12974b.startsWith("http");
        }
    }

    private void c() {
        this.f12966d = (FrameLayout) findViewById(R.id.asnp_download_detail_layout);
        this.f12964b = (TextView) findViewById(R.id.asnp_download_detail_title);
        this.f12967e = (BasicWebView) findViewById(R.id.asnp_download_detail_web);
        this.f12965c = (TextView) findViewById(R.id.asnp_download_detail_content);
        ((ImageView) findViewById(R.id.asnp_download_detail_back)).setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.asnp.adn.ad.widget.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13005b.a(view);
            }
        });
        TabLayout tabLayout = (TabLayout) findViewById(R.id.asnp_download_detail_tab);
        this.f12963a = tabLayout;
        tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new a());
    }

    private void d() {
        a("introduction");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.asnp_download_detail_layout);
        c();
        b();
    }

    private void b() {
        Intent intent = getIntent();
        if (intent == null) {
            a();
            return;
        }
        if (a(intent)) {
            a();
            return;
        }
        String stringExtra = intent.getStringExtra("whichTab");
        if (TextUtils.isEmpty(stringExtra)) {
            d();
        } else {
            a(stringExtra);
        }
    }

    private void a(String str) {
        int i2;
        if (!TextUtils.isEmpty(str)) {
            if ("introduction".equalsIgnoreCase(str)) {
                i2 = 0;
            } else if ("privacy".equalsIgnoreCase(str)) {
                i2 = 1;
            } else {
                i2 = "permission".equals(str) ? 2 : -1;
            }
            TabLayout tabLayout = this.f12963a;
            if (tabLayout != null && i2 != -1) {
                tabLayout.selectTab(tabLayout.getTabAt(i2));
                return;
            }
        }
        d();
    }

    private boolean a(Intent intent) {
        String stringExtra = intent.getStringExtra("dlm");
        if (!TextUtils.isEmpty(stringExtra) && pg.a(stringExtra)) {
            DownloadInfoModel downloadInfoModel = new DownloadInfoModel(pg.c(stringExtra));
            if (!downloadInfoModel.hasParseException()) {
                this.f12968f = downloadInfoModel.getName();
                ArrayMap arrayMap = new ArrayMap();
                this.f12969g = arrayMap;
                a aVar = null;
                arrayMap.put("introduction", new b(downloadInfoModel.getAppIntroduction(), "", aVar));
                this.f12969g.put("privacy", new b(downloadInfoModel.getPolicy(), downloadInfoModel.getPolicyUrl(), aVar));
                this.f12969g.put("permission", new b(a(downloadInfoModel.getPermission()), downloadInfoModel.getPermissionUrl(), aVar));
                return false;
            }
        }
        return true;
    }

    private void a() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a();
    }

    private String a(List list) {
        StringBuilder sb = new StringBuilder();
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PermissionModel permissionModel = (PermissionModel) it.next();
                String title = permissionModel.getTitle();
                String describe = permissionModel.getDescribe();
                sb.append(title);
                sb.append(":");
                sb.append(describe);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        b bVar;
        this.f12964b.setText(this.f12968f);
        if (i2 < 3) {
            String str = this.f12970h[i2];
            Map map = this.f12969g;
            if (map == null || (bVar = (b) map.get(str)) == null) {
                return;
            }
            if (bVar.a()) {
                this.f12966d.setVisibility(8);
                this.f12967e.setVisibility(4);
                this.f12967e.loadUrl(bVar.f12974b);
            } else {
                this.f12966d.setVisibility(0);
                this.f12967e.setVisibility(8);
                this.f12965c.setText(bVar.f12973a);
            }
        }
    }
}
