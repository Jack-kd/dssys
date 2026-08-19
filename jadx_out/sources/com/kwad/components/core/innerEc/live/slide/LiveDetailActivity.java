package com.kwad.components.core.innerEc.live.slide;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.components.core.c.f;
import com.kwad.components.core.innerEc.live.b.a;
import com.kwad.components.core.proxy.i;
import com.kwad.components.core.t.d;
import com.kwad.sdk.api.core.KsAdSdkDynamicImpl;
import com.kwad.sdk.api.proxy.app.BaseFragmentActivity;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.utils.bd;
import com.kwad.sdk.utils.by;
import java.lang.reflect.InvocationTargetException;

@KsAdSdkDynamicImpl(BaseFragmentActivity.FragmentActivity13.class)
@Keep
/* loaded from: classes4.dex */
public class LiveDetailActivity extends i {
    public static final String KEY_AD_RESULT_CACHE_IDX = "KEY_AD_RESULT_CACHE_IDX";
    private static final String SAVED_KEY = "LiveDetailActivity_SAVED_KEY";
    private static final String TAG = "LiveDetailActivity";
    private a mLivePlayFragment;

    public static void launch(Context context, AdResultData adResultData) {
        try {
            register();
            Intent intent = new Intent(context, (Class<?>) BaseFragmentActivity.FragmentActivity13.class);
            intent.putExtra(KEY_AD_RESULT_CACHE_IDX, f.oU().l(adResultData));
            if (!(context instanceof Activity)) {
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
            }
            context.startActivity(intent);
        } catch (Throwable th) {
            c.printStackTrace(th);
        }
    }

    public static void register() {
        com.kwad.sdk.service.c.putComponentProxy(BaseFragmentActivity.FragmentActivity13.class, LiveDetailActivity.class);
    }

    private void setLivePageUI() {
        by.postOnUiThread(new Runnable() { // from class: com.kwad.components.core.innerEc.live.slide.LiveDetailActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = new int[1];
                boolean zA = com.kwad.components.core.innerEc.live.i.c.a(LiveDetailActivity.this.getActivity(), LiveDetailActivity.this.getWindow(), iArr);
                int i2 = iArr[0];
                c.e(LiveDetailActivity.TAG, "jky live page postOnUiThread isNavBarVisible: " + zA);
                View viewFindViewById = LiveDetailActivity.this.findViewById(R.id.content);
                Rect rect = new Rect();
                viewFindViewById.getWindowVisibleDisplayFrame(rect);
                int iG = com.kwad.sdk.c.a.a.g(LiveDetailActivity.this.getActivity());
                boolean z2 = iG >= rect.bottom;
                c.e(LiveDetailActivity.TAG, "jky live page postOnUiThread getWindowVisibleDisplayFrame rect: " + rect + ", screenHeight: " + iG + " ,needSetPadding: " + z2);
                if (!bd.Wc() && z2) {
                    int iL = com.kwad.sdk.c.a.a.l(LiveDetailActivity.this.getActivity());
                    c.d(LiveDetailActivity.TAG, "naviBarHeight = " + iL + ", naviBarHeightFromViewHeight: " + i2);
                    viewFindViewById.setPadding(0, 0, 0, Math.max(i2, iL));
                } else if (!z2) {
                    viewFindViewById.setPadding(0, 0, 0, 0);
                }
                LiveDetailActivity.this.getWindow().setNavigationBarColor(-16777216);
            }
        });
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void finish() {
        super.finish();
        c.d(TAG, "LiveDetailActivity finish call");
    }

    @Override // com.kwad.components.core.proxy.i
    public String getPageName() {
        return TAG;
    }

    @Override // com.kwad.components.core.proxy.i, com.kwad.sdk.api.proxy.IActivityProxy
    public void onBackPressed() {
        a aVar = this.mLivePlayFragment;
        if (aVar == null || !aVar.onBackPressed()) {
            super.onBackPressed();
        }
    }

    @Override // com.kwad.components.core.proxy.i, com.kwad.sdk.api.proxy.IActivityProxy
    public void onCreate(@Nullable Bundle bundle) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onCreate(bundle);
        c.d(TAG, this + "LiveDetailActivity onCreate" + bundle);
        if (bundle != null) {
            int i2 = bundle.getInt(SAVED_KEY, -1);
            c.d(TAG, this + "LiveDetailActivity onCreate savedKey" + i2);
            getIntent().putExtra(KEY_AD_RESULT_CACHE_IDX, i2);
        }
        setContentView(com.kwad.sdk.R.layout.ksad_activity_single_fragment);
        d.a(getActivity(), 0, true, false);
        a aVar = new a();
        this.mLivePlayFragment = aVar;
        aVar.setArguments(getIntent().getExtras());
        getSupportFragmentManager().beginTransaction().replace(com.kwad.sdk.R.id.ksad_fragment_container, this.mLivePlayFragment).commitAllowingStateLoss();
    }

    @Override // com.kwad.components.core.proxy.i, com.kwad.sdk.api.proxy.IActivityProxy
    public void onDestroy() {
        super.onDestroy();
        c.d(TAG, this + "LiveDetailActivity onDestroy");
        this.mLivePlayFragment = null;
    }

    @Override // com.kwad.components.core.proxy.i, com.kwad.sdk.api.proxy.IActivityProxy
    public void onResume() {
        super.onResume();
        setLivePageUI();
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        AdResultData adResultDataIH = this.mLivePlayFragment.iH();
        c.d(TAG, "LiveDetailActivity onSaveInstanceState: " + adResultDataIH);
        if (adResultDataIH != null) {
            bundle.putInt(SAVED_KEY, f.oU().l(adResultDataIH));
        }
    }

    @Override // com.kwad.components.core.proxy.i
    public int onSetActivityTheme() {
        return R.style.Theme.Light.NoTitleBar.Fullscreen;
    }
}
