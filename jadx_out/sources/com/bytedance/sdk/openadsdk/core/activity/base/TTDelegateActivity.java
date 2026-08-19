package com.bytedance.sdk.openadsdk.core.activity.base;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.anythink.core.common.f.g;
import com.byazt.ay.e;
import com.byazt.ay.eb;
import com.byazt.ay.gu;
import com.byazt.ay.j;
import com.byazt.ay.jx;
import com.byazt.ay.l;
import com.byazt.ay.q;
import com.byazt.ay.s;
import com.byazt.ay.u;
import com.byazt.ay.w;
import com.byazt.dy.eb;
import com.byazt.ih.l;
import com.byazt.jz.sz;
import com.byazt.pg.jl;
import com.byazt.po.zy;
import com.byazt.rx.BaseConstants;
import com.byazt.sii.a;
import com.byazt.xci.mp;
import com.byazt.ymw.l;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.function.Function;
import okhttp3.internal.ws.WebSocketProtocol;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTDelegateActivity extends Activity {
    public static mp hp;

    /* renamed from: u, reason: collision with root package name */
    private static eb f28899u;
    private static String vv;
    private static String xs;

    /* renamed from: a, reason: collision with root package name */
    private j f28900a;

    /* renamed from: e, reason: collision with root package name */
    private Activity f28901e;
    private w eb;
    private jx gu;

    /* renamed from: j, reason: collision with root package name */
    private l f28902j;
    private com.byazt.ay.l jl;
    private AlertDialog jx;

    /* renamed from: k, reason: collision with root package name */
    private q f28903k;

    /* renamed from: l, reason: collision with root package name */
    private Intent f28904l;

    /* renamed from: q, reason: collision with root package name */
    private s f28905q;

    /* renamed from: s, reason: collision with root package name */
    private Dialog f28906s;

    /* renamed from: v, reason: collision with root package name */
    private u f28907v;

    /* renamed from: w, reason: collision with root package name */
    private e f28908w;
    private gu zy;

    @com.byazt.kj.hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_UNRELIABLE, MediaPlayer.MEDIA_PLAYER_OPTION_DEC_CREATE_TIME, 1094})
    public static class hp extends com.byazt.uid.eb {
        public hp(String str) {
            super(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            com.byazt.po.j jVarJ = zy.j();
            if (jVarJ != null) {
                Function<SparseArray<Object>, Object> functionXh = com.byazt.jz.s.u().xh();
                if (functionXh != null) {
                    jVarJ.hp(com.byazt.wi.jx.l(functionXh).booleanValue(1));
                }
                ((jl) com.byazt.ym.j.getService("device_info_new")).getImsi(null);
            }
        }
    }

    private void a() {
        ApplicationInfo applicationInfo;
        int i2 = Build.VERSION.SDK_INT;
        try {
            com.byazt.jt.j jVarSz = com.byazt.jz.s.u().sz();
            boolean zIsCanUsePhoneState = jVarSz.isCanUsePhoneState();
            boolean zIsCanUseWriteExternal = jVarSz.isCanUseWriteExternal();
            ArrayList arrayList = new ArrayList();
            com.byazt.tn.l.hp(jVarSz, arrayList);
            if (zIsCanUsePhoneState) {
                arrayList.add("android.permission.READ_PHONE_STATE");
            }
            Context context = sz.getContext();
            if (context != null && (applicationInfo = context.getApplicationInfo()) != null) {
                if (applicationInfo.targetSdkVersion >= 33 && i2 >= 33) {
                    arrayList.add("android.permission.POST_NOTIFICATIONS");
                } else if (zIsCanUseWriteExternal) {
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            com.byazt.sii.w.hp().hp(this.f28901e, strArr, new a() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.14
                @Override // com.byazt.sii.a
                public void hp() {
                    com.byazt.uid.w.hp(new hp("checkNecessaryPermission"), 1);
                    TTDelegateActivity.this.finish();
                }

                @Override // com.byazt.sii.a
                public void hp(String str) {
                    "android.permission.READ_PHONE_STATE".equals(str);
                    com.byazt.uid.w.hp(new hp("checkNecessaryPermission"), 1);
                    TTDelegateActivity.this.finish();
                }
            });
        } catch (Exception unused) {
            finish();
        }
    }

    private void w() {
        try {
            Intent intent = this.f28904l;
            if (intent != null) {
                int intExtra = intent.getIntExtra("type", 0);
                String stringExtra = this.f28904l.getStringExtra("app_download_url");
                this.f28904l.getStringExtra("app_name");
                try {
                    try {
                        switch (intExtra) {
                            case 1:
                                break;
                            case 2:
                                a();
                                break;
                            case 3:
                                jx(stringExtra, this.f28904l.getStringExtra("dialog_title"), this.f28904l.getStringExtra("dialog_content_key"));
                                break;
                            case 4:
                                l(this.f28904l.getStringExtra("permission_id_key"), this.f28904l.getStringArrayExtra("permission_content_key"));
                                break;
                            case 5:
                                l(stringExtra, this.f28904l.getStringExtra("dialog_title"), this.f28904l.getStringExtra("dialog_content_key"), this.f28904l.getStringExtra("dialog_btn_yes_key"), this.f28904l.getStringExtra("dialog_btn_no_key"));
                                break;
                            case 6:
                                w(this.f28904l.getStringExtra("materialmeta"));
                                break;
                            case 7:
                                jx(stringExtra);
                                break;
                            case 8:
                                hp(this.f28904l.getStringExtra("dialog_app_manage_model"), stringExtra);
                                break;
                            case 9:
                                jx(this.f28904l.getStringExtra("dialog_app_privacy_url"), stringExtra);
                                break;
                            case 10:
                                l(this.f28904l.getStringExtra("dialog_content_key"));
                                break;
                            case 11:
                                j(this.f28904l.getStringExtra("dialog_app_ad_info"));
                                break;
                            case 12:
                                l(this.f28904l.getStringExtra("web_url"), this.f28904l.getStringExtra("web_title"));
                                break;
                            case 13:
                                l();
                                break;
                            case 14:
                                hp(this.f28904l.getStringExtra("dialog_app_desc_url"), stringExtra, 1, true, (Dialog) null);
                                break;
                            case 15:
                                hp(this.f28904l.getStringExtra("web_url"));
                                break;
                            case 16:
                                hp(this.f28904l.getStringExtra("dialog_app_registration_url"), stringExtra, 3, true, (Dialog) null);
                                break;
                            default:
                                finish();
                                break;
                        }
                    } catch (Exception unused) {
                        finish();
                    }
                } catch (Exception unused2) {
                    finish();
                }
            }
        } catch (Exception unused3) {
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        jx jxVar = this.gu;
        if (jxVar == null || jxVar.isShowing()) {
            return;
        }
        this.gu.hp();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f28901e = this;
        j();
        this.f28904l = getIntent();
        if (sz.getContext() == null) {
            sz.hp(this.f28901e);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        try {
            hp = null;
            AlertDialog alertDialog = this.jx;
            if (alertDialog != null && alertDialog.isShowing()) {
                this.jx.dismiss();
            }
            s sVar = this.f28905q;
            if (sVar == null || !sVar.isShowing()) {
                com.byazt.zn.w.hp(xs);
            } else {
                com.byazt.zn.w.hp(this.f28905q.hp());
                if (this.f28905q.isShowing()) {
                    this.f28905q.dismiss();
                }
            }
            j jVar = this.f28900a;
            if (jVar != null && jVar.isShowing()) {
                this.f28900a.dismiss();
            }
            jx jxVar = this.gu;
            if (jxVar != null) {
                if (jxVar.isShowing()) {
                    this.gu.dismiss();
                }
                com.byazt.zn.w.hp(this.gu.j());
            } else {
                com.byazt.zn.w.hp(vv);
            }
            com.byazt.ay.l lVar = this.jl;
            if (lVar != null && lVar.isShowing()) {
                this.jl.dismiss();
            }
            w wVar = this.eb;
            if (wVar != null && wVar.isShowing()) {
                this.eb.dismiss();
            }
            gu guVar = this.zy;
            if (guVar != null && guVar.isShowing()) {
                this.zy.dismiss();
            }
            Dialog dialog = this.f28906s;
            if (dialog != null && dialog.isShowing()) {
                this.f28906s.dismiss();
            }
            xs = null;
            vv = null;
        } catch (Throwable th) {
            com.byazt.ymw.u.hp("dialog", "onDestroy", th);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (sz.getContext() == null) {
            sz.hp(this.f28901e);
        }
        try {
            setIntent(intent);
            this.f28904l = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        s sVar = this.f28905q;
        if (sVar != null) {
            xs = sVar.hp();
        }
        jx jxVar = this.gu;
        if (jxVar != null) {
            vv = jxVar.j();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        com.byazt.sii.w.hp().hp(this.f28901e, strArr, iArr);
        com.byazt.uid.w.hp(new hp("onRequestPermissionsResult"), 1);
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent() != null) {
            w();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        jx();
    }

    public static void j(Context context, String str, String str2) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 12);
        intentHp.putExtra("web_url", str);
        intentHp.putExtra("web_title", str2);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void jx(Context context, String str, String str2) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 14);
        intentHp.putExtra("dialog_app_desc_url", str2);
        intentHp.putExtra("app_download_url", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void l(Context context, String str, String str2) {
        if (context == null) {
            context = sz.getContext();
        }
        com.byazt.xci.a aVarHp = com.byazt.fy.s.hp(str2);
        if (aVarHp == null) {
            return;
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 9);
        intentHp.putExtra("dialog_app_privacy_url", aVarHp.s());
        intentHp.putExtra("app_download_url", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(String str, String[] strArr) {
        Intent intent = new Intent(sz.getContext(), (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 4);
        intent.putExtra("permission_id_key", str);
        intent.putExtra("permission_content_key", strArr);
        if (sz.getContext() != null) {
            com.byazt.ymw.l.hp(sz.getContext(), intent, new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.1
                @Override // com.byazt.ymw.l.hp
                public void hp() {
                }

                @Override // com.byazt.ymw.l.hp
                public void hp(Throwable th) {
                    com.byazt.ymw.u.hp("requestPermission->startActivity error :" + th.toString());
                }
            });
        }
    }

    private void j() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void jx() {
        if (com.byazt.jz.s.u().vq()) {
            if (this.gu == null && this.f28905q == null && this.zy == null) {
                return;
            }
            com.byazt.jz.s.u().e(false);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        com.byazt.jdb.j.hp(str, "click_other", str3, str2, new com.byazt.dhy.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.12
            @Override // com.byazt.dhy.hp
            public void onSend(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("refer", "reg");
                jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2);
            }
        });
    }

    public static void l(Context context, String str) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 11);
        intentHp.putExtra("dialog_app_ad_info", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    private void j(String str) {
        try {
            if (xh.q(this.f28901e)) {
                gu guVar = this.zy;
                if (guVar != null) {
                    guVar.dismiss();
                }
                gu guVar2 = new gu(this.f28901e, str);
                this.zy = guVar2;
                guVar2.hp(new gu.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.4
                    @Override // com.byazt.ay.gu.hp
                    public void hp(Dialog dialog) {
                        TTDelegateActivity.this.finish();
                    }
                });
                this.zy.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void jx(final String str) {
        JSONArray jSONArray;
        String str2;
        String str3;
        String str4;
        float f2;
        boolean z2;
        String str5;
        String str6;
        String strGu;
        String str7;
        String str8;
        float fJx;
        String str9;
        boolean z3;
        Intent intent = this.f28904l;
        if (intent == null) {
            return;
        }
        final String stringExtra = intent.getStringExtra("event_extInfo");
        final String stringExtra2 = this.f28904l.getStringExtra("event_adId");
        final String stringExtra3 = this.f28904l.getStringExtra("event_TAG");
        String stringExtra4 = this.f28904l.getStringExtra("dialog_app_manage_model");
        String stringExtra5 = this.f28904l.getStringExtra("dialog_title");
        final String stringExtra6 = this.f28904l.getStringExtra("dialog_icon_url");
        final String stringExtra7 = this.f28904l.getStringExtra("dialog_app_description");
        boolean booleanExtra = this.f28904l.getBooleanExtra("is_easy_dl_dialog_pop_up_style", false);
        try {
            JSONArray jSONArray2 = null;
            String str10 = "";
            if (TextUtils.isEmpty(stringExtra4)) {
                jSONArray = null;
                str2 = "";
                str3 = str2;
                str4 = str3;
                f2 = 0.0f;
                z2 = false;
                str5 = null;
                str6 = str4;
            } else {
                JSONObject jSONObject = new JSONObject(stringExtra4);
                com.byazt.xci.a aVarHp = com.byazt.fy.s.hp(stringExtra4);
                if (aVarHp != null) {
                    String strW = aVarHp.w();
                    String strEb = aVarHp.eb();
                    String strE = aVarHp.e();
                    String strK = aVarHp.k();
                    if (!TextUtils.isEmpty(strK)) {
                        stringExtra5 = strK;
                    }
                    JSONArray jSONArrayJ = aVarHp.j();
                    fJx = aVarHp.jx();
                    strGu = aVarHp.gu();
                    str10 = stringExtra5;
                    str7 = strW;
                    str9 = strEb;
                    jSONArray2 = jSONArrayJ;
                    str8 = strE;
                } else {
                    strGu = null;
                    str7 = "";
                    str8 = str7;
                    fJx = 0.0f;
                    str9 = str8;
                }
                String strOptString = jSONObject.optString("ugen_url");
                String strOptString2 = jSONObject.optString("ugen_md5");
                if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
                    z3 = false;
                } else {
                    jSONObject.put("app_name", str10);
                    jSONObject.put(g.a.f3279p, stringExtra6);
                    jSONObject.put("description", stringExtra7);
                    stringExtra4 = jSONObject.toString();
                    z3 = true;
                }
                String strOptString3 = jSONObject.optString("hand_icon_url");
                float f3 = fJx;
                str4 = strOptString3;
                f2 = f3;
                z2 = z3;
                jSONArray = jSONArray2;
                str2 = str10;
                str10 = str9;
                str5 = strGu;
                str3 = str8;
                str6 = str7;
            }
            final String str11 = stringExtra4;
            if (booleanExtra) {
                hp(str, str11, stringExtra6, stringExtra7, str6, str10, str2, jSONArray, f2, str3, str5, stringExtra, stringExtra3, stringExtra2);
                return;
            }
            final String str12 = str6;
            final JSONArray jSONArray3 = jSONArray;
            final String str13 = str10;
            final String str14 = str3;
            final String str15 = str5;
            final float f4 = f2;
            if (z2) {
                final String str16 = str2;
                final String str17 = str4;
                hp(str, str11, new eb() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.18
                    @Override // com.byazt.dy.eb
                    public void hp(int i2, String str18) {
                        TTDelegateActivity.this.hp(str, str11, stringExtra6, f4, stringExtra7, str17, jSONArray3, str12, str13, str16, str14, str15, stringExtra2, stringExtra3, stringExtra);
                        if (TTDelegateActivity.this.f28905q != null) {
                            TTDelegateActivity.this.f28905q.hp((eb) null);
                        }
                        if (TTDelegateActivity.f28899u != null) {
                            TTDelegateActivity.f28899u.hp(i2, str18);
                        }
                    }

                    @Override // com.byazt.dy.eb
                    public void hp(com.byazt.xs.jx<View> jxVar) {
                        if (TTDelegateActivity.f28899u != null) {
                            TTDelegateActivity.f28899u.hp(null);
                        }
                    }
                }, stringExtra2, stringExtra3, stringExtra);
            } else {
                hp(str, str11, stringExtra6, f4, stringExtra7, str4, jSONArray3, str12, str13, str2, str14, str15, stringExtra2, stringExtra3, stringExtra);
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(Context context, String str, String str2, String str3) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 3);
        intentHp.putExtra("app_download_url", str);
        intentHp.putExtra("dialog_title", str2);
        intentHp.putExtra("dialog_content_key", str3);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    private void l() {
        try {
            if (this.f28903k == null) {
                this.f28903k = new q(this.f28901e, getIntent());
            }
            if (this.f28903k.isShowing()) {
                this.f28903k.dismiss();
            }
            this.f28903k.hp(new q.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.15
                @Override // com.byazt.ay.q.hp
                public void hp(Dialog dialog) {
                    TTDelegateActivity.this.finish();
                }
            });
            this.f28903k.show();
        } catch (Throwable unused) {
        }
    }

    private static Intent hp(Context context) {
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        return intent;
    }

    private void l(String str) {
        try {
            if (xh.q(this.f28901e)) {
                Dialog dialog = this.f28906s;
                if (dialog == null || !dialog.isShowing()) {
                    com.byazt.ay.hp hpVar = new com.byazt.ay.hp(this.f28901e, str);
                    this.f28906s = hpVar;
                    hpVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.17
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            TTDelegateActivity.this.finish();
                        }
                    });
                    this.f28906s.show();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(eb ebVar) {
        f28899u = ebVar;
    }

    public static void hp(Context context, String str, String str2, String str3, eb ebVar, mp mpVar) {
        try {
            hp = mpVar;
            f28899u = ebVar;
            if (context == null) {
                context = sz.getContext();
            }
            Intent intentHp = hp(context);
            JSONObject jSONObject = new JSONObject(str3);
            intentHp.putExtra("type", 7);
            intentHp.putExtra("app_download_url", str);
            intentHp.putExtra("dialog_app_manage_model", str2);
            if (mpVar != null) {
                intentHp.putExtra("event_adId", mpVar.j());
                intentHp.putExtra("event_extInfo", mpVar.w_());
                intentHp.putExtra("event_TAG", ky.l(mpVar));
            }
            intentHp.putExtra("dialog_title", jSONObject.optString("dialog_title"));
            intentHp.putExtra("dialog_icon_url", jSONObject.optString("dialog_icon_url"));
            intentHp.putExtra("dialog_app_description", jSONObject.optString("dialog_app_description"));
            intentHp.putExtra("is_easy_dl_dialog_pop_up_style", jSONObject.optBoolean("is_easy_dl_dialog_pop_up_style"));
            com.byazt.ymw.l.hp(context, intentHp, null);
        } catch (Exception unused) {
        }
    }

    private void l(String str, String str2) {
        try {
            if (xh.q(this.f28901e)) {
                j jVar = this.f28900a;
                if (jVar != null) {
                    jVar.dismiss();
                }
                j jVar2 = new j(this.f28901e, str, str2);
                this.f28900a = jVar2;
                jVar2.hp(new j.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.2
                    @Override // com.byazt.ay.j.hp
                    public void hp(Dialog dialog) {
                        if (TTDelegateActivity.this.f28900a != null) {
                            TTDelegateActivity.this.f28900a.dismiss();
                            TTDelegateActivity.this.finish();
                        }
                    }
                });
                this.f28900a.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void l(final String str, String str2, String str3, String str4, String str5) {
        if (xh.q(this.f28901e)) {
            AlertDialog alertDialog = this.jx;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            if (this.f28908w == null) {
                this.f28908w = new e(this.f28901e).hp(str2).l(str3).jx(str4).j(str5).hp(new e.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.8
                    @Override // com.byazt.ay.e.hp
                    public void hp(Dialog dialog) {
                        com.byazt.zn.w.l(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.ay.e.hp
                    public void l(Dialog dialog) {
                        com.byazt.zn.w.jx(str);
                        TTDelegateActivity.this.finish();
                    }
                }).hp(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.7
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        com.byazt.zn.w.j(str);
                        TTDelegateActivity.this.finish();
                    }
                });
            }
            if (!this.f28908w.isShowing()) {
                this.f28908w.show();
            }
            this.jx = this.f28908w;
        }
    }

    private void w(String str) {
        if (xh.q(this.f28901e)) {
            if (str != null && this.f28902j == null) {
                try {
                    mp mpVarHp = com.byazt.jz.hp.hp(new JSONObject(str));
                    if (mpVarHp != null) {
                        com.byazt.ih.l lVar = new com.byazt.ih.l(this.f28901e, mpVarHp.ju(), false, com.byazt.ws.l.hp());
                        this.f28902j = lVar;
                        com.byazt.jde.jx.hp(this.f28901e, mpVarHp, lVar);
                        this.f28902j.setDislikeInteractionCallback(new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.6
                            @Override // com.byazt.ih.l.hp
                            public void hp() {
                            }

                            @Override // com.byazt.ih.l.hp
                            public void l() {
                                TTDelegateActivity.this.finish();
                            }

                            @Override // com.byazt.ih.l.hp
                            public void hp(int i2, String str2, boolean z2) {
                                TTDelegateActivity.this.finish();
                            }
                        });
                    }
                } catch (JSONException unused) {
                }
            }
            com.byazt.ih.l lVar2 = this.f28902j;
            if (lVar2 != null) {
                lVar2.showDislikeDialog();
            }
        }
    }

    public static void hp(Context context, String str, String str2, String str3, mp mpVar) {
        if (context == null) {
            try {
                context = sz.getContext();
            } catch (Exception unused) {
                return;
            }
        }
        Intent intentHp = hp(context);
        JSONObject jSONObject = new JSONObject(str3);
        intentHp.putExtra("type", 7);
        intentHp.putExtra("app_download_url", str);
        intentHp.putExtra("dialog_app_manage_model", str2);
        if (mpVar != null) {
            intentHp.putExtra("event_adId", mpVar.j());
            intentHp.putExtra("event_extInfo", mpVar.w_());
            intentHp.putExtra("event_TAG", ky.l(mpVar));
        }
        intentHp.putExtra("dialog_title", jSONObject.optString("dialog_title"));
        intentHp.putExtra("dialog_icon_url", jSONObject.optString("dialog_icon_url"));
        intentHp.putExtra("dialog_app_description", jSONObject.optString("dialog_app_description"));
        intentHp.putExtra("is_easy_dl_dialog_pop_up_style", jSONObject.optBoolean("is_easy_dl_dialog_pop_up_style"));
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    private void jx(String str, String str2) {
        if (this.f28904l == null) {
            return;
        }
        hp(str, str2, 2, true, (Dialog) null);
    }

    private void jx(final String str, String str2, String str3) {
        if (xh.q(this.f28901e)) {
            if (TextUtils.isEmpty(str2)) {
                str2 = "提示";
            }
            String str4 = str2;
            if (TextUtils.isEmpty(str3)) {
                str3 = "";
            }
            hp(str4, str3, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    com.byazt.zn.w.l(str);
                    TTDelegateActivity.this.finish();
                }
            }, new DialogInterface.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.11
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    com.byazt.zn.w.jx(str);
                    TTDelegateActivity.this.finish();
                }
            }, new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.13
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    com.byazt.zn.w.j(str);
                    TTDelegateActivity.this.finish();
                }
            });
        }
    }

    private void l(final String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            try {
                com.byazt.sii.w.hp().hp(this.f28901e, strArr, new a() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.9
                    @Override // com.byazt.sii.a
                    public void hp() {
                        com.byazt.zn.a.hp(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.sii.a
                    public void hp(String str2) {
                        com.byazt.zn.a.hp(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
                finish();
                return;
            }
        }
        finish();
    }

    public static void hp(Context context, String str, String str2) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 8);
        intentHp.putExtra("app_download_url", str);
        intentHp.putExtra("dialog_app_manage_model", str2);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(Context context, String str) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 10);
        intentHp.putExtra("dialog_content_key", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(Context context, String str, String str2, mp mpVar) {
        if (context == null) {
            context = sz.getContext();
        }
        com.byazt.xci.a aVarHp = com.byazt.fy.s.hp(str2);
        if (aVarHp == null) {
            return;
        }
        if (mpVar != null) {
            l(ky.l(mpVar), mpVar.w_(), mpVar.j());
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 16);
        intentHp.putExtra("dialog_app_registration_url", aVarHp.gu());
        intentHp.putExtra("app_download_url", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(Context context, String str, String str2, String str3, String str4, String str5) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 5);
        intentHp.putExtra("app_download_url", str);
        intentHp.putExtra("dialog_title", str2);
        intentHp.putExtra("dialog_content_key", str3);
        intentHp.putExtra("dialog_btn_yes_key", str4);
        intentHp.putExtra("dialog_btn_no_key", str5);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(Context context, mp mpVar) {
        JSONObject jSONObjectIj;
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 6);
        if (mpVar != null && (jSONObjectIj = mpVar.ij()) != null) {
            intentHp.putExtra("materialmeta", jSONObjectIj.toString());
        }
        if (context != null) {
            try {
                context.startActivity(intentHp);
            } catch (Throwable unused) {
            }
        }
    }

    public void hp(String str) {
        if (this.f28907v == null) {
            this.f28907v = new u(this.f28901e, str);
        }
        if (this.f28907v.isShowing()) {
            this.f28907v.dismiss();
        }
        this.f28907v.hp(new u.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.16
            @Override // com.byazt.ay.u.hp
            public void hp(String str2) {
                com.byazt.zn.w.l(str2);
                TTDelegateActivity.this.finish();
            }

            @Override // com.byazt.ay.u.hp
            public void l(String str2) {
                com.byazt.zn.w.j(str2);
                TTDelegateActivity.this.finish();
            }
        });
        this.f28907v.show();
    }

    public static void hp(Context context, String str, boolean z2) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 15);
        if (!z2) {
            intentHp.putExtra("web_url", str);
        }
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    public static void hp(Context context, String str, mp mpVar) {
        if (context == null) {
            context = sz.getContext();
        }
        Intent intentHp = hp(context);
        intentHp.putExtra("type", 13);
        hp = mpVar;
        intentHp.putExtra("event_tag", str);
        com.byazt.ymw.l.hp(context, intentHp, null);
    }

    private void hp(String str, String str2, eb ebVar, String str3, String str4, String str5) {
        if (xh.q(this.f28901e)) {
            if (TextUtils.isEmpty(str2)) {
                ebVar.hp(7, "uegnData is empty");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str2);
                jx jxVar = this.gu;
                if (jxVar == null || !jxVar.isShowing()) {
                    jx jxVarQ = new com.byazt.ay.zy(this.f28901e, jSONObject, ebVar).q(str);
                    this.gu = jxVarQ;
                    try {
                        ((com.byazt.ay.zy) jxVarQ).l(hp(str, str2, str3, str4, str5));
                        this.gu.show();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
            }
        }
    }

    private void hp(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final String str7, final JSONArray jSONArray, final float f2, final String str8, final String str9, final String str10, final String str11, final String str12) throws JSONException {
        hp(str, str2, str7, f2, new eb() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.19
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str13) {
                TTDelegateActivity.this.hp(str, str2, str3, f2, str4, "", jSONArray, str5, str6, str7, str8, str9, str12, str11, str10);
                if (TTDelegateActivity.this.f28905q != null) {
                    TTDelegateActivity.this.f28905q.hp((eb) null);
                }
                if (TTDelegateActivity.f28899u != null) {
                    TTDelegateActivity.f28899u.hp(i2, str13);
                }
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) {
                if (TTDelegateActivity.f28899u != null) {
                    TTDelegateActivity.f28899u.hp(null);
                }
            }
        }, str10, str11, str12);
    }

    private void hp(final String str, final String str2, String str3, float f2, eb ebVar, final String str4, final String str5, final String str6) throws JSONException {
        if (xh.q(this.f28901e)) {
            if (TextUtils.isEmpty(str2)) {
                ebVar.hp(7, "uegnData is empty");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str2);
                if (!TextUtils.isEmpty(str3)) {
                    jSONObject.put("app_name", str3);
                }
                jSONObject.put("score", f2);
                JSONObject jSONObjectHp = com.byazt.la.e.hp(jSONObject.getString("ugen_dialog_url"), jSONObject.getString("ugen_dialog_md5"), (com.byazt.la.jx) null);
                if (jSONObjectHp == null) {
                    ebVar.hp(8, "uegnTemplate is empty");
                    return;
                }
                s sVar = this.f28905q;
                if (sVar == null || !sVar.isShowing()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("easy_dl_dialog", jSONObject);
                    s sVar2 = new s(str, this.f28901e, jSONObjectHp, jSONObject2, ebVar, hp);
                    this.f28905q = sVar2;
                    sVar2.hp(new eb.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.20
                        public com.byazt.xci.a eb = null;

                        @Override // com.byazt.ay.eb.hp
                        public void hp(Dialog dialog) {
                            com.byazt.zn.w.l(str);
                            TTDelegateActivity.this.finish();
                        }

                        @Override // com.byazt.ay.eb.hp
                        public void j(Dialog dialog) {
                            if (this.eb == null) {
                                this.eb = com.byazt.fy.s.hp(str2);
                            }
                            com.byazt.xci.a aVar = this.eb;
                            if (aVar != null) {
                                TTDelegateActivity.this.hp(aVar.s(), str, 2, false, (Dialog) TTDelegateActivity.this.f28905q);
                            }
                            if (TTDelegateActivity.this.f28905q != null) {
                                TTDelegateActivity.this.f28905q.hide();
                            }
                        }

                        @Override // com.byazt.ay.eb.hp
                        public void jx(Dialog dialog) {
                            com.byazt.zn.w.j(str);
                            TTDelegateActivity.this.finish();
                        }

                        @Override // com.byazt.ay.eb.hp
                        public void l(Dialog dialog) {
                            TTDelegateActivity tTDelegateActivity = TTDelegateActivity.this;
                            tTDelegateActivity.hp(str2, str, false, (Dialog) tTDelegateActivity.f28905q);
                            if (TTDelegateActivity.this.f28905q != null) {
                                TTDelegateActivity.this.f28905q.hide();
                            }
                        }

                        @Override // com.byazt.ay.eb.hp
                        public void hp() {
                            if (this.eb == null) {
                                this.eb = com.byazt.fy.s.hp(str2);
                            }
                            com.byazt.xci.a aVar = this.eb;
                            if (aVar != null) {
                                TTDelegateActivity.this.hp(aVar.q(), str, 1, false, (Dialog) TTDelegateActivity.this.f28905q);
                            }
                            if (TTDelegateActivity.this.f28905q != null) {
                                TTDelegateActivity.this.f28905q.hide();
                            }
                        }
                    });
                    this.f28905q.show();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2, String str3, float f2, String str4, String str5, JSONArray jSONArray, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        if (xh.q(this.f28901e)) {
            jx jxVar = this.gu;
            if (jxVar == null || !jxVar.isShowing()) {
                jx jxVarHp = new jx(this.f28901e).hp(str8).w(str6).a(str9).l(str3).s(str7).q(str).jx(str5).hp(f2).hp(jSONArray).eb(str10).j(str4).hp(hp(str, str2, str11, str12, str13));
                this.gu = jxVarHp;
                jxVarHp.show();
            }
        }
    }

    private jx.hp hp(final String str, final String str2, final String str3, final String str4, final String str5) {
        return new jx.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.21
            public com.byazt.xci.a eb = null;

            @Override // com.byazt.ay.jx.hp
            public void a(Dialog dialog) {
                TTDelegateActivity.l(str4, str5, str3);
                if (this.eb == null) {
                    this.eb = com.byazt.fy.s.hp(str2);
                }
                com.byazt.xci.a aVar = this.eb;
                if (aVar == null) {
                    return;
                }
                TTDelegateActivity.this.hp(aVar.gu(), str, 3, false, (Dialog) null);
            }

            @Override // com.byazt.ay.jx.hp
            public void hp(Dialog dialog) {
                com.byazt.zn.w.l(str);
                TTDelegateActivity.this.finish();
            }

            @Override // com.byazt.ay.jx.hp
            public void j(Dialog dialog) {
                if (this.eb == null) {
                    this.eb = com.byazt.fy.s.hp(str2);
                }
                com.byazt.xci.a aVar = this.eb;
                if (aVar != null) {
                    TTDelegateActivity.this.hp(aVar.s(), str, 2, false, (Dialog) null);
                }
            }

            @Override // com.byazt.ay.jx.hp
            public void jx(Dialog dialog) {
                com.byazt.zn.w.j(str);
                TTDelegateActivity.this.finish();
            }

            @Override // com.byazt.ay.jx.hp
            public void l(Dialog dialog) {
                TTDelegateActivity.this.hp(str2, str, false, (Dialog) null);
            }

            @Override // com.byazt.ay.jx.hp
            public void w(Dialog dialog) {
                if (this.eb == null) {
                    this.eb = com.byazt.fy.s.hp(str2);
                }
                com.byazt.xci.a aVar = this.eb;
                if (aVar == null) {
                    return;
                }
                TTDelegateActivity.this.hp(aVar.q(), str, 1, false, (Dialog) null);
            }
        };
    }

    private void hp(String str, String str2) {
        if (this.f28904l == null) {
            return;
        }
        hp(str, str2, true, (Dialog) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, final String str2, int i2, final boolean z2, final Dialog dialog) {
        String str3;
        String str4;
        try {
            if (xh.q(this.f28901e)) {
                w wVar = this.eb;
                if (wVar != null) {
                    wVar.dismiss();
                }
                if (i2 == 1) {
                    str3 = "https://apps.bytesfield.com/app_package_ce/appIntro";
                    str4 = "应用简介";
                } else if (i2 == 2) {
                    str3 = "https://sf1-amtos-cdn.bytesmanager.com/obj/ad-app-package/personal-privacy-page.html";
                    str4 = "隐私政策";
                } else if (i2 == 3) {
                    str4 = "备案信息";
                    str3 = null;
                } else {
                    str3 = null;
                    str4 = null;
                }
                w wVar2 = new w(this.f28901e, str, str3, str4);
                this.eb = wVar2;
                wVar2.hp(new w.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.3
                    @Override // com.byazt.ay.w.hp
                    public void hp(Dialog dialog2) {
                        com.byazt.zn.w.l(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.ay.w.hp
                    public void jx(Dialog dialog2) {
                        if (TTDelegateActivity.this.eb != null) {
                            if (z2) {
                                com.byazt.zn.w.j(str2);
                                TTDelegateActivity.this.finish();
                            } else {
                                Dialog dialog3 = dialog;
                                if (dialog3 != null) {
                                    dialog3.show();
                                }
                                TTDelegateActivity.this.eb.dismiss();
                            }
                        }
                    }

                    @Override // com.byazt.ay.w.hp
                    public void l(Dialog dialog2) {
                        com.byazt.zn.w.j(str2);
                        TTDelegateActivity.this.finish();
                    }
                });
                this.eb.show();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, final String str2, final boolean z2, final Dialog dialog) {
        try {
            if (xh.q(this.f28901e)) {
                com.byazt.ay.l lVar = this.jl;
                if (lVar != null) {
                    lVar.dismiss();
                }
                com.byazt.ay.l lVar2 = new com.byazt.ay.l(this.f28901e, str);
                this.jl = lVar2;
                lVar2.hp(new l.hp() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity.5
                    @Override // com.byazt.ay.l.hp
                    public void hp(Dialog dialog2) {
                        com.byazt.zn.w.l(str2);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.ay.l.hp
                    public void jx(Dialog dialog2) {
                        if (TTDelegateActivity.this.jl != null) {
                            if (z2) {
                                com.byazt.zn.w.j(str2);
                                TTDelegateActivity.this.finish();
                            } else {
                                Dialog dialog3 = dialog;
                                if (dialog3 != null) {
                                    dialog3.show();
                                }
                                TTDelegateActivity.this.jl.dismiss();
                            }
                        }
                    }

                    @Override // com.byazt.ay.l.hp
                    public void l(Dialog dialog2) {
                        com.byazt.zn.w.j(str2);
                        TTDelegateActivity.this.finish();
                    }
                });
                this.jl.show();
            }
        } catch (Throwable unused) {
        }
    }

    private void hp(String str, String str2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (this.jx == null) {
                this.jx = new AlertDialog.Builder(this.f28901e, R.style.Theme.DeviceDefault.Light.Dialog).create();
            }
            Window window = this.jx.getWindow();
            if (window != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.gravity = 17;
                window.setAttributes(attributes);
            }
            this.jx.setTitle(String.valueOf(str));
            this.jx.setMessage(String.valueOf(str2));
            this.jx.setButton(-1, "确定", onClickListener);
            this.jx.setButton(-2, "取消", onClickListener2);
            this.jx.setOnCancelListener(onCancelListener);
            if (this.jx.isShowing()) {
                return;
            }
            this.jx.show();
        } catch (Exception unused) {
        }
    }
}
