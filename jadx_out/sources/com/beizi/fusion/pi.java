package com.beizi.fusion;

import android.view.View;
import com.beizi.ad.lance.ApkBean;
import com.beizi.fusion.rn;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public interface pi {

    public enum a {
        CONTENT,
        APP_INSTALL
    }

    rn.e a();

    void a(int i2);

    void a(View view, String str, String str2, String str3, String str4, int i2, mi miVar);

    boolean a(View view, mi miVar);

    boolean a(View view, ri riVar);

    boolean a(View view, List list, mi miVar);

    String b();

    void b(int i2);

    String c();

    String d();

    void destroy();

    String e();

    boolean f();

    String g();

    String getAppName();

    String getIconUrl();

    String getImageUrl();

    boolean h();

    String i();

    ArrayList j();

    String k();

    ArrayList l();

    int m();

    rn.e n();

    int o();

    ApkBean p();

    String q();
}
