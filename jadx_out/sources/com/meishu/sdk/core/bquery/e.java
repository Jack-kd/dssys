package com.meishu.sdk.core.bquery;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.meishu.sdk.core.bquery.e;
import com.meishu.sdk.core.utils.VideoLoadManager;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.d0;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.reflect.Constructor;
import okhttp3.OkHttpClient;

/* loaded from: classes4.dex */
public abstract class e<T extends e<T>> {

    /* renamed from: a, reason: collision with root package name */
    public Activity f31518a;

    /* renamed from: b, reason: collision with root package name */
    public Constructor<T> f31519b;

    /* renamed from: c, reason: collision with root package name */
    public View f31520c;

    /* renamed from: d, reason: collision with root package name */
    public View f31521d;

    public e(Activity activity) {
        this.f31518a = activity;
    }

    public T a(int i2) {
        View viewFindViewById;
        View view = this.f31520c;
        if (view != null) {
            viewFindViewById = view.findViewById(i2);
        } else {
            Activity activity = this.f31518a;
            viewFindViewById = activity != null ? activity.findViewById(i2) : null;
        }
        if (this.f31519b == null) {
            try {
                this.f31519b = (Constructor<T>) getClass().getConstructor(View.class);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            return this.f31519b.newInstance(viewFindViewById);
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public T b(int i2) {
        View viewFindViewById;
        View view = this.f31520c;
        if (view != null) {
            viewFindViewById = view.findViewById(i2);
        } else {
            Activity activity = this.f31518a;
            viewFindViewById = activity != null ? activity.findViewById(i2) : null;
        }
        this.f31521d = viewFindViewById;
        return this;
    }

    public T c(int i2) {
        View view = this.f31521d;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            if (i2 == 0) {
                imageView.setImageBitmap(null);
                return this;
            }
            imageView.setImageResource(i2);
        }
        return this;
    }

    public T d(int i2) {
        View view = this.f31521d;
        if (view != null && view.getVisibility() != i2) {
            this.f31521d.setVisibility(i2);
        }
        return this;
    }

    public e(View view) {
        this.f31520c = view;
        this.f31521d = view;
    }

    public e(Context context) {
    }

    public T a(CharSequence charSequence) {
        View view = this.f31521d;
        if (view instanceof TextView) {
            ((TextView) view).setText(charSequence);
        }
        return this;
    }

    public T a(String str, boolean z2) {
        View view = this.f31521d;
        if (view instanceof ImageView) {
            try {
                ImageView imageView = (ImageView) view;
                OkHttpClient okHttpClient = a0.f31806a;
                if (imageView != null && str != null) {
                    imageView.setTag(str);
                    com.meishu.sdk.core.cache.a.a(str, new d0(new SoftReference(imageView), str, z2), false);
                }
            } catch (Throwable unused) {
            }
        }
        return this;
    }

    public void a(String str, int i2, boolean z2, h<File> hVar) {
        VideoLoadManager videoLoadManager;
        synchronized (VideoLoadManager.class) {
            try {
                if (VideoLoadManager.f31792b == null) {
                    VideoLoadManager.f31792b = new VideoLoadManager();
                }
                videoLoadManager = VideoLoadManager.f31792b;
            } catch (Throwable th) {
                throw th;
            }
        }
        videoLoadManager.a(str, i2, z2, hVar, false);
    }
}
