package com.ubix.ssp.ad.d;

import android.net.Uri;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;

/* loaded from: classes5.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private String f45829a;

    /* renamed from: b, reason: collision with root package name */
    private String f45830b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f45831c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f45832d;

    public d(String str, String str2, boolean z2) {
        this.f45829a = str;
        this.f45830b = str2;
        this.f45831c = z2;
        this.f45832d = z2;
    }

    public static d a(String str, boolean z2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Uri uri = Uri.parse(str);
            return new d(uri.getScheme(), uri.getHost(), z2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean b(String str) {
        if (TextUtils.isEmpty(this.f45829a)) {
            return false;
        }
        return this.f45829a.equals(NativeModel.JSON_KEY_SCHEME) || this.f45829a.equals(str);
    }

    public void c(String str, String str2) {
        if (!this.f45832d && b(str) && a(str2)) {
            this.f45831c = false;
        }
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(this.f45830b)) {
            return false;
        }
        return this.f45830b.equals(com.anythink.core.common.m.f.bU) || this.f45830b.equals(str);
    }

    public boolean b(String str, String str2) {
        return b(str) && a(str2);
    }

    public boolean a(String str, String str2) {
        if (b(str) && a(str2)) {
            if (this.f45831c) {
                return false;
            }
            this.f45831c = true;
        }
        return true;
    }
}
