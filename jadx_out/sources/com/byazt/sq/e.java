package com.byazt.sq;

import android.net.Uri;
import android.text.TextUtils;

@com.byazt.kj.hp(hp = {0, 1, 1453, 45})
/* loaded from: classes3.dex */
public class e {

    public enum hp {
        HTML("text/html"),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");


        /* renamed from: w, reason: collision with root package name */
        public String f25509w;

        hp(String str) {
            this.f25509w = str;
        }

        public String getType() {
            return this.f25509w;
        }
    }

    public static hp hp(String str) {
        hp hpVar = hp.IMAGE;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                if (path != null) {
                    if (path.endsWith(".css")) {
                        return hp.CSS;
                    }
                    if (path.endsWith(".js")) {
                        return hp.JS;
                    }
                    if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico") && path.endsWith(".html")) {
                        return hp.HTML;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return hpVar;
    }

    public static boolean l(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null) {
            return false;
        }
        String path = uri.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return path.endsWith(".gif");
    }
}
