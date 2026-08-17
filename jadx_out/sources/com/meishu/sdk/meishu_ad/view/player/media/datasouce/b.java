package com.meishu.sdk.meishu_ad.view.player.media.datasouce;

import com.kuaishou.weapon.p0.t;
import com.meishu.sdk.core.bquery.g;
import java.io.File;
import java.io.RandomAccessFile;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public RandomAccessFile f32758a;

    /* renamed from: b, reason: collision with root package name */
    public RandomAccessFile f32759b;

    /* renamed from: c, reason: collision with root package name */
    public File f32760c;

    /* renamed from: d, reason: collision with root package name */
    public File f32761d;

    /* renamed from: e, reason: collision with root package name */
    public File f32762e;

    /* renamed from: f, reason: collision with root package name */
    public volatile long f32763f;

    public b(String str) {
        this.f32763f = -2147483648L;
        try {
            this.f32760c = g.a(str, (String) null);
            this.f32761d = g.a(str, "temp");
            this.f32762e = g.a(str, "last_meta_temp");
            if (a()) {
                this.f32758a = new RandomAccessFile(this.f32760c, t.f31269k);
                this.f32763f = this.f32760c.length();
            } else {
                this.f32758a = new RandomAccessFile(this.f32761d, t.f31269k);
                this.f32759b = new RandomAccessFile(this.f32762e, t.f31269k);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final boolean a() {
        File file = this.f32760c;
        return file != null && file.exists();
    }
}
