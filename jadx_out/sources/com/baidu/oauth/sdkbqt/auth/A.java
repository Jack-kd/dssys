package com.baidu.oauth.sdkbqt.auth;

import android.text.TextUtils;
import android.webkit.JsPromptResult;
import com.baidu.oauth.sdkbqt.auth.i;

/* loaded from: classes2.dex */
public class A implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11763b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsPromptResult f11764c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String[] f11765d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ y f11766e;

    public A(y yVar, String str, JsPromptResult jsPromptResult, String[] strArr) {
        this.f11766e = yVar;
        this.f11763b = str;
        this.f11764c = jsPromptResult;
        this.f11765d = strArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.e eVarA = i.e.a(this.f11763b);
        if (eVarA == null) {
            this.f11764c.cancel();
            return;
        }
        String strB = eVarA.b();
        if ("oauth_sso_hash".equals(strB)) {
            this.f11766e.f11841a.f11809q = this.f11764c;
        }
        if (!TextUtils.isEmpty(strB) && this.f11766e.f11841a.f11794b.get(strB) != null) {
            this.f11765d[0] = ((i.a) this.f11766e.f11841a.f11794b.get(strB)).a(eVarA);
        }
        if (eVarA.c().size() > 2 && "prompt_on_cancel".equals(eVarA.c().get(2))) {
            this.f11764c.cancel();
        } else {
            if ("oauth_sso_hash".equals(strB)) {
                return;
            }
            this.f11764c.confirm(this.f11765d[0]);
        }
    }
}
