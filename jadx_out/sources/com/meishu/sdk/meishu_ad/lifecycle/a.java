package com.meishu.sdk.meishu_ad.lifecycle;

import android.app.Fragment;

/* loaded from: classes4.dex */
public class a extends Fragment {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f32292b = 0;

    /* renamed from: a, reason: collision with root package name */
    public d f32293a;

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        d dVar = this.f32293a;
        if (dVar != null) {
            dVar.onDestroy();
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        d dVar = this.f32293a;
        if (dVar != null) {
            dVar.onPause();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d dVar = this.f32293a;
        if (dVar != null) {
            dVar.onResume();
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        d dVar = this.f32293a;
        if (dVar != null) {
            dVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        d dVar = this.f32293a;
        if (dVar != null) {
            dVar.onStop();
        }
    }
}
