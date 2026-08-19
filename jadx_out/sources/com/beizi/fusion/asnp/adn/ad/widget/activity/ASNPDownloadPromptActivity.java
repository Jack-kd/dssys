package com.beizi.fusion.asnp.adn.ad.widget.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.BasicWebView;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.permission.PermissionModel;
import com.beizi.fusion.ih;
import com.beizi.fusion.ip;
import com.beizi.fusion.pf;
import com.beizi.fusion.pg;
import com.beizi.fusion.rm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ASNPDownloadPromptActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private TextView f12975a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f12976b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f12977c;

    /* renamed from: d, reason: collision with root package name */
    private ImageView f12978d;

    /* renamed from: e, reason: collision with root package name */
    private ImageView f12979e;

    /* renamed from: f, reason: collision with root package name */
    private ExpandableListView f12980f;

    /* renamed from: g, reason: collision with root package name */
    private LinearLayout f12981g;

    /* renamed from: h, reason: collision with root package name */
    private LinearLayout f12982h;

    /* renamed from: i, reason: collision with root package name */
    private FrameLayout f12983i;

    /* renamed from: j, reason: collision with root package name */
    private DownloadInfoModel f12984j;

    /* renamed from: k, reason: collision with root package name */
    private int f12985k = -1;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final String f12986a;

        /* renamed from: b, reason: collision with root package name */
        private final String f12987b;

        /* renamed from: c, reason: collision with root package name */
        private final String f12988c;

        private b(String str, String str2, String str3) {
            this.f12986a = str2;
            this.f12987b = str3;
            this.f12988c = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            if (TextUtils.isEmpty(this.f12987b)) {
                return false;
            }
            return this.f12987b.startsWith("http");
        }
    }

    public static class c extends BaseExpandableListAdapter {

        /* renamed from: a, reason: collision with root package name */
        private final Context f12989a;

        /* renamed from: b, reason: collision with root package name */
        private final List f12990b;

        public static class a {

            /* renamed from: a, reason: collision with root package name */
            TextView f12991a;

            /* renamed from: b, reason: collision with root package name */
            BasicWebView f12992b;
        }

        public static class b {

            /* renamed from: a, reason: collision with root package name */
            TextView f12993a;

            /* renamed from: b, reason: collision with root package name */
            ImageView f12994b;

            /* renamed from: c, reason: collision with root package name */
            View f12995c;
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getChild(int i2, int i3) {
            return this.f12990b.get(i2);
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i2, int i3) {
            return i3;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getChildView(int i2, int i3, boolean z2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = LayoutInflater.from(this.f12989a).inflate(R.layout.asnp_download_dialog_expand_child_item, (ViewGroup) null);
                aVar = new a();
                aVar.f12991a = (TextView) view.findViewById(R.id.addeci_content_tv);
                aVar.f12992b = (BasicWebView) view.findViewById(R.id.addeci_content_wb);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            b bVar = (b) this.f12990b.get(i2);
            if (bVar.a()) {
                aVar.f12991a.setVisibility(8);
                if (TextUtils.isEmpty(bVar.f12987b)) {
                    aVar.f12992b.setVisibility(8);
                    return view;
                }
                aVar.f12992b.setVisibility(0);
                aVar.f12992b.loadUrl(bVar.f12987b);
                return view;
            }
            aVar.f12992b.setVisibility(8);
            if (TextUtils.isEmpty(bVar.f12986a)) {
                aVar.f12991a.setVisibility(8);
                return view;
            }
            aVar.f12991a.setText(bVar.f12986a);
            aVar.f12991a.setVisibility(0);
            try {
                aVar.f12991a.setTextColor(Color.parseColor(ip.a().a("#8C8C8C")));
            } catch (Exception unused) {
            }
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i2) {
            return 1;
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getGroup(int i2) {
            return this.f12990b.get(i2);
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            return this.f12990b.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i2) {
            return i2;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getGroupView(int i2, boolean z2, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = LayoutInflater.from(this.f12989a).inflate(R.layout.asnp_download_dialog_expand_parent_item, (ViewGroup) null);
                bVar = new b();
                bVar.f12993a = (TextView) view.findViewById(R.id.addep_title_tv);
                bVar.f12994b = (ImageView) view.findViewById(R.id.addep_fold_iv);
                bVar.f12995c = view.findViewById(R.id.addep_item_divider_view);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            bVar.f12993a.setText(((b) this.f12990b.get(i2)).f12988c);
            if (z2) {
                bVar.f12993a.setTextColor(Color.parseColor("#FF8E15"));
                bVar.f12994b.setBackgroundResource(R.mipmap.asnp_icon_arrow_unfold);
            } else {
                try {
                    bVar.f12993a.setTextColor(Color.parseColor(ip.a().a("#333333")));
                } catch (Exception e2) {
                    rm.a(e2);
                }
                bVar.f12994b.setBackgroundResource(R.mipmap.asnp_icon_arrow_fold);
            }
            if (i2 == 0) {
                bVar.f12995c.setVisibility(8);
            } else {
                bVar.f12995c.setVisibility(0);
            }
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i2, int i3) {
            return false;
        }

        private c(Context context, List list) {
            ArrayList arrayList = new ArrayList();
            this.f12990b = arrayList;
            this.f12989a = context;
            arrayList.clear();
            arrayList.addAll(list);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFinishOnTouchOutside(false);
        a();
        setContentView(R.layout.asnp_download_dialog);
        b();
        c();
    }

    private void a() {
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("download_info_key");
            if (TextUtils.isEmpty(stringExtra) || !pg.a(stringExtra)) {
                return;
            }
            DownloadInfoModel downloadInfoModel = new DownloadInfoModel(pg.c(stringExtra));
            if (downloadInfoModel.hasParseException()) {
                return;
            }
            this.f12984j = downloadInfoModel;
        }
    }

    private void b() {
        this.f12983i = (FrameLayout) findViewById(R.id.adscope_download_dialog_total_layout);
        this.f12982h = (LinearLayout) findViewById(R.id.adscope_download_dialog_linear);
        View viewFindViewById = findViewById(R.id.adscope_download_dialog_divider_view);
        this.f12978d = (ImageView) findViewById(R.id.adscope_download_dialog_close_iv);
        this.f12979e = (ImageView) findViewById(R.id.adscope_download_dialog_icon_iv);
        this.f12975a = (TextView) findViewById(R.id.adscope_download_dialog_name_tv);
        this.f12976b = (TextView) findViewById(R.id.adscope_download_dialog_version_tv);
        this.f12977c = (TextView) findViewById(R.id.adscope_download_dialog_developer_tv);
        this.f12980f = (ExpandableListView) findViewById(R.id.adscope_download_dialog_expand_lv);
        this.f12981g = (LinearLayout) findViewById(R.id.adscope_download_dialog_download_ll);
        this.f12980f.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() { // from class: com.beizi.fusion.asnp.adn.ad.widget.activity.b
            @Override // android.widget.ExpandableListView.OnGroupExpandListener
            public final void onGroupExpand(int i2) {
                this.f13006a.a(i2);
            }
        });
        try {
            this.f12982h.setBackgroundColor(Color.parseColor(ip.a().a("#FFFFFF")));
            viewFindViewById.setBackgroundColor(Color.parseColor(ip.a().a("#CCCCCC")));
            this.f12978d.setImageTintList(ColorStateList.valueOf(Color.parseColor(ip.a().a("#000000"))));
            this.f12975a.setTextColor(Color.parseColor(ip.a().a("#000000")));
            this.f12976b.setTextColor(Color.parseColor(ip.a().a("#8C8C8C")));
            this.f12977c.setTextColor(Color.parseColor(ip.a().a("#8C8C8C")));
        } catch (Exception e2) {
            rm.a(e2);
        }
    }

    private void c() {
        this.f12978d.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.asnp.adn.ad.widget.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13007b.a(view);
            }
        });
        this.f12981g.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.asnp.adn.ad.widget.activity.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13008b.b(view);
            }
        });
        DownloadInfoModel downloadInfoModel = this.f12984j;
        if (downloadInfoModel == null) {
            return;
        }
        if (this.f12979e != null && !TextUtils.isEmpty(downloadInfoModel.getIconUrl())) {
            pf.a(this).b(this.f12984j.getIconUrl()).b(true).a(this.f12979e);
        }
        if (this.f12975a != null && !TextUtils.isEmpty(this.f12984j.getName())) {
            this.f12975a.setText(this.f12984j.getName());
        }
        if (this.f12976b != null && !TextUtils.isEmpty(this.f12984j.getVersion())) {
            this.f12976b.setText(String.format("%s %s", getString(R.string.adscope_version_code), this.f12984j.getVersion()));
        }
        if (this.f12977c != null && !TextUtils.isEmpty(this.f12984j.getDeveloper())) {
            this.f12977c.setText(String.format("%s %s", getString(R.string.adscope_developer), this.f12984j.getDeveloper()));
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b(getString(R.string.adscope_app_permission), a(this.f12984j.getPermission()), this.f12984j.getPermissionUrl()));
        arrayList.add(new b(getString(R.string.adscope_app_privacy_policy), this.f12984j.getPolicy(), this.f12984j.getPolicyUrl()));
        arrayList.add(new b(getString(R.string.adscope_app_intro_info), this.f12984j.getAppIntroduction(), this.f12984j.getAppIntroduction()));
        this.f12980f.setAdapter(new c(this, arrayList));
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
    public /* synthetic */ void a(int i2) {
        int i3 = this.f12985k;
        if (i3 != -1) {
            this.f12980f.collapseGroup(i3);
        }
        this.f12985k = i2;
    }

    private void a(boolean z2) {
        Intent intent = new Intent();
        intent.setAction("com.asnp.ad.ACTION_DOWNLOAD_PROMPT_RESULT");
        if (z2) {
            intent.putExtra("prompt", "confirm");
        } else {
            intent.putExtra("prompt", "cancel");
        }
        finish();
        ih.a(getApplicationContext()).a(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a(false);
    }
}
