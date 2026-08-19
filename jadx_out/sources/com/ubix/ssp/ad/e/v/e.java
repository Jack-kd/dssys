package com.ubix.ssp.ad.e.v;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.LruCache;
import com.ubix.ssp.open.AdError;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    protected static LruCache<String, Bitmap> f47230a;

    /* renamed from: b, reason: collision with root package name */
    protected static LruCache<String, byte[]> f47231b;

    /* renamed from: c, reason: collision with root package name */
    protected static Map<String, Long> f47232c;

    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private b f47233a;

        public a(b bVar) {
            super(Looper.getMainLooper());
            this.f47233a = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Bundle data = message.getData();
            int i2 = message.what;
            if (i2 == 1) {
                removeMessages(2);
                b bVar = this.f47233a;
                if (bVar != null) {
                    bVar.a((e) message.obj, data.getString("url"), data.getString("path"), false);
                    return;
                }
                return;
            }
            if (i2 != 2) {
                return;
            }
            removeMessages(2);
            b bVar2 = this.f47233a;
            if (bVar2 != null) {
                bVar2.a((AdError) data.getSerializable("error"));
            }
        }
    }

    public interface b {
        void a(e eVar, String str, String str2, boolean z2);

        void a(AdError adError);
    }

    public e() {
        d();
        a(com.ubix.ssp.ad.d.b.f45792K, com.ubix.ssp.ad.d.b.f45793L);
    }

    public static f c() {
        return new com.ubix.ssp.ad.e.v.g.b();
    }

    private void d() {
        if (f47230a == null) {
            f47230a = new LruCache<>(com.ubix.ssp.ad.d.b.f45792K);
        }
        if (f47231b == null) {
            f47231b = new LruCache<>(com.ubix.ssp.ad.d.b.f45793L);
        }
        if (f47232c == null) {
            f47232c = new HashMap();
        }
    }

    public Message a(AdError adError) {
        Message message = new Message();
        message.what = 2;
        Bundle bundle = new Bundle();
        bundle.putSerializable("error", adError);
        message.setData(bundle);
        return message;
    }

    public Bitmap b(String str) {
        return null;
    }

    public static com.ubix.ssp.ad.e.v.a b() {
        return new com.ubix.ssp.ad.e.v.g.a();
    }

    public Message a(String str, String str2) {
        Message message = new Message();
        message.what = 1;
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putString("path", str2);
        message.setData(bundle);
        message.obj = this;
        return message;
    }

    public void a(int i2, int i3) {
        LruCache<String, Bitmap> lruCache = f47230a;
        if (lruCache != null && lruCache.maxSize() != i2) {
            f47230a.resize(i2);
        }
        LruCache<String, byte[]> lruCache2 = f47231b;
        if (lruCache2 == null || lruCache2.maxSize() == i3) {
            return;
        }
        f47231b.resize(i3);
    }
}
