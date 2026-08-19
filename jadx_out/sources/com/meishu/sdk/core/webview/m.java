package com.meishu.sdk.core.webview;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.R;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.r0;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes4.dex */
public class m extends WebViewClient {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f32132d = 0;

    /* renamed from: a, reason: collision with root package name */
    public Context f32133a;

    /* renamed from: b, reason: collision with root package name */
    public HashMap<String, Integer> f32134b = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f32135c = false;

    public m(Context context) {
        this.f32133a = context;
    }

    public boolean a(Intent intent) {
        if (intent.resolveActivity(this.f32133a.getPackageManager()) != null) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            ActivityInfo activityInfoResolveActivityInfo = intent.resolveActivityInfo(this.f32133a.getPackageManager(), 65536);
            if (activityInfoResolveActivityInfo != null && activityInfoResolveActivityInfo.exported) {
                intent.setFlags(intent.getFlags() & (-196));
                HashSet hashSet = new HashSet();
                hashSet.add("android.intent.action.CHOOSER");
                hashSet.add("android.intent.action.SEND");
                hashSet.add("android.intent.action.SEND_MULTIPLE");
                hashSet.add("android.media.action.IMAGE_CAPTURE");
                hashSet.add("android.media.action.IMAGE_CAPTURE_SECURE");
                hashSet.add("android.media.action.VIDEO_CAPTURE");
                if (hashSet.contains(intent.getAction())) {
                    return false;
                }
                this.f32133a.startActivity(intent);
                return true;
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        a(webView);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) throws URISyntaxException {
        ComponentName callingActivity;
        if (str.startsWith("http")) {
            return false;
        }
        try {
            String scheme = Uri.parse(str).getScheme();
            HashMap<String, Integer> map = r0.f31977h;
            if (map != null) {
                for (String str2 : map.keySet()) {
                    if (scheme != null && scheme.equals(str2)) {
                        if (this.f32134b.containsKey(str2)) {
                            Integer num = this.f32134b.get(str2);
                            if (num != null) {
                                this.f32134b.put(str2, Integer.valueOf(num.intValue() + 1));
                            }
                        } else {
                            this.f32134b.put(str2, 0);
                        }
                        Integer num2 = r0.f31977h.get(str2);
                        Integer num3 = this.f32134b.get(str2);
                        if (num2 != null && num3 != null && num3.intValue() < num2.intValue()) {
                        }
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Intent uri = Intent.parseUri(str, 0);
            uri.addCategory("android.intent.category.BROWSABLE");
            uri.setComponent(null);
            uri.setSelector(null);
            Context context = this.f32133a;
            if ((context instanceof Activity) && ((callingActivity = ((Activity) context).getCallingActivity()) == null || this.f32133a.getPackageName().equalsIgnoreCase(callingActivity.getPackageName()))) {
                a(uri);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return true;
    }

    public void a(WebView webView) {
        if (this.f32135c) {
            return;
        }
        this.f32135c = true;
        try {
            Context context = webView.getContext();
            if (context instanceof Activity) {
                View viewFindViewById = ((Activity) context).findViewById(R.id.ms_webivew_loading);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                    return;
                }
                return;
            }
            LogUtil.e("WebViewClient", "context is`not activity");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
