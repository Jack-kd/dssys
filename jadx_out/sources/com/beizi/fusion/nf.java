package com.beizi.fusion;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.ImageView;

/* loaded from: classes2.dex */
class nf implements rc {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15300a;

    /* renamed from: b, reason: collision with root package name */
    private String f15301b;

    /* renamed from: c, reason: collision with root package name */
    private String f15302c;

    /* renamed from: d, reason: collision with root package name */
    private qc f15303d;

    /* renamed from: e, reason: collision with root package name */
    private int f15304e;

    /* renamed from: g, reason: collision with root package name */
    private b f15306g;

    /* renamed from: f, reason: collision with root package name */
    private boolean f15305f = true;

    /* renamed from: h, reason: collision with root package name */
    private boolean f15307h = false;

    /* renamed from: i, reason: collision with root package name */
    private boolean f15308i = false;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ImageView f15309a;

        public a(ImageView imageView) {
            this.f15309a = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            ObjectAnimator.ofFloat(this.f15309a, "alpha", 0.0f, 1.0f).start();
        }
    }

    public static class b extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private ImageView f15311a;

        /* renamed from: b, reason: collision with root package name */
        private final qc f15312b;

        public /* synthetic */ b(ImageView imageView, qc qcVar, a aVar) {
            this(imageView, qcVar);
        }

        private void b() {
            qc qcVar = this.f15312b;
            if (qcVar != null) {
                qcVar.b();
            }
        }

        public void a(Object obj, int i2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = i2;
            messageObtain.obj = obj;
            sendMessage(messageObtain);
        }

        public void c() {
            sendEmptyMessage(3);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                ImageView imageView = this.f15311a;
                if (imageView != null) {
                    Object obj = message.obj;
                    if (obj instanceof Bitmap) {
                        imageView.setImageBitmap((Bitmap) obj);
                        b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    a();
                }
            } else {
                ImageView imageView2 = this.f15311a;
                if (imageView2 != null) {
                    Object obj2 = message.obj;
                    if (obj2 instanceof Drawable) {
                        imageView2.setBackground((Drawable) obj2);
                    }
                }
                this.f15311a = null;
            }
        }

        private b(ImageView imageView, qc qcVar) {
            super(Looper.getMainLooper());
            this.f15311a = imageView;
            this.f15312b = qcVar;
        }

        private void a() {
            qc qcVar = this.f15312b;
            if (qcVar != null) {
                qcVar.a();
            }
        }
    }

    public class c implements pb {
        private c() {
        }

        @Override // com.beizi.fusion.pb
        public void a(Bitmap bitmap) {
            if (nf.this.f15306g != null) {
                nf.this.f15306g.a(bitmap, 1);
                if (nf.this.f15307h) {
                    x4.a().a(nf.this.f15300a, bitmap, new d(nf.this, null));
                }
            }
        }

        public /* synthetic */ c(nf nfVar, a aVar) {
            this();
        }

        @Override // com.beizi.fusion.pb
        public void a() {
            Bitmap bitmapA = x4.a().a(nf.this.f15300a, nf.this.f15302c, nf.this.f15304e);
            if (bitmapA != null) {
                if (nf.this.f15306g != null) {
                    nf.this.f15306g.a(bitmapA, 1);
                }
            } else if (nf.this.f15306g != null) {
                nf.this.f15306g.c();
            }
        }
    }

    public class d implements pb {
        private d() {
        }

        @Override // com.beizi.fusion.pb
        public void a() {
        }

        public /* synthetic */ d(nf nfVar, a aVar) {
            this();
        }

        @Override // com.beizi.fusion.pb
        public void a(Bitmap bitmap) {
            nf.this.f15306g.a(new BitmapDrawable(nf.this.f15300a.getResources(), bitmap), 2);
        }
    }

    public nf(Context context) {
        this.f15300a = context;
    }

    @Override // com.beizi.fusion.rc
    public rc a(String str) {
        this.f15302c = str;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc b(String str) {
        this.f15301b = str;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc c(boolean z2) {
        this.f15308i = z2;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc a(int i2) {
        this.f15304e = i2;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc b(boolean z2) {
        this.f15305f = z2;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc a(qc qcVar) {
        this.f15303d = qcVar;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public rc a(boolean z2) {
        this.f15307h = z2;
        return this;
    }

    @Override // com.beizi.fusion.rc
    public void a(ImageView imageView) {
        if (imageView != null) {
            if (this.f15308i) {
                imageView.post(new a(imageView));
            }
            a aVar = null;
            this.f15306g = new b(imageView, this.f15303d, aVar);
            x4.a().a(this.f15300a, this.f15301b, this.f15305f, new c(this, aVar));
        }
    }
}
