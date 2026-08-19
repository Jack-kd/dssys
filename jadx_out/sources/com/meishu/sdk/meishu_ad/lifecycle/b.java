package com.meishu.sdk.meishu_ad.lifecycle;

import androidx.fragment.app.Fragment;

/* loaded from: classes4.dex */
public class b extends Fragment {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f32294b = 0;

    /* renamed from: a, reason: collision with root package name */
    public d f32295a;

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        d dVar = this.f32295a;
        if (dVar != null) {
            dVar.onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        d dVar = this.f32295a;
        if (dVar != null) {
            dVar.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        d dVar = this.f32295a;
        if (dVar != null) {
            dVar.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        d dVar = this.f32295a;
        if (dVar != null) {
            dVar.onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        d dVar = this.f32295a;
        if (dVar != null) {
            dVar.onStop();
        }
    }
}
