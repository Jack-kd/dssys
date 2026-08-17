package com.ss.android.downloadlib.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.b.n;
import com.byazt.fu.DownloadInfo;
import com.byazt.l.e;
import com.byazt.m.w;
import com.byazt.ni.jx;
import com.byazt.o.hp;
import com.byazt.rx.BaseConstants;
import com.byazt.t.jl;
import com.byazt.t.v;
import com.byazt.v.l;
import com.byazt.w.a;
import com.byazt.y.s;
import com.byazt.y.zy;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.Downloader;
import com.byazt.zv.l;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class TTDelegateActivity extends Activity {

    /* renamed from: j, reason: collision with root package name */
    private static hp f45507j;
    protected Intent hp = null;
    private l jx;

    /* renamed from: l, reason: collision with root package name */
    private boolean f45508l;

    public static void hp(String str, String[] strArr) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 1);
        intent.putExtra("permission_id_key", str);
        intent.putExtra("permission_content_key", strArr);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    private static Intent jx(@NonNull com.byazt.zv.hp hpVar) {
        return new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
    }

    public static void l(String str, com.byazt.zv.hp hpVar) {
        Intent intentJx = jx(hpVar);
        intentJx.addFlags(C.ENCODING_PCM_MU_LAW);
        intentJx.putExtra("type", 11);
        intentJx.putExtra("package_name", str);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intentJx);
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) throws JSONException {
        super.onCreate(bundle);
        l();
        this.hp = getIntent();
        jl.l(this);
        hp();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) throws JSONException {
        super.onNewIntent(intent);
        setIntent(intent);
        this.hp = intent;
        jl.l(this);
        hp();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        jl.w().hp(this, i2, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onStop() {
        l lVar;
        super.onStop();
        if (!this.f45508l || (lVar = this.jx) == null) {
            return;
        }
        DownloadInfo downloadInfoHp = !TextUtils.isEmpty(lVar.nr()) ? e.hp(jl.getContext()).hp(this.jx.nr(), null, true) : e.hp(jl.getContext()).l(this.jx.hp());
        if (downloadInfoHp == null || downloadInfoHp.getCurBytes() < downloadInfoHp.getTotalBytes() || isFinishing()) {
            return;
        }
        finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void jx() throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.activity.TTDelegateActivity.jx():void");
    }

    public static void l(String str, long j2, String str2) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 14);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j2);
        intent.putExtra("market_app_id", str2);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    public static void hp(String str, com.byazt.zv.hp hpVar) {
        Intent intentJx = jx(hpVar);
        intentJx.addFlags(C.ENCODING_PCM_MU_LAW);
        intentJx.putExtra("type", 2);
        intentJx.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intentJx);
        }
    }

    public static void hp(com.byazt.zv.hp hpVar) {
        Intent intentJx = jx(hpVar);
        intentJx.addFlags(C.ENCODING_PCM_MU_LAW);
        intentJx.putExtra("type", 4);
        intentJx.putExtra("model_id", hpVar.l());
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intentJx);
        }
    }

    public static void l(@NonNull com.byazt.zv.hp hpVar) {
        hp(hpVar, 5, "", "", "", "");
    }

    public static void l(@NonNull com.byazt.zv.hp hpVar, String str, String str2, String str3) {
        hp(hpVar, 7, str, str2, str3, "");
    }

    public static void l(@NonNull com.byazt.zv.hp hpVar, String str, String str2, String str3, String str4) {
        hp(hpVar, 20, str, str2, str3, str4);
    }

    private void l() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    public static void hp(com.byazt.zv.hp hpVar, hp hpVar2) {
        Intent intentJx = jx(hpVar);
        intentJx.addFlags(C.ENCODING_PCM_MU_LAW);
        intentJx.putExtra("type", 9);
        f45507j = hpVar2;
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intentJx);
        }
    }

    private void l(final String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            n nVar = new n() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.1
                public WeakReference<Activity> jx;

                {
                    this.jx = new WeakReference<>(TTDelegateActivity.this);
                }

                @Override // com.byazt.b.n
                public void hp() {
                    com.byazt.y.e.hp(str);
                    jx.hp(this.jx.get());
                }

                @Override // com.byazt.b.n
                public void hp(String str2) {
                    com.byazt.y.e.hp(str, str2);
                    jx.hp(this.jx.get());
                }
            };
            try {
                jl.w().hp(this, strArr, nVar);
                return;
            } catch (Exception e2) {
                jl.sz().hp(e2, "requestPermission");
                nVar.hp();
                return;
            }
        }
        jx.hp((Activity) this);
    }

    public static void hp(long j2) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 10);
        intent.putExtra("app_info_id", j2);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    private void l(String str) {
        Intent intentEb = zy.eb(this, str);
        if (intentEb == null) {
            return;
        }
        try {
            intentEb.addFlags(C.ENCODING_PCM_MU_LAW);
            intentEb.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            startActivity(intentEb);
        } catch (Exception unused) {
        } finally {
            jx.hp((Activity) this);
        }
    }

    public static void hp(String str, long j2, String str2, @NonNull JSONObject jSONObject) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 12);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j2);
        intent.putExtra("param", str2);
        intent.putExtra("ext_json", jSONObject.toString());
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    private void l(long j2) throws JSONException {
        final l lVarJ = a.hp().j(j2);
        if (lVarJ == null) {
            com.byazt.u.jx.hp().hp("showOpenAppDialogInner nativeModel null");
            jx.hp((Activity) this);
        } else {
            jl.jx().l(new l.hp(this).hp("已安装完成").l(String.format("%1$s已安装完成，是否立即打开？", TextUtils.isEmpty(lVarJ.kg()) ? "刚刚下载的应用" : lVarJ.kg())).jx("打开").j("取消").hp(false).hp(zy.j(this, lVarJ.w())).hp(new l.InterfaceC0391l() { // from class: com.ss.android.downloadlib.activity.TTDelegateActivity.2
                @Override // com.byazt.v.l.InterfaceC0391l
                public void hp(DialogInterface dialogInterface) {
                    com.byazt.j.hp.l(lVarJ);
                    TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                    if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                        dialogInterface.dismiss();
                    }
                    jx.hp((Activity) TTDelegateActivity.this);
                }

                @Override // com.byazt.v.l.InterfaceC0391l
                public void jx(DialogInterface dialogInterface) {
                    jx.hp((Activity) TTDelegateActivity.this);
                }

                @Override // com.byazt.v.l.InterfaceC0391l
                public void l(DialogInterface dialogInterface) {
                    com.byazt.r.hp.hp().l("market_openapp_cancel", lVarJ);
                    TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                    if (tTDelegateActivity != null && !tTDelegateActivity.isFinishing()) {
                        dialogInterface.dismiss();
                    }
                    jx.hp((Activity) TTDelegateActivity.this);
                }
            }).hp(2).hp());
            com.byazt.r.hp.hp().l("market_openapp_window_show", lVarJ);
        }
    }

    public static void hp(String str, long j2, String str2) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 13);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j2);
        intent.putExtra(BaseConstants.VIVO_MARKET_NEED_COMMENT, str2);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    public static void hp(String str, long j2) {
        Intent intent = new Intent(jl.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 15);
        intent.putExtra("package_name", str);
        intent.putExtra("model_id", j2);
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intent);
        }
    }

    private void jx(long j2) {
        new com.byazt.i.hp(this, j2).show();
    }

    public static void hp(@NonNull com.byazt.zv.hp hpVar, String str) {
        hp(hpVar, 19, "", "", "", str);
    }

    public static void hp(@NonNull com.byazt.zv.hp hpVar, String str, String str2, String str3) {
        hp(hpVar, 8, str, str2, str3, "");
    }

    public static void hp(@NonNull com.byazt.zv.hp hpVar, String str, String str2, String str3, String str4) {
        hp(hpVar, 21, str, str2, str3, str4);
    }

    private static void hp(@NonNull com.byazt.zv.hp hpVar, int i2, String str, String str2, String str3, String str4) {
        Intent intentJx = jx(hpVar);
        intentJx.addFlags(C.ENCODING_PCM_MU_LAW);
        intentJx.putExtra("type", i2);
        if (!TextUtils.isEmpty(str2)) {
            intentJx.putExtra("positive_button_text", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            intentJx.putExtra("negative_button_text", str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            intentJx.putExtra("delete_button_text", str4);
        }
        if (!TextUtils.isEmpty(str)) {
            intentJx.putExtra("message_text", str);
        }
        intentJx.putExtra("model_id", hpVar.l());
        if (jl.getContext() != null) {
            jl.getContext().startActivity(intentJx);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void hp() throws JSONException {
        TTDelegateActivity tTDelegateActivity;
        Intent intent = this.hp;
        if (intent != null) {
            switch (intent.getIntExtra("type", 0)) {
                case 1:
                    tTDelegateActivity = this;
                    l(tTDelegateActivity.hp.getStringExtra("permission_id_key"), tTDelegateActivity.hp.getStringArrayExtra("permission_content_key"));
                    break;
                case 2:
                    tTDelegateActivity = this;
                    hp(tTDelegateActivity.hp.getStringExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL));
                    break;
                case 3:
                case 6:
                case 17:
                case 18:
                default:
                    tTDelegateActivity = this;
                    jx.hp((Activity) this);
                    break;
                case 4:
                    tTDelegateActivity = this;
                    l(tTDelegateActivity.hp.getLongExtra("model_id", 0L));
                    break;
                case 5:
                    tTDelegateActivity = this;
                    hp(tTDelegateActivity.hp.getLongExtra("model_id", 0L), "");
                    break;
                case 7:
                case 8:
                case 20:
                case 21:
                    tTDelegateActivity = this;
                    jx();
                    break;
                case 9:
                    tTDelegateActivity = this;
                    hp hpVar = f45507j;
                    if (hpVar != null) {
                        hpVar.hp();
                    }
                    jx.hp((Activity) this);
                    break;
                case 10:
                    tTDelegateActivity = this;
                    jx(tTDelegateActivity.hp.getLongExtra("app_info_id", 0L));
                    break;
                case 11:
                    tTDelegateActivity = this;
                    l(tTDelegateActivity.hp.getStringExtra("package_name"));
                    break;
                case 12:
                    tTDelegateActivity = this;
                    s.hp(tTDelegateActivity, this.hp.getStringExtra("package_name"), this.hp.getLongExtra("model_id", 0L), this.hp.getStringExtra("param"), this.hp.getStringExtra("ext_json"));
                    jx.hp((Activity) this);
                    break;
                case 13:
                    s.hp(this, this.hp.getStringExtra("package_name"), this.hp.getLongExtra("model_id", 0L), this.hp.getStringExtra(BaseConstants.VIVO_MARKET_NEED_COMMENT));
                    tTDelegateActivity = this;
                    jx.hp((Activity) this);
                    break;
                case 14:
                    s.l(this, this.hp.getStringExtra("package_name"), this.hp.getLongExtra("model_id", 0L), this.hp.getStringExtra("market_app_id"));
                    tTDelegateActivity = this;
                    jx.hp((Activity) this);
                    break;
                case 15:
                    s.hp((Activity) this, this.hp.getStringExtra("package_name"), this.hp.getLongExtra("model_id", 0L));
                    tTDelegateActivity = this;
                    jx.hp((Activity) this);
                    break;
                case 16:
                    s.hp((Context) this, this.hp.getStringExtra("package_name"), this.hp.getLongExtra("model_id", 0L));
                    tTDelegateActivity = this;
                    jx.hp((Activity) this);
                    break;
                case 19:
                    hp(this.hp.getLongExtra("model_id", 0L), this.hp.getStringExtra("delete_button_text"));
                    tTDelegateActivity = this;
                    break;
            }
            tTDelegateActivity.hp = null;
        }
    }

    private void hp(long j2, String str) throws JSONException {
        if (v.hp() == null) {
            return;
        }
        com.byazt.zv.l lVarJ = a.hp().j(j2);
        if (lVarJ != null) {
            DownloadInfo downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVarJ.ec());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("time_after_click", Long.valueOf(System.currentTimeMillis() - lVarJ.nd()));
                jSONObject.putOpt("click_download_size", Long.valueOf(lVarJ.hd()));
                if (downloadInfo != null) {
                    jSONObject.putOpt("download_length", Long.valueOf(downloadInfo.getCurBytes()));
                    jSONObject.putOpt("download_percent", Long.valueOf(downloadInfo.getCurBytes() / downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_apk_size", Long.valueOf(downloadInfo.getTotalBytes()));
                    jSONObject.putOpt("download_current_bytes", Integer.valueOf((int) (downloadInfo.getCurBytes() / 1048576)));
                    jSONObject.putOpt("download_total_bytes", Integer.valueOf((int) (downloadInfo.getTotalBytes() / 1048576)));
                }
            } catch (Exception unused) {
            }
            if (!TextUtils.isEmpty(str)) {
                com.byazt.r.hp.hp().hp("cancel_pause_reserve_wifi_dialog_show", jSONObject, lVarJ);
            } else {
                com.byazt.r.hp.hp().l("pause_reserve_wifi_dialog_show", jSONObject, lVarJ);
            }
        }
        w.hp hpVarHp = new w.hp(this).hp(false).hp(v.hp());
        if (!TextUtils.isEmpty(str)) {
            hpVarHp.j(str).hp(v.l());
        }
        hpVarHp.hp().show();
        this.f45508l = true;
        this.jx = lVarJ;
    }

    private void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            jx.hp((Activity) this);
            return;
        }
        try {
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (com.byazt.jb.hp.jx().hp("fix_app_link_flag")) {
                intent.addFlags(67108864);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            startActivity(intent);
            jx.hp((Activity) this);
        } catch (Exception unused) {
            jx.hp((Activity) this);
        } catch (Throwable th) {
            jx.hp((Activity) this);
            throw th;
        }
    }
}
