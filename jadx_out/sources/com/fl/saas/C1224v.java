package com.fl.saas;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.fl.saas.adx.base.activity.h5.FLH5Activity;
import com.fl.saas.adx.base.activity.h5.QuickAppHelper;
import com.fl.saas.adx.base.download.DownloadTipDialog;
import com.fl.saas.adx.base.widget.FLCommonDialog;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.fl.saas.v, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1224v {

    /* renamed from: b, reason: collision with root package name */
    private static C1224v f30666b;

    /* renamed from: a, reason: collision with root package name */
    private DownloadTipDialog f30667a;

    /* renamed from: com.fl.saas.v$a */
    public class a implements T {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f30668a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ C1188j f30669b;

        public a(Context context, C1188j c1188j) {
            this.f30668a = context;
            this.f30669b = c1188j;
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            C1224v.this.a(this.f30668a, this.f30669b, str);
        }

        @Override // com.fl.saas.T
        public void b(String str) {
            C1224v.this.a(this.f30668a, this.f30669b, str);
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.debug(exc);
        }
    }

    private C1224v() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public void i(Context context, C1188j c1188j) {
        String str = !TextUtils.isEmpty(c1188j.f30563z0) ? c1188j.f30563z0 : c1188j.f30557x0;
        C1218t.a().a(c1188j, 4);
        C1218t.a().a(context, c1188j, str);
    }

    private void k(Context context, C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30459R0) == null || list.isEmpty()) {
            return;
        }
        if (c1188j.s()) {
            AbstractC1236z.a("click", c1188j);
        }
        Iterator it = c1188j.f30459R0.iterator();
        while (it.hasNext()) {
            C1166c.c().a(true, C1230x.a().a((String) it.next(), c1188j), (T) new a(context, c1188j));
        }
    }

    public void c(final Context context, final C1188j c1188j) {
        if (context == null || c1188j == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(c1188j.f30560y0)) {
                a(context, C1230x.a().a(c1188j.f30557x0, c1188j), c1188j);
                return;
            }
            if (QuickAppHelper.getInstance().enableQuickApp(c1188j.f30511i) || !QuickAppHelper.getInstance().urlIntercept(c1188j.f30560y0)) {
                h(context, c1188j);
            } else if (QuickAppHelper.getInstance().getQuickAppInterceptionType() == 1) {
                new FLCommonDialog(context).setTitle("跳转提示").setContent("想要打开“快应用”\n是否允许").setCanDismiss(false).setCancelName("拒绝").setSubmitName("允许").setOnSubmitListener(new FLCommonDialog.OnSubmitListener() { // from class: com.fl.saas.A2
                    @Override // com.fl.saas.adx.base.widget.FLCommonDialog.OnSubmitListener
                    public final void onClick() {
                        this.f29857a.h(context, c1188j);
                    }
                }).show();
            }
        } catch (Throwable th) {
            c1188j.h2 = 1;
            if (c1188j.i2 != 2) {
                c1188j.i2 = 3;
            }
            C1230x.a().f(c1188j);
            a(context, C1230x.a().a(c1188j.f30557x0, c1188j), c1188j);
            LogcatUtil.debug(th);
        }
    }

    public void d(final Context context, final C1188j c1188j) {
        Activity topActivity;
        if (context == null || c1188j == null) {
            return;
        }
        LogcatUtil.d(context + "--" + c1188j.g2);
        if (!c1188j.g2) {
            i(context, c1188j);
            return;
        }
        try {
            a();
            if (!(context instanceof Activity) || ((Activity) context).isFinishing()) {
                topActivity = DeviceUtil.getTopActivity();
                if (topActivity == null || topActivity.isFinishing()) {
                    topActivity = null;
                }
            } else {
                topActivity = (Activity) context;
            }
            if (topActivity == null) {
                i(context, c1188j);
                return;
            }
            DownloadTipDialog downloadTipDialog = new DownloadTipDialog(topActivity, c1188j, new DownloadTipDialog.OnAgreeClickListener() { // from class: com.fl.saas.z2
                @Override // com.fl.saas.adx.base.download.DownloadTipDialog.OnAgreeClickListener
                public final void onClick() {
                    this.f30728a.i(context, c1188j);
                }
            });
            this.f30667a = downloadTipDialog;
            downloadTipDialog.show();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            i(context, c1188j);
        }
    }

    public void e(Context context, C1188j c1188j) {
        if (context == null || c1188j == null) {
            return;
        }
        c(context, c1188j);
    }

    public void f(Context context, C1188j c1188j) {
        if (context == null || c1188j == null) {
            return;
        }
        try {
            IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(context, c1188j.f30409A1);
            WXLaunchMiniProgram.Req req = new WXLaunchMiniProgram.Req();
            req.userName = c1188j.f30412B1;
            if (!TextUtils.isEmpty(c1188j.f30415C1) && c1188j.f30415C1.trim().length() > 0) {
                req.path = c1188j.f30415C1;
            }
            req.miniprogramType = 0;
            iwxapiCreateWXAPI.sendReq(req);
        } catch (Throwable th) {
            e(context, c1188j);
            LogcatUtil.debug(th);
        }
    }

    public void g(Context context, C1188j c1188j) {
        if (context == null || c1188j == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(c1188j.f30560y0)) {
                Intent intent = new Intent("android.intent.action.VIEW");
                if (c1188j.f30560y0.contains("m.taobao.com")) {
                    intent.setFlags(805339136);
                } else {
                    intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                }
                intent.setData(Uri.parse(c1188j.f30560y0));
                if (DeviceUtil.deviceCanHandleIntent(intent)) {
                    C1230x.a().g(c1188j);
                    C1230x.a().e(c1188j);
                    if (!AbstractC1236z.a(context, intent, c1188j.f30560y0, c1188j.f30527n0, c1188j.f30524m0)) {
                        context.startActivity(intent);
                    }
                    C1230x.a().d(c1188j);
                    c1188j.p2 = "1";
                    return;
                }
                c1188j.i2 = 2;
                C1230x.a().f(c1188j);
            }
            d(context, c1188j);
        } catch (Throwable th) {
            c1188j.h2 = 1;
            if (c1188j.i2 != 2) {
                c1188j.i2 = 3;
            }
            C1230x.a().f(c1188j);
            d(context, c1188j);
            LogcatUtil.debug(th);
        }
    }

    public static C1224v b() {
        if (f30666b == null) {
            synchronized (C1224v.class) {
                f30666b = new C1224v();
            }
        }
        return f30666b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void h(Context context, C1188j c1188j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (c1188j.f30560y0.contains("m.taobao.com")) {
                intent.setFlags(805339136);
            } else {
                intent.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
            }
            intent.setData(Uri.parse(c1188j.f30560y0));
            if (DeviceUtil.deviceCanHandleIntent(intent)) {
                if (c1188j.f30521l0 == 1) {
                    J.b().a(C1230x.a().a(c1188j.f30557x0, c1188j), c1188j.f30511i, c1188j.f30509h0);
                }
                c1188j.p2 = "1";
                J.b().a(c1188j);
                C1230x.a().g(c1188j);
                C1230x.a().e(c1188j);
                if (!AbstractC1236z.a(context, intent, c1188j.f30560y0, c1188j.f30527n0, c1188j.f30524m0)) {
                    context.startActivity(intent);
                }
            } else {
                if (c1188j.f30521l0 == 1) {
                    J.b().a(C1230x.a().a(c1188j.f30557x0, c1188j), c1188j.f30511i, c1188j.f30509h0);
                }
                if (!AbstractC1236z.a(context, intent, c1188j.f30560y0, c1188j.f30527n0, c1188j.f30524m0)) {
                    context.startActivity(intent);
                }
                c1188j.p2 = "1";
                J.b().a(c1188j);
                C1230x.a().g(c1188j);
                C1230x.a().e(c1188j);
            }
            C1230x.a().d(c1188j);
        } catch (Throwable th) {
            c1188j.h2 = 1;
            if (c1188j.i2 != 2) {
                c1188j.i2 = 3;
            }
            C1230x.a().f(c1188j);
            a(context, C1230x.a().a(c1188j.f30557x0, c1188j), c1188j);
            LogcatUtil.debug(th);
        }
    }

    public void b(Context context, C1188j c1188j) {
        if (context == null || c1188j == null) {
            return;
        }
        try {
            String str = c1188j.f30554w0;
            if (str.equals("1")) {
                g(context, c1188j);
                return;
            }
            if (!str.equals("5") && !str.equals("6")) {
                if (str.equals("3")) {
                    c(context, c1188j);
                    return;
                } else if (str.equals("7")) {
                    f(context, c1188j);
                    return;
                } else {
                    e(context, c1188j);
                    return;
                }
            }
            k(context, c1188j);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void a() {
        try {
            DownloadTipDialog downloadTipDialog = this.f30667a;
            if (downloadTipDialog != null && downloadTipDialog.isShowing()) {
                this.f30667a.dismiss();
            }
            this.f30667a = null;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            this.f30667a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, C1188j c1188j, String str) {
        if (context == null || c1188j == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (c1188j.f30554w0.equals("5")) {
                if (str.contains("qz_gdt=")) {
                    c1188j.f30564z1 = str.substring(str.indexOf("qz_gdt=") + 7);
                }
                c(context, c1188j);
            } else if (c1188j.f30554w0.equals("6")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.optInt("ret", -1) != 0) {
                        e(context, c1188j);
                    } else {
                        c1188j.f30564z1 = jSONObject.optJSONObject("data").optString("clickid");
                        g(context, c1188j);
                    }
                } catch (Throwable unused) {
                    e(context, c1188j);
                }
            }
        } catch (Throwable unused2) {
            e(context, c1188j);
        }
    }

    private void a(Context context, String str, C1188j c1188j) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || c1188j == null) {
                    return;
                }
                if (c1188j.f30509h0 == 0) {
                    FLH5Activity.launchWithEnableQuickApp(context, str, QuickAppHelper.getInstance().enableQuickApp(c1188j.f30511i));
                    return;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                context.startActivity(intent);
            } catch (Throwable unused) {
            }
        }
    }
}
