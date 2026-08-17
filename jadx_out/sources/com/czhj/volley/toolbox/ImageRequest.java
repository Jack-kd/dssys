package com.czhj.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Request;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyLog;

/* loaded from: classes3.dex */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;

    /* renamed from: a, reason: collision with root package name */
    private static final Object f29677a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final Object f29678b;

    /* renamed from: c, reason: collision with root package name */
    private final Bitmap.Config f29679c;

    /* renamed from: d, reason: collision with root package name */
    private final int f29680d;

    /* renamed from: e, reason: collision with root package name */
    private final int f29681e;

    /* renamed from: f, reason: collision with root package name */
    private final ImageView.ScaleType f29682f;

    /* renamed from: g, reason: collision with root package name */
    private Response.Listener<Bitmap> f29683g;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i2, int i3, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i2, i3, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public static int a(int i2, int i3, int i4, int i5) {
        double dMin = Math.min(i2 / i4, i3 / i5);
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (f3 > dMin) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    @Override // com.czhj.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f29678b) {
            this.f29683g = null;
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.f29678b) {
            listener = this.f29683g;
        }
        if (listener != null) {
            listener.onResponse(bitmap);
        }
    }

    @Override // com.czhj.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override // com.czhj.volley.Request
    public Response<Bitmap> parseNetworkResponse(NetworkResponse networkResponse) {
        Response<Bitmap> responseA;
        synchronized (f29677a) {
            try {
                try {
                    responseA = a(networkResponse);
                } catch (OutOfMemoryError e2) {
                    VolleyLog.e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                    return Response.error(new ParseError(e2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return responseA;
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i2, int i3, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f29678b = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f29683g = listener;
        this.f29679c = config;
        this.f29680d = i2;
        this.f29681e = i3;
        this.f29682f = scaleType;
    }

    private static int a(int i2, int i3, int i4, int i5, ImageView.ScaleType scaleType) {
        if (i2 != 0 || i3 != 0) {
            if (scaleType != ImageView.ScaleType.FIT_XY) {
                if (i2 == 0) {
                    return (int) (i4 * (i3 / i5));
                }
                if (i3 == 0) {
                    return i2;
                }
                double d2 = i5 / i4;
                if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    double d3 = i3;
                    return ((double) i2) * d2 < d3 ? (int) (d3 / d2) : i2;
                }
                double d4 = i3;
                return ((double) i2) * d2 > d4 ? (int) (d4 / d2) : i2;
            }
            if (i2 != 0) {
                return i2;
            }
        }
        return i4;
    }

    private Response<Bitmap> a(NetworkResponse networkResponse) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = networkResponse.data;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.f29680d == 0 && this.f29681e == 0) {
            options.inPreferredConfig = this.f29679c;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i2 = options.outWidth;
            int i3 = options.outHeight;
            int iA = a(this.f29680d, this.f29681e, i2, i3, this.f29682f);
            int iA2 = a(this.f29681e, this.f29680d, i3, i2, this.f29682f);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i2, i3, iA, iA2);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iA || bitmapDecodeByteArray.getHeight() > iA2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        return bitmapDecodeByteArray == null ? Response.error(new ParseError(networkResponse)) : Response.success(bitmapDecodeByteArray, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
