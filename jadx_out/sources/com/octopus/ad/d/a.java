package com.octopus.ad.d;

import android.content.Context;
import android.os.Handler;
import com.octopus.ad.internal.utilities.ViewUtil;
import java.io.IOException;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public int f33927a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f33928b = 0;

    public void a(Context context, final double d2, final double d3, int i2) {
        if (context == null) {
            return;
        }
        try {
            this.f33927a = ViewUtil.getScreenWidth(context);
            this.f33928b = ViewUtil.getScreenHeight(context);
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.d.a.1
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    a aVar = a.this;
                    int i3 = (int) (aVar.f33927a * d2);
                    try {
                        new ProcessBuilder("input", "tap", "" + i3, "" + ((int) (aVar.f33928b * d3))).start();
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                }
            }, i2);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
        }
    }
}
