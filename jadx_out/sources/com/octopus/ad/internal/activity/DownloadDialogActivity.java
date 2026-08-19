package com.octopus.ad.internal.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.anythink.core.common.f.s;
import com.byazt.yi.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.octopus.ad.Octopus;
import com.octopus.ad.R;
import com.octopus.ad.d.b.f;
import com.octopus.ad.d.b.i;
import com.octopus.ad.internal.c.c;
import com.octopus.ad.internal.c.n;
import com.octopus.ad.internal.utilities.ImageManager;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.utils.ThreadUtils;
import com.octopus.ad.widget.FlickerProgressBar;
import java.io.File;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.HashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class DownloadDialogActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private static final String f34169a = "DownloadDialogActivity";

    /* renamed from: h, reason: collision with root package name */
    private static c.a f34170h;

    /* renamed from: b, reason: collision with root package name */
    private long f34171b;

    /* renamed from: c, reason: collision with root package name */
    private String f34172c;

    /* renamed from: d, reason: collision with root package name */
    private DownloadManager f34173d;

    /* renamed from: e, reason: collision with root package name */
    private a f34174e;

    /* renamed from: f, reason: collision with root package name */
    private b f34175f;

    /* renamed from: g, reason: collision with root package name */
    private FlickerProgressBar f34176g;

    /* renamed from: i, reason: collision with root package name */
    private HashMap<String, com.octopus.ad.d.b> f34177i;

    /* renamed from: j, reason: collision with root package name */
    private HashMap<String, Boolean> f34178j;

    /* renamed from: k, reason: collision with root package name */
    private HashMap<Long, String> f34179k;

    /* renamed from: l, reason: collision with root package name */
    private com.octopus.ad.d.c f34180l;

    /* renamed from: m, reason: collision with root package name */
    private ComplianceInfo f34181m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f34182n;

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z2) {
            super.onChange(z2);
            int[] iArr = {0, 0, 0};
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = DownloadDialogActivity.this.f34173d.query(new DownloadManager.Query().setFilterById(DownloadDialogActivity.this.f34171b));
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        iArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                        iArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(s.a.f3404f));
                        iArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        f.a(DownloadDialogActivity.f34169a, "progress：" + iArr[0] + ServiceReference.DELIMITER + iArr[1]);
                        if (iArr[1] > 0) {
                            DecimalFormat decimalFormat = new DecimalFormat("#.#");
                            decimalFormat.setRoundingMode(RoundingMode.DOWN);
                            DownloadDialogActivity.this.f34176g.setProgress(Float.parseFloat(decimalFormat.format((iArr[0] * 100.0f) / iArr[1])));
                        }
                        int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                        f.a(DownloadDialogActivity.f34169a, "onChange status：" + i2);
                        DownloadDialogActivity.this.f34176g.setStatus(i2);
                        if (1 == i2) {
                            DownloadDialogActivity.this.c(com.octopus.ad.d.c.a(DownloadDialogActivity.this).a());
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e2) {
                    f.a("OctopusAd", "An Exception Caught", e2);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
    }

    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                f.d(DownloadDialogActivity.f34169a, "action：" + action);
                if (!"android.intent.action.DOWNLOAD_COMPLETE".equals(action)) {
                    if ("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED".equals(intent.getAction())) {
                        f.a(DownloadDialogActivity.f34169a, "NOTIFICATION_CLICKED");
                        return;
                    }
                    return;
                }
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
                DownloadManager.Query query = new DownloadManager.Query();
                query.setFilterById(longExtra);
                Cursor cursorQuery = downloadManager.query(query);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    DownloadDialogActivity downloadDialogActivity = DownloadDialogActivity.this;
                    downloadDialogActivity.a(Long.valueOf(downloadDialogActivity.f34171b));
                } else if (cursorQuery.getInt(cursorQuery.getColumnIndex("status")) == 8) {
                    DownloadDialogActivity.this.a(context, longExtra);
                }
            } catch (Throwable th) {
                f.a("OctopusAd", "A Throwable Caught", th);
            }
        }
    }

    private void g() {
        if (this.f34174e != null) {
            getContentResolver().unregisterContentObserver(this.f34174e);
            this.f34174e = null;
            f.a(f34169a, "unregisterContentObserver()");
        }
        b bVar = this.f34175f;
        if (bVar != null) {
            unregisterReceiver(bVar);
            this.f34175f = null;
            f.a(f34169a, "unregisterReceiver()");
        }
    }

    private void h() {
        c.a aVar = f34170h;
        if (aVar != null) {
            aVar.a();
        }
        if (this.f34178j != null) {
            this.f34178j = null;
        }
        if (this.f34177i != null) {
            this.f34177i = null;
        }
        if (this.f34179k != null) {
            this.f34179k = null;
        }
        com.octopus.ad.d.c.a(this).f();
        f.a(f34169a, "releaseResources()");
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.octopus.ad.d.c cVarA = com.octopus.ad.d.c.a(this);
        this.f34180l = cVarA;
        this.f34181m = cVarA.b();
        b();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f.a(f34169a, "DownloadService onDestroy()");
        com.octopus.ad.d.c cVar = this.f34180l;
        if (cVar != null) {
            cVar.d();
        }
        try {
            g();
            h();
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        f.d(f34169a, "startDownload");
        this.f34173d = (DownloadManager) getSystemService("download");
        this.f34174e = new a(new Handler());
        this.f34175f = new b();
        this.f34177i = new HashMap<>();
        this.f34178j = new HashMap<>();
        this.f34179k = new HashMap<>();
        d();
        e();
    }

    @SuppressLint({"WrongConstant", "UnspecifiedRegisterReceiverFlag"})
    private void d() {
        try {
            getContentResolver().registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.f34174e);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
            if (Build.VERSION.SDK_INT >= 26) {
                registerReceiver(this.f34175f, intentFilter, 2);
            } else {
                registerReceiver(this.f34175f, intentFilter);
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void e() {
        final com.octopus.ad.d.b bVarA = com.octopus.ad.d.c.a(this).a();
        if (bVarA == null) {
            return;
        }
        HashMap<String, com.octopus.ad.d.b> map = this.f34177i;
        if (map != null) {
            map.put(bVarA.c(), bVarA);
        }
        HashMap<String, Boolean> map2 = this.f34178j;
        if (map2 != null && map2.get(bVarA.c()) == null) {
            f.a(f34169a, "not have package status...");
            this.f34178j.put(bVarA.c(), Boolean.FALSE);
        }
        if (Octopus.getCustomController() != null && !TextUtils.isEmpty(Octopus.getCustomController().getAuthorities())) {
            this.f34172c = Octopus.getCustomController().getAuthorities();
        } else if (TextUtils.isEmpty(bVarA.g())) {
            this.f34172c = getPackageName() + ".octopus.provider";
        } else {
            this.f34172c = bVarA.g();
        }
        bVarA.a(this.f34172c);
        com.octopus.ad.d.b.c.a(bVarA.d());
        ThreadUtils.runOnThreadPool(new Runnable() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.6
            @Override // java.lang.Runnable
            public void run() {
                DownloadDialogActivity.this.a(bVarA);
            }
        });
    }

    private void f() {
        try {
            HashMap<Long, String> map = this.f34179k;
            if (map == null || this.f34177i == null) {
                return;
            }
            String str = map.get(Long.valueOf(this.f34171b));
            if (i.d(this, str)) {
                com.octopus.ad.d.b bVar = this.f34177i.get(str);
                if (bVar != null) {
                    File file = new File(bVar.d(), bVar.b());
                    if (file.exists() && file.delete()) {
                        f.a(f34169a, "apkFile delete success");
                    }
                    com.octopus.ad.d.c.a(this).b(true);
                    if (bVar.h() != null) {
                        n.a(bVar.h().d());
                    }
                    this.f34177i.remove(str);
                }
                HashMap<String, com.octopus.ad.d.b> map2 = this.f34177i;
                if (map2 == null || !map2.isEmpty()) {
                    return;
                }
                finish();
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void b() {
        try {
            if (this.f34180l != null && this.f34181m != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.OctopusAlertDialogStyle);
                View viewInflate = LayoutInflater.from(this).inflate(R.layout.oct_dialog_download, (ViewGroup) null);
                builder.setView(viewInflate);
                final AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.setCancelable(false);
                alertDialogCreate.setCanceledOnTouchOutside(false);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_app_icon);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_app_name);
                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_app_version);
                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_app_developer);
                TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_app_permission);
                TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_app_privacy);
                TextView textView6 = (TextView) viewInflate.findViewById(R.id.tv_app_function);
                this.f34176g = (FlickerProgressBar) viewInflate.findViewById(R.id.btn_download);
                ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.iv_close);
                ImageManager.with(null).load(this.f34181m.getAppIconURL()).into(imageView);
                textView.setText(this.f34181m.getAppName());
                textView2.setText(String.format("版本号：%s", this.f34181m.getAppVersion()));
                textView3.setText(String.format("开发者：%s", this.f34181m.getDeveloperName()));
                com.octopus.ad.d.b bVarA = com.octopus.ad.d.c.a(this).a();
                if (bVarA != null && new File(bVarA.d(), bVarA.b()).exists()) {
                    this.f34176g.setProgress(100.0f);
                    this.f34176g.setStatus(8);
                }
                textView4.setPaintFlags(textView4.getPaintFlags() | 8);
                textView5.setPaintFlags(textView5.getPaintFlags() | 8);
                textView6.setPaintFlags(textView6.getPaintFlags() | 8);
                textView4.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (DownloadDialogActivity.this.f34181m != null) {
                            ViewUtil.openLocalBrowser(DownloadDialogActivity.this.f34181m.getPermissionsUrl(), 0);
                        }
                    }
                });
                textView5.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (DownloadDialogActivity.this.f34181m != null) {
                            ViewUtil.openLocalBrowser(DownloadDialogActivity.this.f34181m.getPrivacyUrl(), 0);
                        }
                    }
                });
                textView6.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (DownloadDialogActivity.this.f34181m != null) {
                            ViewUtil.openLocalBrowser(DownloadDialogActivity.this.f34181m.getFunctionDescUrl(), 0);
                        }
                    }
                });
                this.f34176g.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        DownloadDialogActivity.this.c();
                    }
                });
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        alertDialogCreate.cancel();
                        DownloadDialogActivity.this.finish();
                    }
                });
                alertDialogCreate.show();
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void a(final String str) {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.7
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(DownloadDialogActivity.this.getApplicationContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.octopus.ad.d.b bVar) {
        HashMap<String, Boolean> map = this.f34178j;
        if (map != null && map.get(bVar.c()) != null && Boolean.TRUE.equals(this.f34178j.get(bVar.c()))) {
            f.a(f34169a, "downloading..." + bVar.c() + "...please not repeat click");
            a("正在下载…请勿重复点击");
            return;
        }
        File file = new File(bVar.d(), bVar.b());
        if (file.exists()) {
            try {
                com.octopus.ad.d.c.a(this).b(false);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.setAction("android.intent.action.VIEW");
                Uri uriForFile = FileProvider.getUriForFile(this, bVar.g(), file);
                intent.addFlags(3);
                if (uriForFile != null) {
                    f.a(f34169a, "uri......" + uriForFile);
                    intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                    startActivity(intent);
                    b(bVar);
                    return;
                }
                return;
            } catch (Exception e2) {
                f.d(f34169a, "apkFile.exists():" + e2);
                return;
            }
        }
        try {
            if (this.f34182n) {
                a(Long.valueOf(this.f34171b));
                this.f34176g.b();
                this.f34182n = false;
                a("已取消下载");
                return;
            }
            this.f34182n = true;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(bVar.a()));
            request.setTitle(bVar.e());
            request.setDescription(bVar.f());
            request.setNotificationVisibility(1);
            request.setDestinationUri(Uri.fromFile(file));
            request.setMimeType(AdBaseConstants.MIME_APK);
            this.f34171b = this.f34173d.enqueue(request);
            String str = f34169a;
            f.b(str, "mReqId:" + this.f34171b);
            HashMap<Long, String> map2 = this.f34179k;
            if (map2 != null) {
                map2.put(Long.valueOf(this.f34171b), bVar.c());
            }
            HashMap<String, Boolean> map3 = this.f34178j;
            if (map3 != null) {
                map3.put(bVar.c(), Boolean.TRUE);
            }
            a("已开始下载…");
            f.a(str, "BEGIN_DOWNLOAD!");
            if (bVar.h() != null) {
                n.a(bVar.h().a());
            }
        } catch (Exception e3) {
            f.a(f34169a, "DownloadManager download fail:" + e3);
            try {
                if (TextUtils.isEmpty(bVar.a()) || !bVar.a().contains("http")) {
                    return;
                }
                HashMap<String, Boolean> map4 = this.f34178j;
                if (map4 != null) {
                    map4.put(bVar.c(), Boolean.TRUE);
                }
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.VIEW");
                intent2.setData(Uri.parse(bVar.a()));
                intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent2);
            } catch (Exception e4) {
                f.d(f34169a, "skip browser fail:" + e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final com.octopus.ad.d.b bVar) {
        if (bVar == null) {
            return;
        }
        f.a(f34169a, "--appUpdate downloadApk start--");
        c.a aVarA = c.a();
        f34170h = aVarA;
        aVarA.a(new c.b() { // from class: com.octopus.ad.internal.activity.DownloadDialogActivity.8
            @Override // com.octopus.ad.internal.c.c.b
            public void a(long j2, long j3) {
            }

            @Override // com.octopus.ad.internal.c.c.b
            public void b(File file) {
                f.a(DownloadDialogActivity.f34169a, "--appUpdate downloadApk onSuccess--");
                if (DownloadDialogActivity.this.f34178j != null) {
                    DownloadDialogActivity.this.f34178j.put(bVar.c(), Boolean.FALSE);
                }
                DownloadDialogActivity.this.a(DownloadDialogActivity.this.getApplicationContext(), (Long) (-1L), bVar);
            }

            @Override // com.octopus.ad.internal.c.c.b
            public boolean a(File file) {
                return true;
            }

            @Override // com.octopus.ad.internal.c.c.b
            public void a(int i2) {
                f.a(DownloadDialogActivity.f34169a, "--appUpdate downloadApk onFail--");
                try {
                    String strA = bVar.a();
                    if (TextUtils.isEmpty(strA) || !strA.contains("http")) {
                        return;
                    }
                    if (DownloadDialogActivity.this.f34178j != null) {
                        DownloadDialogActivity.this.f34178j.put(bVar.c(), Boolean.TRUE);
                    }
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(strA));
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    DownloadDialogActivity.this.startActivity(intent);
                } catch (Exception e2) {
                    f.a(DownloadDialogActivity.f34169a, "skip browser fail:" + e2);
                }
            }
        });
        f34170h.a(new c.d(bVar.a(), bVar.d(), bVar.b()));
    }

    private void b(com.octopus.ad.d.b bVar) {
        f.a(f34169a, "BEGIN_INSTALL!");
        if (bVar.h() != null) {
            n.a(bVar.h().c());
        }
    }

    private static File b(Context context, long j2) {
        Cursor cursorQuery;
        String path;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        File file = null;
        if (j2 != -1) {
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j2);
            query.setFilterByStatus(8);
            if (downloadManager != null && (cursorQuery = downloadManager.query(query)) != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
                    if (!TextUtils.isEmpty(string) && (path = Uri.parse(string).getPath()) != null) {
                        file = new File(path);
                    }
                }
                cursorQuery.close();
            }
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, long j2) {
        f.a(f34169a, "onReceived...download finish...begin install！");
        HashMap<Long, String> map = this.f34179k;
        if (map == null || this.f34177i == null) {
            return;
        }
        String str = map.get(Long.valueOf(j2));
        HashMap<String, Boolean> map2 = this.f34178j;
        if (map2 != null) {
            map2.put(str, Boolean.FALSE);
        }
        com.octopus.ad.d.b bVar = this.f34177i.get(str);
        if (bVar != null) {
            if (bVar.h() != null) {
                n.a(bVar.h().b());
            }
            a(context, Long.valueOf(j2), bVar);
        }
    }

    public void a(Long l2) {
        try {
            HashMap<Long, String> map = this.f34179k;
            if (map != null) {
                String str = map.get(l2);
                if (!TextUtils.isEmpty(str)) {
                    HashMap<String, Boolean> map2 = this.f34178j;
                    if (map2 != null) {
                        map2.put(str, Boolean.FALSE);
                    }
                    HashMap<String, com.octopus.ad.d.b> map3 = this.f34177i;
                    if (map3 != null) {
                        map3.remove(str);
                    }
                }
            }
            DownloadManager downloadManager = this.f34173d;
            if (downloadManager == null || l2 == null) {
                return;
            }
            downloadManager.remove(l2.longValue());
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Long l2, com.octopus.ad.d.b bVar) {
        try {
            com.octopus.ad.d.c.a(context).b(false);
            Intent intent = new Intent();
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setAction("android.intent.action.VIEW");
            Uri uriForFile = FileProvider.getUriForFile(context, this.f34172c, new File(bVar.d(), bVar.b()));
            intent.addFlags(3);
            if (uriForFile != null) {
                f.a(f34169a, "uri......" + uriForFile);
                intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                context.startActivity(intent);
                b(bVar);
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
