package com.androidquery.callback;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ExifInterface;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.androidquery.auth.AccountHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.BitmapCache;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.RatioDrawable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

/* loaded from: classes.dex */
public class BitmapAjaxCallback extends AbstractAjaxCallback<Bitmap, BitmapAjaxCallback> {
    private static int BIG_MAX = 20;
    private static int BIG_PIXELS = 160000;
    private static int BIG_TPIXELS = 1000000;
    private static boolean DELAY_WRITE = false;
    private static final int FADE_DUR = 300;
    private static int SMALL_MAX = 20;
    private static int SMALL_PIXELS = 2500;
    private static Map<String, Bitmap> bigCache;
    private static Bitmap dummy;
    private static Bitmap empty;
    private static Map<String, Bitmap> invalidCache;
    private static HashMap<String, WeakHashMap<ImageView, BitmapAjaxCallback>> queueMap = new HashMap<>();
    private static Map<String, Bitmap> smallCache;
    private int animation;
    private Bitmap bm;
    private int fallback;
    private File imageFile;
    private boolean invalid;
    private Bitmap preset;
    private float ratio;
    private boolean rotate;
    private int round;
    private int targetWidth;

    /* renamed from: v, reason: collision with root package name */
    private WeakReference<ImageView> f1326v;
    private boolean targetDim = true;
    private float anchor = Float.MAX_VALUE;

    static {
        Bitmap.Config config = Bitmap.Config.ALPHA_8;
        empty = Bitmap.createBitmap(1, 1, config);
        dummy = Bitmap.createBitmap(1, 1, config);
    }

    public BitmapAjaxCallback() {
        type(Bitmap.class).memCache(true).fileCache(true).url("");
    }

    private void addQueue(String str, ImageView imageView) {
        WeakHashMap<ImageView, BitmapAjaxCallback> weakHashMap = queueMap.get(str);
        if (weakHashMap != null) {
            weakHashMap.put(imageView, this);
        } else {
            if (!queueMap.containsKey(str)) {
                queueMap.put(str, null);
                return;
            }
            WeakHashMap<ImageView, BitmapAjaxCallback> weakHashMap2 = new WeakHashMap<>();
            weakHashMap2.put(imageView, this);
            queueMap.put(str, weakHashMap2);
        }
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, Object obj, AccountHandle accountHandle, ImageOptions imageOptions, HttpHost httpHost, String str2) {
        async(activity, context, imageView, str, imageOptions.memCache, imageOptions.fileCache, imageOptions.targetWidth, imageOptions.fallback, imageOptions.preset, imageOptions.animation, imageOptions.ratio, imageOptions.anchor, obj, accountHandle, imageOptions.policy, imageOptions.round, httpHost, str2);
    }

    private Bitmap bmGet(String str, byte[] bArr) {
        return getResizedImage(str, bArr, this.targetWidth, this.targetDim, this.round, this.rotate);
    }

    private void checkCb(BitmapAjaxCallback bitmapAjaxCallback, String str, ImageView imageView, Bitmap bitmap, AjaxStatus ajaxStatus) {
        if (imageView == null || bitmapAjaxCallback == null) {
            return;
        }
        if (str.equals(imageView.getTag(Constants.TAG_URL))) {
            bitmapAjaxCallback.callback(str, imageView, bitmap, ajaxStatus);
        }
        bitmapAjaxCallback.showProgress(false);
    }

    public static void clearCache() {
        bigCache = null;
        smallCache = null;
        invalidCache = null;
    }

    public static void clearTasks() {
        queueMap.clear();
    }

