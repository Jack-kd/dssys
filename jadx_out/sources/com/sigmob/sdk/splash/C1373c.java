package com.sigmob.sdk.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageTypeUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.views.gif.e;
import com.sigmob.windad.WindAds;
import java.util.Arrays;

/* renamed from: com.sigmob.sdk.splash.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1373c extends C1372b {

    /* renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.base.views.gif.e f38645b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f38646c;

    /* renamed from: d, reason: collision with root package name */
    private float f38647d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f38648e;

    public C1373c(Context context) {
        super(context);
        this.f38648e = false;
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        com.sigmob.sdk.base.views.gif.e eVar = new com.sigmob.sdk.base.views.gif.e(context);
        this.f38645b = eVar;
        setBackgroundColor(-1);
        addView(eVar, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap c(Bitmap bitmap) {
        if (!this.f38648e) {
            this.f38648e = true;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (height > 0 && width > 0) {
                if ((width * 1.0d) / height < this.f38647d) {
                    WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.l
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f38709b.e();
                        }
                    });
                    return bitmap;
                }
                a(bitmap);
            }
        }
        return bitmap;
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void b() {
        super.b();
        com.sigmob.sdk.base.views.gif.e eVar = this.f38645b;
        if (eVar == null) {
            return;
        }
        eVar.e();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public /* bridge */ /* synthetic */ int getDuration() {
        return super.getDuration();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.sigmob.sdk.base.views.gif.e eVar = this.f38645b;
        if (eVar != null) {
            eVar.clearAnimation();
        }
        if (this.f38646c != null) {
            this.f38646c = null;
        }
        removeAllViews();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void setAspectRatio(float f2) {
        this.f38647d = f2;
    }

    private void a(final Bitmap bitmap) {
        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f38710b.b(bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Bitmap bitmap) {
        if (bitmap == null || this.f38646c != null) {
            return;
        }
        com.sigmob.sdk.base.blurkit.a.a(getContext());
        this.f38646c = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.f38646c.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f38646c.setImageBitmap(com.sigmob.sdk.base.blurkit.a.a().a(bitmap, 25, 1.0f));
        addView(this.f38646c, 0, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f38645b.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f38645b.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public void c() {
        super.c();
        com.sigmob.sdk.base.views.gif.e eVar = this.f38645b;
        if (eVar == null) {
            return;
        }
        eVar.d();
    }

    @Override // com.sigmob.sdk.splash.C1372b
    public boolean a(BaseAdUnit baseAdUnit) {
        Bitmap bitmapDecodeFile;
        String str;
        if (this.f38645b == null) {
            str = "imageView is null.";
        } else if (baseAdUnit == null) {
            str = "adUnit is null.";
        } else {
            String splashFilePath = baseAdUnit.getSplashFilePath();
            if (splashFilePath != null) {
                String fileType = ImageTypeUtil.getFileType(splashFilePath);
                if (TextUtils.isEmpty(fileType)) {
                    return false;
                }
                if (fileType.equals("gif")) {
                    this.f38645b.setBytes(FileUtil.readBytes(splashFilePath));
                    this.f38645b.setOnFrameAvailable(new e.c() { // from class: com.sigmob.sdk.splash.n
                        @Override // com.sigmob.sdk.base.views.gif.e.c
                        public final Bitmap onFrameAvailable(Bitmap bitmap) {
                            return this.f38712a.c(bitmap);
                        }
                    });
                    this.f38645b.d();
                } else {
                    if (!Arrays.asList("git", "jpeg", "jpg", "png", "bmp", "webp", "tif").contains(fileType) || (bitmapDecodeFile = BitmapFactory.decodeFile(splashFilePath)) == null) {
                        return false;
                    }
                    this.f38645b.setImageBitmap(bitmapDecodeFile);
                    int width = bitmapDecodeFile.getWidth();
                    int height = bitmapDecodeFile.getHeight();
                    if (height > 0 && width > 0) {
                        if ((width * 1.0d) / height < this.f38647d) {
                            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.o
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f38713b.d();
                                }
                            });
                        } else {
                            a(bitmapDecodeFile);
                        }
                    }
                }
                BaseBroadcastReceiver.a(getContext(), baseAdUnit.getUuid(), IntentActions.ACTION_INTERSTITIAL_SHOW);
                return true;
            }
            str = "filePath is null.";
        }
        SigmobLog.e(str);
        return false;
    }
}
