package com.fl.saas.adx.base.inner.interstitial.coustomView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fl.saas.AbstractC1156a0;
import com.fl.saas.C1172d1;
import com.fl.saas.R;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.inner.InnerNativeAdLogo;
import com.fl.saas.adx.base.inner.InnerNativeCustomView;
import com.fl.saas.adx.base.innterNative.BindActionView;
import com.fl.saas.adx.util.CommConstant;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.FLImageLoader;
import com.fl.saas.adx.util.ViewHelper;

/* loaded from: classes3.dex */
public class InterstitialFullScreenView implements InnerNativeCustomView, InnerNativeAdLogo, BindActionView {
    private final TextView CATView;
    private final ImageView adLogo;
    private final View adView;
    private final ImageView bgView;
    private final TextView desView;
    private final FrameLayout fl_horizontal;
    private final FrameLayout fl_vertical;
    private final ImageView iv_sound_control;
    private final ImageView logoIcon;
    private final NativeMaterial mMaterial;
    private final ImageView mainImageView;
    private final ImageView mainImageViewVertical;
    private final FrameLayout mediaContainer;
    private final FrameLayout mediaContainerVertical;
    private boolean systemMute = false;
    private final TextView titleView;

    public InterstitialFullScreenView(Context context, NativeMaterial nativeMaterial) {
        this.mMaterial = nativeMaterial;
        View viewInflate = ViewHelper.inflate(context, R.layout.fl_adx_interstitial_v_fullscreen);
        this.adView = viewInflate;
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.yd_saas_view_background);
        this.bgView = imageView;
        this.logoIcon = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_interstitia_icon);
        this.mediaContainer = (FrameLayout) viewInflate.findViewById(R.id.yd_saas_custom_interstitial_media_container);
        this.mainImageView = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_interstitial);
        this.fl_horizontal = (FrameLayout) viewInflate.findViewById(R.id.fl_yd_saas_horizontal_container);
        this.mediaContainerVertical = (FrameLayout) viewInflate.findViewById(R.id.yd_saas_custom_vertical_interstitial_media_container);
        this.mainImageViewVertical = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_vertical_interstitial);
        this.fl_vertical = (FrameLayout) viewInflate.findViewById(R.id.fl_yd_saas_vertical_container);
        this.titleView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_title);
        this.desView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_desc);
        this.CATView = (TextView) viewInflate.findViewById(R.id.tv_yd_saas_custom_interstitia_btn);
        this.adLogo = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_custom_vertical_adlogo);
        this.iv_sound_control = (ImageView) viewInflate.findViewById(R.id.iv_yd_saas_media_sound);
        FLImageLoader.getInstance(DeviceUtil.getContext()).setEnableDiskCache(true).setEnableMemoryCache(true).loadImage(imageView, CommConstant.ImageUrl.CUSTOM_SPREAD_BG);
    }

    public static /* synthetic */ void a(final InterstitialFullScreenView interstitialFullScreenView, Drawable drawable) {
        interstitialFullScreenView.getClass();
        final Bitmap bitmapA = AbstractC1156a0.a(DeviceUtil.getContext(), Boolean.TRUE, ((BitmapDrawable) drawable).getBitmap(), 200);
        if (bitmapA != null) {
            DeviceUtil.postUI(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30170b.bgView.setImageBitmap(bitmapA);
                }
            });
        }
    }

    public static /* synthetic */ void b(InterstitialFullScreenView interstitialFullScreenView, int i2, int i3, FrameLayout.LayoutParams layoutParams, View view) {
        layoutParams.width = (int) (interstitialFullScreenView.fl_vertical.getHeight() * (i2 / i3));
        interstitialFullScreenView.mediaContainerVertical.removeAllViews();
        interstitialFullScreenView.mediaContainerVertical.addView(view, layoutParams);
    }

    public static /* synthetic */ void d(InterstitialFullScreenView interstitialFullScreenView, Bitmap bitmap) {
        ImageView imageView = interstitialFullScreenView.logoIcon;
        if (imageView != null) {
            imageView.setVisibility(0);
            interstitialFullScreenView.logoIcon.setImageBitmap(bitmap);
        }
    }

    public static /* synthetic */ void e(InterstitialFullScreenView interstitialFullScreenView, VideoSoundControlListener videoSoundControlListener, View view) {
        if (interstitialFullScreenView.systemMute) {
            return;
        }
        boolean soundEnable = videoSoundControlListener.getSoundEnable();
        boolean z2 = !soundEnable;
        interstitialFullScreenView.iv_sound_control.setImageResource(!soundEnable ? R.drawable.fl_adx_volume_on : R.drawable.fl_adx_volume_off);
        videoSoundControlListener.changeSoundEnable(z2);
    }

    public static /* synthetic */ void f(final InterstitialFullScreenView interstitialFullScreenView, final Drawable drawable) {
        interstitialFullScreenView.getClass();
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.i
            @Override // java.lang.Runnable
            public final void run() {
                InterstitialFullScreenView.a(this.f30182b, drawable);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showHorizontalMedia(android.view.View r8, com.fl.saas.adx.base.bean.Size r9) {
        /*
            r7 = this;
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r1 = -1
            r2 = -2
            r0.<init>(r1, r2)
            android.widget.FrameLayout r1 = r7.fl_horizontal
            r2 = 0
            r1.setVisibility(r2)
            android.widget.FrameLayout r1 = r7.fl_vertical
            r2 = 8
            r1.setVisibility(r2)
            int r1 = com.fl.saas.adx.util.DeviceUtil.getMobileWidth()
            if (r9 == 0) goto L2a
            int r2 = r9.getWidth()
            int r9 = r9.getHeight()
            if (r2 <= 0) goto L2a
            if (r9 <= 0) goto L2a
            double r3 = (double) r9
            double r5 = (double) r2
            double r3 = r3 / r5
            goto L2c
        L2a:
            r3 = 4603241769126068224(0x3fe2000000000000, double:0.5625)
        L2c:
            double r1 = (double) r1
            double r1 = r1 * r3
            int r9 = (int) r1
            r0.height = r9
            android.widget.FrameLayout r9 = r7.mediaContainer
            r9.removeAllViews()
            android.widget.FrameLayout r9 = r7.mediaContainer
            r9.addView(r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialFullScreenView.showHorizontalMedia(android.view.View, com.fl.saas.adx.base.bean.Size):void");
    }

    @Override // com.fl.saas.adx.base.innterNative.BindActionView
    public void bindActionView(View view) {
        if (view == null) {
            return;
        }
        ViewHelper.removeParent(view);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ((RelativeLayout) this.adView.findViewById(R.id.fl_saas_interstitial_container)).addView(view, layoutParams);
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getAdView() {
        return this.adView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public View getCATView() {
        return this.CATView;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public com.fl.saas.B loadIcon() {
        return new com.fl.saas.B() { // from class: com.fl.saas.adx.base.inner.interstitial.coustomView.e
            @Override // com.fl.saas.B
            public final void a(Object obj) {
                InterstitialFullScreenView.d(this.f30172a, (Bitmap) obj);
            }
        };
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeAdLogo
    public void setAdLogo(Bitmap bitmap) {
        ImageView imageView = this.adLogo;
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setCAT(String str) {
        ViewHelper.setTextView(this.CATView, str);
        return this;
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setDes(String str) {
        ViewHelper.setTextView(this.desView, str);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fl.saas.adx.base.inner.InnerNativeCustomView setMediaView(android.view.View r9, @androidx.annotation.Nullable final android.graphics.drawable.Drawable r10) {
        /*
            r8 = this;
            android.widget.ImageView r0 = r8.bgView
            if (r0 == 0) goto L10
            boolean r1 = r10 instanceof android.graphics.drawable.BitmapDrawable
            if (r1 == 0) goto L10
            com.fl.saas.adx.base.inner.interstitial.coustomView.f r1 = new com.fl.saas.adx.base.inner.interstitial.coustomView.f
            r1.<init>()
            r0.post(r1)
        L10:
            r0 = 8
            r1 = 0
            if (r9 == 0) goto Lb1
            com.fl.saas.adx.api.mixNative.NativeMaterial r10 = r8.mMaterial
            if (r10 == 0) goto L5f
            com.fl.saas.adx.base.bean.Size r10 = r10.getSize()
            if (r10 == 0) goto L5f
            com.fl.saas.adx.api.mixNative.NativeMaterial r10 = r8.mMaterial
            com.fl.saas.adx.base.bean.Size r10 = r10.getSize()
            int r4 = r10.getWidth()
            com.fl.saas.adx.api.mixNative.NativeMaterial r10 = r8.mMaterial
            com.fl.saas.adx.base.bean.Size r10 = r10.getSize()
            int r5 = r10.getHeight()
            if (r5 <= r4) goto L53
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            r10 = -2
            r2 = -1
            r6.<init>(r10, r2)
            android.widget.FrameLayout r10 = r8.fl_horizontal
            r10.setVisibility(r0)
            android.widget.FrameLayout r10 = r8.fl_vertical
            r10.setVisibility(r1)
            android.widget.FrameLayout r10 = r8.fl_vertical
            com.fl.saas.adx.base.inner.interstitial.coustomView.g r2 = new com.fl.saas.adx.base.inner.interstitial.coustomView.g
            r3 = r8
            r7 = r9
            r2.<init>()
            r10.post(r2)
            goto L63
        L53:
            r3 = r8
            r7 = r9
            com.fl.saas.adx.api.mixNative.NativeMaterial r9 = r3.mMaterial
            com.fl.saas.adx.base.bean.Size r9 = r9.getSize()
        L5b:
            r8.showHorizontalMedia(r7, r9)
            goto L63
        L5f:
            r3 = r8
            r7 = r9
            r9 = 0
            goto L5b
        L63:
            boolean r9 = r7 instanceof com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener
            if (r9 == 0) goto Ldd
            r9 = r7
            com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener r9 = (com.fl.saas.adx.base.inner.interstitial.coustomView.VideoSoundControlListener) r9
            android.widget.ImageView r10 = r3.iv_sound_control
            if (r10 == 0) goto Ldd
            r10.setVisibility(r1)
            com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialFullScreenView$1 r10 = new com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialFullScreenView$1
            r10.<init>()
            r9.setSoundControlViewStateChangeListener(r10)
            boolean r10 = r9.getSoundEnable()
            android.widget.ImageView r0 = r3.iv_sound_control
            if (r10 == 0) goto L84
            int r10 = com.fl.saas.R.drawable.fl_adx_volume_on
            goto L86
        L84:
            int r10 = com.fl.saas.R.drawable.fl_adx_volume_off
        L86:
            r0.setImageResource(r10)
            android.content.Context r10 = com.fl.saas.adx.util.DeviceUtil.getContext()
            java.lang.String r0 = "audio"
            java.lang.Object r10 = r10.getSystemService(r0)
            android.media.AudioManager r10 = (android.media.AudioManager) r10
            r0 = 3
            int r10 = r10.getStreamVolume(r0)
            if (r10 != 0) goto La6
            r10 = 1
            r3.systemMute = r10
            android.widget.ImageView r10 = r3.iv_sound_control
            int r0 = com.fl.saas.R.drawable.fl_adx_volume_off
            r10.setImageResource(r0)
        La6:
            android.widget.ImageView r10 = r3.iv_sound_control
            com.fl.saas.adx.base.inner.interstitial.coustomView.h r0 = new com.fl.saas.adx.base.inner.interstitial.coustomView.h
            r0.<init>()
            r10.setOnClickListener(r0)
            return r3
        Lb1:
            r3 = r8
            if (r10 == 0) goto Ldd
            int r9 = r10.getIntrinsicWidth()
            int r2 = r10.getIntrinsicHeight()
            if (r9 >= r2) goto Lce
            android.widget.FrameLayout r9 = r3.fl_vertical
            r9.setVisibility(r1)
            android.widget.FrameLayout r9 = r3.fl_horizontal
            r9.setVisibility(r0)
            android.widget.ImageView r9 = r3.mainImageViewVertical
            r9.setImageDrawable(r10)
            return r3
        Lce:
            android.widget.FrameLayout r9 = r3.fl_vertical
            r9.setVisibility(r0)
            android.widget.FrameLayout r9 = r3.fl_horizontal
            r9.setVisibility(r1)
            android.widget.ImageView r9 = r3.mainImageView
            r9.setImageDrawable(r10)
        Ldd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.adx.base.inner.interstitial.coustomView.InterstitialFullScreenView.setMediaView(android.view.View, android.graphics.drawable.Drawable):com.fl.saas.adx.base.inner.InnerNativeCustomView");
    }

    @Override // com.fl.saas.adx.base.inner.InnerNativeCustomView
    public InnerNativeCustomView setTitle(String str) {
        ViewHelper.setTextView(this.titleView, str);
        return this;
    }
}
