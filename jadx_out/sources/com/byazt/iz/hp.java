package com.byazt.iz;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.byazt.dnb.s;
import com.byazt.uid.eb;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 1633, 28})
/* loaded from: classes.dex */
public class hp extends ContentObserver {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public InterfaceC0277hp f21258l;

    /* renamed from: com.byazt.iz.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0277hp {
        void hp(int i2);
    }

    public hp(Context context, Handler handler, InterfaceC0277hp interfaceC0277hp) {
        super(handler);
        this.hp = context;
        this.f21258l = interfaceC0277hp;
    }

    @Override // android.database.ContentObserver
    public void onChange(final boolean z2, final Uri uri) {
        super.onChange(z2, uri);
        s.hp(new eb("brightness onChange") { // from class: com.byazt.iz.hp.1
            @Override // java.lang.Runnable
            public void run() {
                if (uri.equals(Settings.System.getUriFor("screen_brightness"))) {
                    try {
                        int i2 = Settings.System.getInt(hp.this.hp.getContentResolver(), "screen_brightness", 0);
                        if (hp.this.f21258l != null) {
                            hp.this.f21258l.hp(i2);
                        }
                    } catch (Throwable th) {
                        u.l("BrightnessObserver", "get screen brightness error: ".concat(String.valueOf(th)));
                    }
                }
            }
        });
    }

    public void hp() {
        this.hp.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this);
    }

    public void l() {
        this.hp.getContentResolver().unregisterContentObserver(this);
    }
}