    private static Bitmap decode(String str, byte[] bArr, BitmapFactory.Options options, boolean z2) {
        Bitmap bitmapDecodeFile = str != null ? decodeFile(str, options, z2) : bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options) : null;
        if (bitmapDecodeFile == null && options != null && !options.inJustDecodeBounds) {
            AQUtility.debug("decode image failed", str);
        }
        return bitmapDecodeFile;
    }

    private static Bitmap decodeFile(String str, BitmapFactory.Options options, boolean z2) throws Throwable {
        Bitmap bitmap;
        FileInputStream fileInputStream;
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inInputShareable = true;
        options.inPurgeable = true;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (IOException e2) {
                e = e2;
                bitmap = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
            if (bitmapDecodeFileDescriptor != null && z2) {
                bitmapDecodeFileDescriptor = rotate(str, bitmapDecodeFileDescriptor);
            }
            AQUtility.close(fileInputStream);
            return bitmapDecodeFileDescriptor;
        } catch (IOException e3) {
            e = e3;
            bitmap = null;
            fileInputStream2 = fileInputStream;
            AQUtility.report(e);
            AQUtility.close(fileInputStream2);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            AQUtility.close(fileInputStream2);
            throw th;
        }
    }

    private static boolean fadeIn(int i2, int i3) {
        if (i2 != -3) {
            if (i2 != -2) {
                return i2 == -1;
            }
        } else if (i3 == 3) {
            return true;
        }
        return i3 == 1;
    }

    private static Bitmap filter(View view, Bitmap bitmap, int i2) {
        if (bitmap != null && bitmap.getWidth() == 1 && bitmap.getHeight() == 1 && bitmap != empty) {
            bitmap = null;
        }
        if (bitmap != null) {
            view.setVisibility(0);
            return bitmap;
        }
        if (i2 == -2) {
            view.setVisibility(8);
            return bitmap;
        }
        if (i2 == -1) {
            view.setVisibility(4);
        }
        return bitmap;
    }

    private static Map<String, Bitmap> getBCache() {
        if (bigCache == null) {
            bigCache = Collections.synchronizedMap(new BitmapCache(BIG_MAX, BIG_PIXELS, BIG_TPIXELS));
        }
        return bigCache;
    }

    public static Bitmap getEmptyBitmap() {
        return empty;
    }

    private Bitmap getFallback() {
        ImageView imageView = this.f1326v.get();
        if (imageView == null) {
            return null;
        }
        String string = Integer.toString(this.fallback);
        Bitmap bitmapMemGet = memGet(string);
        if (bitmapMemGet != null) {
            return bitmapMemGet;
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(imageView.getResources(), this.fallback);
        if (bitmapDecodeResource != null) {
            memPut(string, bitmapDecodeResource);
        }
        return bitmapDecodeResource;
    }

    private static Map<String, Bitmap> getICache() {
        if (invalidCache == null) {
            invalidCache = Collections.synchronizedMap(new BitmapCache(100, BIG_PIXELS, 250000));
        }
        return invalidCache;
    }

    private static String getKey(String str, int i2, int i3) {
        if (i2 > 0) {
            str = str + "#" + i2;
        }
        if (i3 <= 0) {
            return str;
        }
        return str + "#" + i3;
    }

    public static Bitmap getMemoryCached(Context context, int i2) {
        String string = Integer.toString(i2);
        Bitmap bitmapMemGet = memGet(string, 0, 0);
        if (bitmapMemGet != null) {
            return bitmapMemGet;
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i2);
        if (bitmapDecodeResource != null) {
            memPut(string, 0, 0, bitmapDecodeResource, false);
        }
        return bitmapDecodeResource;
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i2, boolean z2, int i3) {
        return getResizedImage(str, bArr, i2, z2, i3, false);
    }

    private static Matrix getRotateMatrix(int i2) {
        Matrix matrix = new Matrix();
        switch (i2) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
        return matrix;
    }

    private static Bitmap getRoundedCornerBitmap(Bitmap bitmap, int i2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f2 = i2;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    private static Map<String, Bitmap> getSCache() {
        if (smallCache == null) {
            smallCache = Collections.synchronizedMap(new BitmapCache(SMALL_MAX, SMALL_PIXELS, 250000));
        }
        return smallCache;
    }

    public static boolean isMemoryCached(String str) {
        return getBCache().containsKey(str) || getSCache().containsKey(str) || getICache().containsKey(str);
    }

    private static Drawable makeDrawable(ImageView imageView, Bitmap bitmap, float f2, float f3) {
        return f2 > 0.0f ? new RatioDrawable(imageView.getResources(), bitmap, imageView, f2, f3) : new BitmapDrawable(imageView.getResources(), bitmap);
    }

    private void presetBitmap(String str, ImageView imageView) {
        if (str.equals(imageView.getTag(Constants.TAG_URL)) && this.preset == null) {
            return;
        }
        imageView.setTag(Constants.TAG_URL, str);
        if (this.preset == null || cacheAvailable(imageView.getContext())) {
            setBitmap(str, imageView, null, true);
        } else {
            setBitmap(str, imageView, this.preset, true);
        }
    }

    private static int sampleSize(int i2, int i3) {
        int i4 = 1;
        for (int i5 = 0; i5 < 10 && i2 >= i3 * 2; i5++) {
            i2 /= 2;
            i4 *= 2;
        }
        return i4;
    }

    private void setBitmap(String str, ImageView imageView, Bitmap bitmap, boolean z2) {
        if (bitmap == null) {
            imageView.setImageDrawable(null);
            return;
        }
        if (z2) {
            imageView.setImageDrawable(makeDrawable(imageView, bitmap, this.ratio, this.anchor));
            return;
        }
        AjaxStatus ajaxStatus = this.status;
        if (ajaxStatus != null) {
            setBmAnimate(imageView, bitmap, this.preset, this.fallback, this.animation, this.ratio, this.anchor, ajaxStatus.getSource());
        }
    }

    private static void setBmAnimate(ImageView imageView, Bitmap bitmap, Bitmap bitmap2, int i2, int i3, float f2, float f3, int i4) {
        Animation animationLoadAnimation;
        Bitmap bitmapFilter = filter(imageView, bitmap, i2);
        if (bitmapFilter == null) {
            imageView.setImageBitmap(null);
            return;
        }
        Drawable drawableMakeDrawable = makeDrawable(imageView, bitmapFilter, f2, f3);
        if (!fadeIn(i3, i4)) {
            animationLoadAnimation = i3 > 0 ? AnimationUtils.loadAnimation(imageView.getContext(), i3) : null;
        } else if (bitmap2 == null) {
            animationLoadAnimation = new AlphaAnimation(0.0f, 1.0f);
            animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
            animationLoadAnimation.setDuration(300L);
        } else {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{makeDrawable(imageView, bitmap2, f2, f3), drawableMakeDrawable});
            transitionDrawable.setCrossFadeEnabled(true);
            transitionDrawable.startTransition(300);
            drawableMakeDrawable = transitionDrawable;
        }
        imageView.setImageDrawable(drawableMakeDrawable);
        if (animationLoadAnimation == null) {
            imageView.setAnimation(null);
        } else {
            animationLoadAnimation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
            imageView.startAnimation(animationLoadAnimation);
        }
    }

    public static void setCacheLimit(int i2) {
        BIG_MAX = i2;
        clearCache();
    }

    public static void setDelayWrite(boolean z2) {
        DELAY_WRITE = z2;
    }

    public static void setIconCacheLimit(int i2) {
        SMALL_MAX = i2;
        clearCache();
    }

    public static void setMaxPixelLimit(int i2) {
        BIG_TPIXELS = i2;
        clearCache();
    }

    public static void setPixelLimit(int i2) {
        BIG_PIXELS = i2;
        clearCache();
    }

    public static void setSmallPixel(int i2) {
        SMALL_PIXELS = i2;
        clearCache();
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public File accessFile(File file, String str) {
        File file2 = this.imageFile;
        return (file2 == null || !file2.exists()) ? super.accessFile(file, str) : this.imageFile;
    }

    public BitmapAjaxCallback anchor(float f2) {
        this.anchor = f2;
        return this;
    }

    public BitmapAjaxCallback animation(int i2) {
        this.animation = i2;
        return this;
    }

    public BitmapAjaxCallback bitmap(Bitmap bitmap) {
        this.bm = bitmap;
        return this;
    }

    public BitmapAjaxCallback fallback(int i2) {
        this.fallback = i2;
        return this;
    }

    public BitmapAjaxCallback file(File file) {
        this.imageFile = file;
        return this;
    }

    public BitmapAjaxCallback imageView(ImageView imageView) {
        this.f1326v = new WeakReference<>(imageView);
        return this;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public boolean isStreamingContent() {
        return !DELAY_WRITE;
    }

    public BitmapAjaxCallback preset(Bitmap bitmap) {
        this.preset = bitmap;
        return this;
    }

    public BitmapAjaxCallback ratio(float f2) {
        this.ratio = f2;
        return this;
    }

    public BitmapAjaxCallback rotate(boolean z2) {
        this.rotate = z2;
        return this;
    }

    public BitmapAjaxCallback round(int i2) {
        this.round = i2;
        return this;
    }

    public BitmapAjaxCallback targetWidth(int i2) {
        this.targetWidth = i2;
        return this;
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, boolean z2, boolean z3, int i2, int i3, Bitmap bitmap, int i4, float f2, float f3, Object obj, AccountHandle accountHandle, int i5, int i6, HttpHost httpHost, String str2) {
        Bitmap bitmapMemGet = z2 ? memGet(str, i2, i6) : null;
        if (bitmapMemGet != null) {
            imageView.setTag(Constants.TAG_URL, str);
            Common.showProgress(obj, str, false);
            setBmAnimate(imageView, bitmapMemGet, bitmap, i3, i4, f2, f3, 4);
            return;
        }
        BitmapAjaxCallback bitmapAjaxCallback = new BitmapAjaxCallback();
        bitmapAjaxCallback.url(str).imageView(imageView).memCache(z2).fileCache(z3).targetWidth(i2).fallback(i3).preset(bitmap).animation(i4).ratio(f2).anchor(f3).progress(obj).auth(accountHandle).policy(i5).round(i6).networkUrl(str2);
        if (httpHost != null) {
            bitmapAjaxCallback.proxy(httpHost.getHostName(), httpHost.getPort());
        }
        if (activity != null) {
            bitmapAjaxCallback.async(activity);
        } else {
            bitmapAjaxCallback.async(context);
        }
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i2, boolean z2, int i3, boolean z3) {
        BitmapFactory.Options options;
        Bitmap bitmapDecode = null;
        if (str == null && bArr == null) {
            return null;
        }
        if (i2 > 0) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            decode(str, bArr, options2, z3);
            int iMax = options2.outWidth;
            if (!z2) {
                iMax = Math.max(iMax, options2.outHeight);
            }
            int iSampleSize = sampleSize(iMax, i2);
            options = new BitmapFactory.Options();
            options.inSampleSize = iSampleSize;
        } else {
            options = null;
        }
        try {
            bitmapDecode = decode(str, bArr, options, z3);
        } catch (OutOfMemoryError e2) {
            clearCache();
            AQUtility.report(e2);
        }
        return i3 > 0 ? getRoundedCornerBitmap(bitmapDecode, i3) : bitmapDecode;
    }

    private static void memPut(String str, int i2, int i3, Bitmap bitmap, boolean z2) {
        if (bitmap == null) {
            return;
        }
        Map<String, Bitmap> iCache = z2 ? getICache() : bitmap.getWidth() * bitmap.getHeight() <= SMALL_PIXELS ? getSCache() : getBCache();
        if (i2 <= 0 && i3 <= 0) {
            iCache.put(str, bitmap);
            return;
        }
        iCache.put(getKey(str, i2, i3), bitmap);
        if (iCache.containsKey(str)) {
            return;
        }
        iCache.put(str, null);
    }

    private static Bitmap rotate(String str, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int attributeInt = 1;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        } catch (Exception e2) {
            AQUtility.debug((Throwable) e2);
        }
        if (attributeInt <= 0) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), getRotateMatrix(attributeInt), true);
        AQUtility.debug("before", bitmap.getWidth() + ":" + bitmap.getHeight());
        AQUtility.debug("after", bitmapCreateBitmap.getWidth() + ":" + bitmapCreateBitmap.getHeight());
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public final void callback(String str, Bitmap bitmap, AjaxStatus ajaxStatus) {
        String str2;
        Bitmap bitmap2;
        AjaxStatus ajaxStatus2;
        ImageView imageView = this.f1326v.get();
        WeakHashMap<ImageView, BitmapAjaxCallback> weakHashMapRemove = queueMap.remove(str);
        if (weakHashMapRemove == null || !weakHashMapRemove.containsKey(imageView)) {
            str2 = str;
            bitmap2 = bitmap;
            ajaxStatus2 = ajaxStatus;
            checkCb(this, str2, imageView, bitmap2, ajaxStatus2);
        } else {
            str2 = str;
            bitmap2 = bitmap;
            ajaxStatus2 = ajaxStatus;
        }
        if (weakHashMapRemove != null) {
            for (ImageView imageView2 : weakHashMapRemove.keySet()) {
                BitmapAjaxCallback bitmapAjaxCallback = weakHashMapRemove.get(imageView2);
                bitmapAjaxCallback.status = ajaxStatus2;
                Bitmap bitmap3 = bitmap2;
                AjaxStatus ajaxStatus3 = ajaxStatus2;
                checkCb(bitmapAjaxCallback, str2, imageView2, bitmap3, ajaxStatus3);
                bitmap2 = bitmap3;
                ajaxStatus2 = ajaxStatus3;
            }
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap fileGet(String str, File file, AjaxStatus ajaxStatus) {
        return bmGet(file.getAbsolutePath(), null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap memGet(String str) {
        Bitmap bitmap = this.bm;
        if (bitmap != null) {
            return bitmap;
        }
        if (this.memCache) {
            return memGet(str, this.targetWidth, this.round);
        }
        return null;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void skip(String str, Bitmap bitmap, AjaxStatus ajaxStatus) {
        queueMap.remove(str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap transform(String str, byte[] bArr, AjaxStatus ajaxStatus) {
        File file = ajaxStatus.getFile();
        Bitmap bitmapBmGet = bmGet(file != null ? file.getAbsolutePath() : null, bArr);
        if (bitmapBmGet == null) {
            int i2 = this.fallback;
            if (i2 > 0) {
                bitmapBmGet = getFallback();
            } else if (i2 == -2 || i2 == -1) {
                bitmapBmGet = dummy;
            } else if (i2 == -3) {
                bitmapBmGet = this.preset;
            }
            if (ajaxStatus.getCode() != 200) {
                this.invalid = true;
            }
        }
        return bitmapBmGet;
    }

    public static Bitmap getMemoryCached(String str, int i2) {
        return memGet(str, i2, 0);
    }

    private static Bitmap memGet(String str, int i2, int i3) {
        String key = getKey(str, i2, i3);
        Bitmap bitmap = getBCache().get(key);
        if (bitmap == null) {
            bitmap = getSCache().get(key);
        }
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = getICache().get(key);
        if (bitmap2 == null || AbstractAjaxCallback.getLastStatus() != 200) {
            return bitmap2;
        }
        invalidCache = null;
        return null;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void async(Context context) {
        String url = getUrl();
        ImageView imageView = this.f1326v.get();
        if (url == null) {
            showProgress(false);
            setBitmap(url, imageView, null, false);
            return;
        }
        Bitmap bitmapMemGet = memGet(url);
        if (bitmapMemGet != null) {
            imageView.setTag(Constants.TAG_URL, url);
            AjaxStatus ajaxStatusDone = new AjaxStatus().source(4).done();
            this.status = ajaxStatusDone;
            callback(url, bitmapMemGet, ajaxStatusDone);
            return;
        }
        presetBitmap(url, imageView);
        if (!queueMap.containsKey(url)) {
            addQueue(url, imageView);
            super.async(imageView.getContext());
        } else {
            showProgress(true);
            addQueue(url, imageView);
        }
    }

    public void callback(String str, ImageView imageView, Bitmap bitmap, AjaxStatus ajaxStatus) {
        setBitmap(str, imageView, bitmap, false);
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void memPut(String str, Bitmap bitmap) {
        memPut(str, this.targetWidth, this.round, bitmap, this.invalid);
    }
}
