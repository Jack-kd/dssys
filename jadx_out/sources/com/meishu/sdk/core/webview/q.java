package com.meishu.sdk.core.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.meishu.sdk.R;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.qq.e.comm.constants.ErrorCode;
import java.io.ByteArrayOutputStream;

/* loaded from: classes4.dex */
public class q {

    /* renamed from: h, reason: collision with root package name */
    public static final String f32141h;

    /* renamed from: i, reason: collision with root package name */
    public static Handler f32142i;

    /* renamed from: j, reason: collision with root package name */
    public static int f32143j;

    /* renamed from: a, reason: collision with root package name */
    public WebView f32144a;

    /* renamed from: c, reason: collision with root package name */
    public int f32146c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32147d;

    /* renamed from: e, reason: collision with root package name */
    public long f32148e;

    /* renamed from: g, reason: collision with root package name */
    public j f32150g;

    /* renamed from: b, reason: collision with root package name */
    public int f32145b = 1;

    /* renamed from: f, reason: collision with root package name */
    public Runnable f32149f = new a();

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                if (!com.meishu.sdk.core.service.d.a()) {
                    q qVar = q.this;
                    if (qVar.f32148e == 0) {
                        qVar.f32148e = System.currentTimeMillis();
                    }
                    q qVar2 = q.this;
                    qVar2.f32146c += 500;
                    qVar2.f32145b = 2;
                    Handler handler = q.f32142i;
                    if (handler != null) {
                        handler.postDelayed(qVar2.f32149f, 500L);
                        return;
                    }
                    return;
                }
                q qVar3 = q.this;
                if (qVar3.f32145b != 1 && qVar3.f32148e > 0) {
                    if (System.currentTimeMillis() - q.this.f32148e < q.f32143j) {
                        LogUtil.e("WebViewUtil", "task_interrupted, mUpdateTime=" + q.this.f32146c + ",rewardTmpTime=" + q.f32143j);
                        q.a(q.this, "task_interrupted");
                    } else {
                        LogUtil.e("WebViewUtil", "达到目标时间，成功 ,task_completed");
                        q.this.f32147d = true;
                        q.a(q.this, "task_completed");
                        q.this.f32146c = 0;
                        q.f32142i.removeCallbacksAndMessages(null);
                        j jVar = q.this.f32150g;
                        if (jVar != null) {
                            jVar.onRewardSuccess();
                        }
                    }
                }
                q.f32142i.postDelayed(q.this.f32149f, 500L);
                q qVar4 = q.this;
                qVar4.getClass();
                qVar4.f32145b = 1;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    static {
        StringBuilder sbA = com.meishu.sdk.activity.a.a("\n<!DOCTYPE html>\n<html>\n<head>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n    <title>500 - 服务器错误</title>\n    <style>\n        body {\n            margin: 0;\n            padding: 0;\n            background-color: white;\n            display: flex;\n            flex-direction: column;\n            justify-content: center;\n            align-items: center;\n            height: 100vh;\n            overflow: hidden;\n            touch-action: none;\n        }\n        .error-image {\n            width: 140px;\n            height: 119px;\n            margin-bottom: 16px;\n        }\n        .error-text {\n            font-weight: 400;\n            font-size: 14px;\n            color: #888888;\n            text-align: center;\n            line-height: 24px;\n            max-width: 80%;\n        }\n    </style>\n</head>\n<body>\n<img class=\"error-image\" src=\"data:image/png;base64,");
        sbA.append(a(AdSdk.getContext(), R.drawable.ad_mate_error));
        sbA.append("\" alt=\"500错误提示图\">\n<p class=\"error-text\">页面加载失败<br>可尝试刷新或检查网络~</p>\n</body>\n</html>\n");
        f32141h = sbA.toString();
        f32143j = ErrorCode.PrivateError.LOAD_TIME_OUT;
    }

    public static void a(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.stopLoading();
            webView.loadUrl(com.anythink.core.common.res.d.f7446a);
            webView.clearHistory();
            webView.clearCache(false);
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.destroy();
            Handler handler = f32142i;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.startsWith("about:") || str.startsWith("data:")) {
                    return true;
                }
                if (str.toLowerCase().contains("android_asset")) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static void a(q qVar, String str) {
        if (qVar.f32144a == null || f32142i == null) {
            return;
        }
        LogUtil.e("WebViewUtil", "notifyWebStatus----------------");
        qVar.f32144a.post(new r(qVar, str));
    }

    public static String a(Context context, int i2) {
        try {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapDecodeResource.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        } catch (Throwable unused) {
            return "";
        }
    }
}
