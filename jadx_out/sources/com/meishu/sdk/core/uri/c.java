package com.meishu.sdk.core.uri;

import android.content.Context;
import android.net.Uri;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.utils.LogUtil;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: c, reason: collision with root package name */
    public static c f31733c = new c();

    /* renamed from: a, reason: collision with root package name */
    public final String f31734a = c.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public ArrayList<b> f31735b = new ArrayList<>();

    public c() {
        a("com.meishu.sdk.core.uri.LiveProcessor");
        this.f31735b.add(new a());
    }

    public final void a(String str) {
        try {
            this.f31735b.add((b) Class.forName(str).newInstance());
        } catch (Exception unused) {
        }
    }

    public void a(Context context, String str, AdSlot adSlot) {
        Uri uri = Uri.parse(str);
        if (uri.getScheme() == null) {
            LogUtil.e(this.f31734a, "uri scheme error");
            return;
        }
        ArrayList<b> arrayList = this.f31735b;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            b bVar = arrayList.get(i2);
            i2++;
            if (bVar.a(context, uri, adSlot)) {
                return;
            }
        }
        LogUtil.e(this.f31734a, "uri cannot process: " + str);
    }
}
