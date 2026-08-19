package com.anythink.core.common.res;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.core.common.d.s;
import com.anythink.core.common.res.image.a;
import com.anythink.core.common.v.g;
import com.anythink.core.common.v.n;
import java.io.FileInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static final String f7386b = "ImageLoader";

    /* renamed from: c, reason: collision with root package name */
    private static volatile b f7387c;

    /* renamed from: a, reason: collision with root package name */
    Context f7388a;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Integer> f7389d;

    /* renamed from: f, reason: collision with root package name */
    private final Object f7391f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private final ConcurrentHashMap<String, List<a>> f7392g = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private c<String, SoftReference<Bitmap>> f7390e = new c<String, SoftReference<Bitmap>>(((int) Runtime.getRuntime().maxMemory()) / 5) { // from class: com.anythink.core.common.res.b.3
        @Override // com.anythink.core.common.res.c
        public final /* synthetic */ int a(String str, SoftReference<Bitmap> softReference) {
            String str2 = str;
            SoftReference<Bitmap> softReference2 = softReference;
            Bitmap bitmap = softReference2 != null ? softReference2.get() : null;
            if (b.this.f7389d == null) {
                b.this.f7389d = new HashMap(8);
            }
            if (bitmap != null) {
                int rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
                b.this.f7389d.put(str2, Integer.valueOf(rowBytes));
                return rowBytes;
            }
            Integer num = (Integer) b.this.f7389d.get(str2);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }

        @Override // com.anythink.core.common.res.c
        public final /* synthetic */ void a(boolean z2, String str, SoftReference<Bitmap> softReference, SoftReference<Bitmap> softReference2) {
            Bitmap bitmap;
            String str2 = str;
            SoftReference<Bitmap> softReference3 = softReference;
            SoftReference<Bitmap> softReference4 = softReference2;
            super.a(z2, (boolean) str2, softReference3, softReference4);
            if (softReference3 != null) {
                try {
                    bitmap = softReference3.get();
                } catch (Exception unused) {
                    return;
                }
            } else {
                bitmap = null;
            }
            if (b.this.f7389d != null) {
                b.this.f7389d.remove(str2);
            }
            if (softReference3 == null || softReference3.equals(softReference4) || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            bitmap.recycle();
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private int a2(String str, SoftReference<Bitmap> softReference) {
            Bitmap bitmap = softReference != null ? softReference.get() : null;
            if (b.this.f7389d == null) {
                b.this.f7389d = new HashMap(8);
            }
            if (bitmap == null) {
                Integer num = (Integer) b.this.f7389d.get(str);
                if (num != null) {
                    return num.intValue();
                }
                return 0;
            }
            int rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
            b.this.f7389d.put(str, Integer.valueOf(rowBytes));
            return rowBytes;
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(boolean z2, String str, SoftReference<Bitmap> softReference, SoftReference<Bitmap> softReference2) {
            Bitmap bitmap;
            super.a(z2, (boolean) str, softReference, softReference2);
            if (softReference != null) {
                try {
                    bitmap = softReference.get();
                } catch (Exception unused) {
                    return;
                }
            } else {
                bitmap = null;
            }
            if (b.this.f7389d != null) {
                b.this.f7389d.remove(str);
            }
            if (softReference == null || softReference.equals(softReference2) || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            bitmap.recycle();
        }
    };

    /* renamed from: com.anythink.core.common.res.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Bitmap f7393a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f7394b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f7395c;

        public AnonymousClass1(Bitmap bitmap, a aVar, String str) {
            this.f7393a = bitmap;
            this.f7394b = aVar;
            this.f7395c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Bitmap bitmap = this.f7393a;
            if (bitmap != null) {
                this.f7394b.onSuccess(this.f7395c, bitmap);
            } else {
                this.f7394b.onFail(this.f7395c, "Bitmap load fail");
            }
        }
    }

    /* renamed from: com.anythink.core.common.res.b$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f7397a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f7398b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f7399c;

        public AnonymousClass2(a aVar, String str, String str2) {
            this.f7397a = aVar;
            this.f7398b = str;
            this.f7399c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7397a.onFail(this.f7398b, this.f7399c);
        }
    }

    public interface a {
        void onFail(String str, String str2);

        void onSuccess(String str, Bitmap bitmap);
    }

    private b(Context context) {
        this.f7388a = context.getApplicationContext();
    }

    private void b(String str, Bitmap bitmap) {
        LinkedList linkedList;
        synchronized (this.f7392g) {
            try {
                linkedList = (LinkedList) this.f7392g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    if (aVar != null) {
                        s.b();
                        s.b(new AnonymousClass1(bitmap, aVar, str));
                    }
                }
            }
        }
    }

    /* renamed from: com.anythink.core.common.res.b$5, reason: invalid class name */
    public class AnonymousClass5 implements a.InterfaceC0077a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f7407a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f7408b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ e f7409c;

        public AnonymousClass5(int i2, int i3, e eVar) {
            this.f7407a = i2;
            this.f7408b = i3;
            this.f7409c = eVar;
        }

        @Override // com.anythink.core.common.res.image.a.InterfaceC0077a
        public final void a(e eVar) {
            Bitmap bitmapA = b.this.a(eVar, this.f7407a, this.f7408b);
            if (bitmapA != null) {
                b.this.a(eVar.f7467h, bitmapA);
            }
            b.a(b.this, this.f7409c.f7467h, bitmapA);
        }

        @Override // com.anythink.core.common.res.image.a.InterfaceC0077a
        public final void a(e eVar, String str) {
            b.a(b.this, eVar.f7467h, str);
        }
    }

    private void a(String str, String str2) {
        LinkedList linkedList;
        synchronized (this.f7392g) {
            try {
                linkedList = (LinkedList) this.f7392g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    if (aVar != null) {
                        s.b();
                        s.b(new AnonymousClass2(aVar, str, str2));
                    }
                }
            }
        }
    }

    private Bitmap b(e eVar, int i2, int i3) {
        if (TextUtils.isEmpty(eVar.f7467h)) {
            return null;
        }
        Bitmap bitmapA = a(eVar.f7467h);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            return bitmapA;
        }
        Bitmap bitmapA2 = a(eVar, i2, i3);
        if (bitmapA2 == null || bitmapA2.isRecycled()) {
            return null;
        }
        a(eVar.f7467h, bitmapA2);
        return bitmapA2;
    }

    public final void a(String str, Bitmap bitmap) {
        if (a(str) != null || bitmap == null) {
            return;
        }
        this.f7390e.b(str, new SoftReference<>(bitmap));
    }

    public final Bitmap a(String str) {
        SoftReference<Bitmap> softReferenceA = this.f7390e.a((c<String, SoftReference<Bitmap>>) str);
        if (softReferenceA != null) {
            return softReferenceA.get();
        }
        return null;
    }

    public final Bitmap a(e eVar, int i2, int i3) {
        Bitmap bitmapA = null;
        if (eVar == null || TextUtils.isEmpty(eVar.f7467h)) {
            return null;
        }
        String strA = n.a(eVar.f7467h);
        if (i2 <= 0) {
            try {
                i2 = this.f7388a.getResources().getDisplayMetrics().widthPixels;
            } catch (Throwable unused) {
            }
        }
        if (i3 <= 0) {
            i3 = this.f7388a.getResources().getDisplayMetrics().heightPixels;
        }
        synchronized (this.f7391f) {
            FileInputStream fileInputStreamA = d.a(this.f7388a).a(eVar.f7466g, strA);
            if (fileInputStreamA == null) {
                return null;
            }
            try {
                bitmapA = g.a(fileInputStreamA.getFD(), i2, i3);
            } catch (Throwable unused2) {
            }
            try {
                fileInputStreamA.close();
            } catch (Exception unused3) {
            }
            return bitmapA;
        }
    }

    private void b(e eVar, int i2, int i3, a aVar) {
        synchronized (this.f7392g) {
            try {
                if (!this.f7392g.containsKey(eVar.f7467h)) {
                    if (aVar != null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(aVar);
                        this.f7392g.put(eVar.f7467h, linkedList);
                    }
                    com.anythink.core.common.res.image.a aVar2 = new com.anythink.core.common.res.image.a(eVar);
                    aVar2.a(new AnonymousClass5(i2, i3, eVar));
                    aVar2.d();
                } else {
                    LinkedList linkedList2 = (LinkedList) this.f7392g.get(eVar.f7467h);
                    if (linkedList2 != null && aVar != null && !linkedList2.contains(aVar)) {
                        linkedList2.add(aVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static b a(Context context) {
        if (f7387c == null) {
            synchronized (b.class) {
                try {
                    if (f7387c == null) {
                        f7387c = new b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7387c;
    }

    public final void a(e eVar, a aVar) {
        a(eVar, -1, -1, aVar);
    }

    public final void a(final e eVar, final int i2, final int i3, final a aVar) {
        if (eVar == null || TextUtils.isEmpty(eVar.f7467h)) {
            if (aVar != null) {
                aVar.onFail("", "No url info.");
                return;
            }
            return;
        }
        Bitmap bitmapA = a(eVar.f7467h);
        if (bitmapA == null || bitmapA.isRecycled() || (bitmapA.getWidth() < i2 && bitmapA.getHeight() < i3)) {
            com.anythink.core.common.v.b.c.a().d(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.bh, new Runnable() { // from class: com.anythink.core.common.res.b.4
                @Override // java.lang.Runnable
                public final void run() {
                    Bitmap bitmapA2 = b.this.a(eVar, i2, i3);
                    if (bitmapA2 == null || bitmapA2.isRecycled()) {
                        b.a(b.this, eVar, i2, i3, aVar);
                        return;
                    }
                    b.this.a(eVar.f7467h, bitmapA2);
                    if (aVar != null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(aVar);
                        b.this.f7392g.put(eVar.f7467h, linkedList);
                    }
                    b.a(b.this, eVar.f7467h, bitmapA2);
                }
            }));
        } else if (aVar != null) {
            aVar.onSuccess(eVar.f7467h, bitmapA);
        }
    }

    private void a() {
        try {
            c<String, SoftReference<Bitmap>> cVar = this.f7390e;
            if (cVar != null) {
                cVar.a();
            }
            ConcurrentHashMap<String, List<a>> concurrentHashMap = this.f7392g;
            if (concurrentHashMap != null) {
                concurrentHashMap.clear();
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void a(b bVar, String str, Bitmap bitmap) {
        LinkedList linkedList;
        synchronized (bVar.f7392g) {
            try {
                linkedList = (LinkedList) bVar.f7392g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    if (aVar != null) {
                        s.b();
                        s.b(bVar.new AnonymousClass1(bitmap, aVar, str));
                    }
                }
            }
        }
    }

    public static /* synthetic */ void a(b bVar, e eVar, int i2, int i3, a aVar) {
        synchronized (bVar.f7392g) {
            try {
                if (!bVar.f7392g.containsKey(eVar.f7467h)) {
                    if (aVar != null) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.add(aVar);
                        bVar.f7392g.put(eVar.f7467h, linkedList);
                    }
                    com.anythink.core.common.res.image.a aVar2 = new com.anythink.core.common.res.image.a(eVar);
                    aVar2.a(bVar.new AnonymousClass5(i2, i3, eVar));
                    aVar2.d();
                } else {
                    LinkedList linkedList2 = (LinkedList) bVar.f7392g.get(eVar.f7467h);
                    if (linkedList2 != null && aVar != null && !linkedList2.contains(aVar)) {
                        linkedList2.add(aVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void a(b bVar, String str, String str2) {
        LinkedList linkedList;
        synchronized (bVar.f7392g) {
            try {
                linkedList = (LinkedList) bVar.f7392g.remove(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (linkedList != null) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    a aVar = (a) it.next();
                    if (aVar != null) {
                        s.b();
                        s.b(bVar.new AnonymousClass2(aVar, str, str2));
                    }
                }
            }
        }
    }
}
