package com.meishu.sdk.core.webview.jsbridge;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.b1;
import com.meishu.sdk.core.utils.f;
import com.meishu.sdk.core.utils.p0;
import com.meishu.sdk.core.utils.v;
import com.meishu.sdk.core.webview.jsbridge.bean.InvokeDeepLinkParam;
import com.meishu.sdk.platform.ms.c;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.webview.jsbridge.bean.a f32124a;

    /* renamed from: b, reason: collision with root package name */
    public final c f32125b;

    /* renamed from: com.meishu.sdk.core.webview.jsbridge.a$a, reason: collision with other inner class name */
    public interface InterfaceC0680a {
        void a(int i2, String str);
    }

    public a(c cVar) {
        this.f32125b = cVar;
        if (cVar != null) {
            try {
                if (cVar.a() != null) {
                    Gson gson = v.f32031a;
                    this.f32124a = (com.meishu.sdk.core.webview.jsbridge.bean.a) gson.fromJson(gson.toJson(cVar.a()), com.meishu.sdk.core.webview.jsbridge.bean.a.class);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void a(InvokeDeepLinkParam invokeDeepLinkParam, final InterfaceC0680a interfaceC0680a) {
        String string;
        try {
            if (TextUtils.isEmpty(invokeDeepLinkParam.getDeep_link())) {
                if (interfaceC0680a != null) {
                    interfaceC0680a.a(1002, "depp_link为空");
                    return;
                }
                return;
            }
            b1.a(this.f32124a, 22, 0, "js_dp_start");
            if (f.a(invokeDeepLinkParam.getDeep_link())) {
                this.f32124a.deep_link = invokeDeepLinkParam.getDeep_link();
                f.a(AdSdk.getContext(), this.f32124a, this.f32125b, false, true, new p0.a() { // from class: P0.a
                    @Override // com.meishu.sdk.core.utils.p0.a
                    public final void a(boolean z2) {
                        this.f409a.a(interfaceC0680a, z2);
                    }
                });
            } else if (interfaceC0680a != null) {
                interfaceC0680a.a(1001, "唤起失败. 未安装");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("未知错误:");
            try {
                string = e2.toString();
            } catch (Exception unused) {
                string = "";
            }
            sb.append(string);
            String string2 = sb.toString();
            if (interfaceC0680a != null) {
                interfaceC0680a.a(1002, string2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InterfaceC0680a interfaceC0680a, boolean z2) {
        if (!z2) {
            if (interfaceC0680a != null) {
                interfaceC0680a.a(1001, "唤起失败");
            }
        } else {
            b1.a(this.f32124a, 23, 0, "js_dp_success");
            if (interfaceC0680a != null) {
                interfaceC0680a.a(1000, "唤起成功");
            }
        }
    }
}
