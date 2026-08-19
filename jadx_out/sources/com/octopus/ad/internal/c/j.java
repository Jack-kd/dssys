package com.octopus.ad.internal.c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    HashMap<b, String> f34603a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    c f34604b;

    public interface b {
        void a();

        void a(Bitmap bitmap);
    }

    public interface c {
        void e();
    }

    private void b() {
        this.f34603a = null;
        this.f34604b = null;
    }

    public void a(b bVar, String str) {
        if (p.a(str) || bVar == null) {
            return;
        }
        this.f34603a.put(bVar, str);
    }

    public void a(c cVar) {
        this.f34604b = cVar;
    }

    public void a(b bVar) {
        HashMap<b, String> map = this.f34603a;
        if (map == null || !map.containsKey(bVar)) {
            return;
        }
        this.f34603a.remove(bVar);
        if (this.f34603a.size() == 0) {
            this.f34604b.e();
            f.b(f.f34565a, "Images downloading finished.");
            b();
        }
    }

    public class a extends AsyncTask<Void, Void, Bitmap> {

        /* renamed from: a, reason: collision with root package name */
        WeakReference<j> f34605a;

        /* renamed from: b, reason: collision with root package name */
        WeakReference<b> f34606b;

        /* renamed from: c, reason: collision with root package name */
        String f34607c;

        public a(b bVar, String str, j jVar) {
            this.f34605a = new WeakReference<>(jVar);
            this.f34606b = new WeakReference<>(bVar);
            this.f34607c = str;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(Void... voidArr) throws IOException {
            if (isCancelled()) {
                return null;
            }
            try {
                URLConnection uRLConnectionOpenConnection = new URL(this.f34607c).openConnection();
                uRLConnectionOpenConnection.setReadTimeout(10000);
                InputStream inputStream = (InputStream) uRLConnectionOpenConnection.getContent();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                inputStream.close();
                return bitmapDecodeStream;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            this.f34606b.clear();
            this.f34605a.clear();
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            b bVar = this.f34606b.get();
            j jVar = this.f34605a.get();
            if (bVar != null) {
                if (bitmap == null) {
                    bVar.a();
                } else {
                    bVar.a(bitmap);
                }
            }
            if (jVar != null) {
                jVar.a(bVar);
            }
        }
    }

    public void a() {
        if (this.f34604b == null) {
            b();
            return;
        }
        HashMap<b, String> map = this.f34603a;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<b, String> entry : this.f34603a.entrySet()) {
                a aVar = new a(entry.getKey(), entry.getValue(), this);
                f.b(f.f34565a, "Downloading image failFrom url: " + ((Object) entry.getValue()));
                aVar.execute(new Void[0]);
            }
            return;
        }
        this.f34604b.e();
        b();
    }
}
